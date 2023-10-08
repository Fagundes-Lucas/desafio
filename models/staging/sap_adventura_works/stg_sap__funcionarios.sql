with
    source_employee as (
        select 
            cast(businessentityid as int) as id_entidade_comercial_do_funcionario
            ,cast(loginid as string) as id_login
            ,cast(jobtitle as string) as cargo
            ,cast(gender as string) as genero
        from {{ source('sap', 'employee') }}
    )

select *
from source_employee