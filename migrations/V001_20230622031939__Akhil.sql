-- Script generated by Redgate Compare v1.12.2.9897
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating carrier.product_id_seq...';END$$;
CREATE SEQUENCE carrier.product_id_seq
AS integer
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
START 1
CACHE 1
NO CYCLE;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating carrier.product...';END$$;
CREATE TABLE carrier.product (
    id integer NOT NULL DEFAULT nextval('carrier.product_id_seq'::regclass),
    name character varying(100) NOT NULL,
    sku character(8)
);


DO language plpgsql $$BEGIN RAISE NOTICE 'Altering carrier.product_id_seq...';END$$;
ALTER SEQUENCE carrier.product_id_seq OWNED BY carrier.product.id;

SET check_function_bodies = true;
