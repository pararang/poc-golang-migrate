DO $$ BEGIN IF EXISTS(
    SELECT *
    FROM information_schema.columns
    WHERE table_name = 'disbursement'
        and column_name = 'created_at'
) THEN
ALTER TABLE "public"."disbursement"
    RENAME COLUMN "created_at" TO "created_on";
END IF;
END $$;