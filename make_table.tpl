<p>The open items are as follows:</p>
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  %col_id = row[0]
  %url='/edit/' + str(col_id)
  <th colspan="10">
      <form action={{url}} method="get"><strong><button type="submit">Edit</button></strong></form>
  </th>
  </tr>
%end

</table>
<table border="0">
  <tr>
    <th colspan="10">
      <form action="/new" method="get"><strong><button type="submit">New task</button></strong></form>
    </th>
    <th colspan="10">
      <form action="/help" method="get"><strong><button type="submit">Help</button></strong></form>
    </th>
  </tr>
</table>