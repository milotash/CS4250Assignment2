-- Table: public.index

-- DROP TABLE IF EXISTS public.index;

CREATE TABLE IF NOT EXISTS public.index
(
    doc_documents integer NOT NULL,
    term_terms text COLLATE pg_catalog."default" NOT NULL,
    count integer NOT NULL,
    CONSTRAINT document_terms_pk PRIMARY KEY (doc_documents, term_terms),
    CONSTRAINT doc_documents FOREIGN KEY (doc_documents)
        REFERENCES public.documents (doc) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT term_terms FOREIGN KEY (term_terms)
        REFERENCES public.terms (term) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.index
    OWNER to postgres;