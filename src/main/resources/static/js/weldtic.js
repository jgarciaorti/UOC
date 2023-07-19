 $(document).ready(function() {
    $('.table').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
        }
    } );
} );

 $(document).ready(function() {
    $('.tableOrder').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
        },
        "order": [[ 0, 'desc' ]]
    } );
} );



/*
 $(document).ready(function() {
    $('.table').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
        }
    } );
},
 $(document).ready(function() {
    $('.tableOrder').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
        },
        "order": [[ 0, 'desc' ]]
    } );
}))
*/


