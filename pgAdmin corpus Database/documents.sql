-- Table: public.documents

-- DROP TABLE IF EXISTS public.documents;

CREATE TABLE IF NOT EXISTS public.documents
(
    doc integer NOT NULL,
    text text COLLATE pg_catalog."default" NOT NULL,
    title text COLLATE pg_catalog."default" NOT NULL,
    num_chars integer NOT NULL,
    date date NOT NULL,
    category integer NOT NULL,
    CONSTRAINT "DOCUMENTS_pkey" PRIMARY KEY (doc),
    CONSTRAINT category FOREIGN KEY (category)
        REFERENCES public.categories (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.documents
    OWNER to postgres;