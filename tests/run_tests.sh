#!/bin/bash

app='basic'
tests="
ProcessorsTest 
SchedulerTest
"

for test in `echo $tests`
do
	python manage.py test $app.$test
done

app='scraper'
tests="
ScraperRunTest.test_missing_base_elem
ScraperRunTest.test_missing_url_elem
ScraperRunTest.test_scraper
ScraperRunTest.test_standard_field_as_detail_page_url_hack
ScraperRunTest.test_double
ScraperRunTest.test_standard_update_field
ScraperRunTest.test_standard_update_field_update
ScraperRunTest.test_testmode
ScraperRunTest.test_task_run_type
ScraperRunTest.test_no_task_run_type
ScraperRunTest.test_runtime_config_max_items_read
ScraperRunTest.test_runtime_config_max_items_save
ScraperRunTest.test_max_items_read
ScraperRunTest.test_max_items_save
ScraperRunTest.test_missing_mandatory
ScraperRunTest.test_scraper_pause_status
ScraperRunTest.test_scraper_inactive_status
ScraperRunTest.test_processor
ScraperRunTest.test_multiple_processors_use
ScraperRunTest.test_replace_processor_wrong_x_path
ScraperRunTest.test_replace_processor_correct_x_path
ScraperRunTest.test_static_processor_wrong_x_path
ScraperRunTest.test_static_processor_correct_x_path
ScraperRunTest.test_reg_exp
ScraperRunTest.test_img_store_format_flat_no_thumbs
ScraperRunTest.test_img_store_format_flat_with_thumbs
ScraperRunTest.test_img_store_format_all_no_thumbs
ScraperRunTest.test_img_store_format_all_with_thumbs
ScraperRunTest.test_img_store_format_thumbs_with_thumbs
ScraperRunTest.test_missing_img_when_img_field_not_mandatory
CheckerRunTest.test_checker_test_wrong_checker_config
CheckerRunTest.test_none_type
CheckerRunTest.test_x_path_type_keep_video
CheckerRunTest.test_x_path_type_blank_result_field_keep_video
CheckerRunTest.test_x_path_type_404_delete
CheckerRunTest.test_x_path_type_404_delete_with_zero_actions
CheckerRunTest.test_x_path_type_x_path_delete
CheckerRunTest.test_x_path_type_blank_result_field_x_path_delete
CheckerRunTest.test_x_path_type_404_delete_with_img
CheckerRunTest.test_404_type_404_delete
PaginationTest.test_config_append_str_without_page
PaginationTest.test_p_on_start
PaginationTest.test_range_funct_type_wrong_replace_format
PaginationTest.test_range_funct_type_one_page
PaginationTest.test_free_list_type_wrong_replace_format
PaginationTest.test_free_list_type_scraper_run
ModelTest.test_scraper_get_scrape_elems
ModelTest.test_scraper_get_mandatory_scrape_elems
"

for test in `echo $tests`
do
	python manage.py test $app.$test
done

