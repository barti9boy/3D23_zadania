We managed to get rid of 4 vertices, each defined by 6 glfloat numbers. 
<br>That gives 4x6x size(GLfloat) = 4x6x4 = 96 bytes
<br>We had to specify the indices vector which contains 9 GLushort numbers which gives:
<br>9 x size(GLushort) = 9x2 = 18
<br>In total that gives 96-18 = 78 bytes.
<br>To save more bytes same practise probably could be used for colors as well