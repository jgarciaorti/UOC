 $(document).ready(function() {
    $('.table').not('.tableOrder').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
        }
    } );
} );

/*El # es si pones el nombre del id en el jsp, el . es para que busque clases*/
 $(document).ready(function() {
    $('#ordertable').DataTable( {
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


