-- create contraints
ALTER TABLE public.locations
  ADD CONSTRAINT fk_locations_contry_id FOREIGN KEY (country_id)
REFERENCES countries (country_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.employees
  ADD CONSTRAINT fk_employees_job_id FOREIGN KEY (job_id)
REFERENCES jobs (job_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.job_history
  ADD CONSTRAINT fk_job_history_department_id FOREIGN KEY (department_id)
REFERENCES departments (department_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.job_history
  ADD CONSTRAINT fk_job_history_job_id FOREIGN KEY (job_id)
REFERENCES jobs (job_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.countries
  ADD CONSTRAINT fk_contries_region_id FOREIGN KEY (region_id)
REFERENCES regions (region_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.departments
  ADD CONSTRAINT fk_departments_manager_id FOREIGN KEY (manager_id)
REFERENCES employees (employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.employees
  ADD CONSTRAINT fk_employees_department_id FOREIGN KEY (department_id)
REFERENCES departments (department_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.employees
  ADD CONSTRAINT fk_employees_manager_id FOREIGN KEY (manager_id)
REFERENCES employees (employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE public.departments
  ADD CONSTRAINT fk_departments_location_id FOREIGN KEY (location_id)
REFERENCES locations (location_id) ON UPDATE CASCADE ON DELETE CASCADE;
