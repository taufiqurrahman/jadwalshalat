
<style>
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


<div align="center" style="border: 2px solid #ccc;padding: 15px;">
    <form action="{{url('jadwal/save/')}}" method="POST">
        <table >
            <tr>
                <td>Tanggal </td>
                <td style="width:50px;text-align:center">:</td>
                <td><input type="text" name="tanggal" value=""/> #format : YYYY-MM-DD</td> 
            </tr>
            <tr>
                <td>Subuh </td>
                <td style="width:50px;text-align:center">:</td>
                <td><input type="text" name="subuh" value=""/> #format : 00:01 - 23:59</td> 
            </tr>
            <tr>
                <td>Zuhur </td>
                <td style="width:50px;text-align:center">:</td>
                <td><input type="text" name="zuhur" value=""/> #format : 00:01 - 23:59</td> 
            </tr>
            <tr>
                <td>Ashar </td>
                <td style="width:50px;text-align:center">:</td>
                <td><input type="text" name="ashar" value=""/> #format : 00:01 - 23:59</td> 
            </tr>
            <tr>
                <td>Magrib </td>
                <td style="width:50px;text-align:center">:</td>
                <td><input type="text" name="magrib" value=""/> #format : 00:01 - 23:59</td> 
            </tr>
            <tr>
                <td>Isya </td>
                <td style="width:50px;text-align:center">:</td>
                <td><input type="text" name="isya" value=""/> #format : 00:01 - 23:59</td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
        </table>   
        <div align="right" style="margin-right: 80px;margin-top:20px;">
            <input type="submit" value="Simpan" class="add"/> 
        </div>
    </form>
</div>
