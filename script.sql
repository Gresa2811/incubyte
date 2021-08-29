DECLARE
	name customer.cust_name%type;
	id customer.cust_id%type;
	open_date customer.cust_open_date%type;
	last_consult customer.last_consulted_date%type;
	vac_type customer.vac_type%type;
	doc customer.doc_consulted%type;
	state customer.state%type;
	country customer.country%type;
	post_code customer.post_code%type;
	dob customer.dob%type;
	active_cust customer.active_cust%type;

	procedure p1(name customer.cust_name%type, id customer.cust_id%type, open_date customer.cust_open_date%type, last_consult customer.last_consulted_date%type, vac_type customer.vac_type%type, doc customer.doc_consulted%type, state customer.state%type, country customer.country%type, post_code customer.post_code%type, dob customer.dob%type, active_cust customer.active_cust%type) is

BEGIN
	select cust_name, cust_id, cust_open_date, last_consulted_date, vac_type, doc_consulted, state, country, post_code, dob, active_cust into name, id, open_date, last_consult, vac_type, doc, state, country, post_code, dob, active_cust where cust_id = id;

END;

BEGIN
	id:=123457;
	p1(name, id, open_date, last_consult, vac_type, doc, state, country, post_code, dob, active_cust);
	dbms_output.put_line(name||id||open_date||last_consult||vac_type||doc||state||country||post_code||dob||active_cust);

END;
/