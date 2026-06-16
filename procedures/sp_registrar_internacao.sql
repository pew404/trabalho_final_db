-- DROP PROCEDURE public.sp_registrar_internacao(int4, int4, int4, varchar);

CREATE OR REPLACE PROCEDURE public.sp_registrar_internacao(IN p_codp integer, IN p_codm integer, IN p_codl integer, IN p_motivo character varying)
 LANGUAGE plpgsql
AS $procedure$
BEGIN
    -- Verifica se leito está disponível
    IF (SELECT status FROM public.leitos WHERE codl = p_codl) <> 'disponivel' THEN
        RAISE EXCEPTION 'Leito % não está disponível.', p_codl;
    END IF;

    -- Registra internação
    INSERT INTO public.internacoes (codp, codm, codl, motivo)
    VALUES (p_codp, p_codm, p_codl, p_motivo);

    -- Atualiza status do leito
    UPDATE public.leitos SET status = 'ocupado' WHERE codl = p_codl;
END;
$procedure$
;