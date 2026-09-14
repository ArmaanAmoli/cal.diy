/*
  Warnings:

  - The `disableCancelling` column on the `EventType` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "public"."DisableCancelling" AS ENUM ('GUESTS', 'BOTH_HOST_GUESTS', 'NOBODY');

-- AlterTable
ALTER TABLE "public"."EventType" DROP COLUMN "disableCancelling",
ADD COLUMN     "disableCancelling" "public"."DisableCancelling" DEFAULT 'NOBODY';
