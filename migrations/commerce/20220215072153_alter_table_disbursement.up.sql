DO $$ BEGIN IF EXISTS(
    SELECT *
    FROM information_schema.columns
    WHERE table_name = 'disbursement'
        and column_name = 'created_on'
) THEN
ALTER TABLE "public"."disbursement"
    RENAME COLUMN "created_on" TO "created_at";
END IF;
END $$;