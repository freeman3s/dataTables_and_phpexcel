<?php

/** Include path **/
ini_set('include_path', ini_get('include_path').';Classes/');

/** PHPExcel */
include 'PHPExcel.php';

/** PHPExcel_Writer_Excel2007 */
include 'PHPExcel/Writer/Excel2007.php';

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();

$table = 'user_profiles';
$primaryKey = 'id';
$columns = array(
    array( 'db' => 'first_name', 'dt' => 0 ),
    array( 'db' => 'last_name',  'dt' => 1 ),
    array( 'db' => 'position',   'dt' => 2 ),
    array( 'db' => 'office',     'dt' => 3 ),
    array(
        'db'        => 'start_date',
        'dt'        => 4,
        'formatter' => function( $d, $row ) {
            return date( 'jS M y', strtotime($d));
        }
    ),
    array(
        'db'        => 'salary',
        'dt'        => 5,
        'formatter' => function( $d, $row ) {
            return '$'.number_format($d);
        }
    )
);
$sql_details = array(
    'user' => 'root',
    'pass' => '',
    'db'   => 'datatables',
    'host' => 'localhost'
);
 
require( 'ssp.class.php' );

$json_data = json_encode(
    SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns )
);
 
// Add some data
$array_data = json_decode($json_data);
$objPHPExcel->setActiveSheetIndex(0);
$objPHPExcel->getActiveSheet()->SetCellValue('A1', 'First name');
$objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Last name');
$objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Position');
$objPHPExcel->getActiveSheet()->SetCellValue('D1', 'Office');
$objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Start date');
$objPHPExcel->getActiveSheet()->SetCellValue('F1', 'Salary');

foreach ($array_data->data as $key => $value) {
	$key += 2;
	$objPHPExcel->getActiveSheet()->SetCellValue('A'.$key, $value[0]);
	$objPHPExcel->getActiveSheet()->SetCellValue('B'.$key, $value[1]);
	$objPHPExcel->getActiveSheet()->SetCellValue('C'.$key, $value[2]);
	$objPHPExcel->getActiveSheet()->SetCellValue('D'.$key, $value[3]);
	$objPHPExcel->getActiveSheet()->SetCellValue('E'.$key, $value[4]);
	$objPHPExcel->getActiveSheet()->SetCellValue('F'.$key, $value[5]);
}

// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('Employees');

// Save Excel 2007 file
$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
$objWriter->save('php://output');
