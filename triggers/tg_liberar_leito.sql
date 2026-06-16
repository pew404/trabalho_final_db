-- DROP FUNCTION public.fn_liberar_leito();

CREATE OR REPLACE FUNCTION public.fn_liberar_leito()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF NEW.data_saida IS NOT NULL AND OLD.data_saida IS NULL THEN
        UPDATE public.leitos SET status = 'disponivel' WHERE codl = NEW.codl;
    END IF;
    RETURN NEW;
END;
$function$
;