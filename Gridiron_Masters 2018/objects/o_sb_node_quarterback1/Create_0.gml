// DESTROY IF MORE THAN ONE
if instance_number(object_index) > 1 {
	instance_destroy();
}

//Init X & Y axis
Xaxis = 0;
Yaxis = 0;
//g
g=0

//dx dy 
dx = 0;
dy = 0;

//damp
damp = .7;

//speed

myfile = file_text_open_write("OGABOGA.txt")
for (i = 0 ; i < 100 ; i++)
{
	file_text_write_real(myfile, i*2); // Writes a value to the file
	file_text_writeln(myfile); // Writes a new line
}
file_text_close(myfile);

myfile = file_text_open_read("OGABOGA.txt")

i = 0;
while (!file_text_eof(myfile))
{
	file_text_readln(myfile);
	if (i == 8)
	{
		spd = file_text_read_real(myfile);
	}
	i++;
}
file_text_close(myfile);

//sprint
sprint = 1;
sprint_timer = 0;

