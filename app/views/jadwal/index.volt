<style>
    table tr td {
        border: 2px solid grey;
        padding: 5px;
    }
    

    .header{
        background-color: #ccc;
    }

    .successMessage {
        background-color: green;
        color: white;
        margin-bottom: 10px;
        padding: 5px;
    }

    .errorMessage {
        background-color: rgb(179, 30, 75);
        color: white;
        margin-bottom: 10px;
        padding: 5px;
    }

    .add {
        border: 2px solid #17a2b8;
        width : 200px;
        text-align: center;
        margin-bottom: 10px;
        padding : 3px 3px;
        color: #17a2b8;
        background-color: rgb(242, 236, 236);
    }

    .add:hover {
        background-color: #17a2b8;
        color: white;
    }

</style>
<br/>
{{ flashSession.output() }}
<a href="{{url('jadwal/add/')}}">
    <div  class="add">
        Tambah Jadwal Baru
    </div>
</a>
<table width="100%">
    <tr class="header">
        <td>Tanggal</td>
        <td>Subuh</td>
        <td>Zuhur</td>
        <td>Ashar</td>
        <td>Magrib</td>
        <td>Isya</td>
        <td>Action</td>
    </tr>
{% for jadwal in jadwals %}
    <tr>
        <td>{{ jadwal.tanggal }}</td>
        <td>{{ jadwal.subuh }}</td>
        <td>{{ jadwal.zuhur }}</td>
        <td>{{ jadwal.ashar }}</td>
        <td>{{ jadwal.magrib }}</td>
        <td>{{ jadwal.isya }}</td>
        <td><a href="{{url('jadwal/edit/')}}{{ jadwal.id }}">Edit</a> | <a href="{{url('jadwal/delete/')}}{{ jadwal.id }}">Delete</a></td>
    </tr>
{% endfor %}
</table>