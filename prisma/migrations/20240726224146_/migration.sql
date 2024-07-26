-- CreateEnum
CREATE TYPE "TYPES" AS ENUM ('CHARACTER', 'EPISODES');

-- CreateEnum
CREATE TYPE "CATEGORY" AS ENUM ('SPECIES', 'SEASON');

-- CreateEnum
CREATE TYPE "STATUS" AS ENUM ('ACTIVE', 'CANCELLED', 'SUSPENDED');

-- CreateTable
CREATE TABLE "status_type" (
    "Id" INTEGER NOT NULL,
    "category" "CATEGORY" NOT NULL,
    "duration" DOUBLE PRECISION,
    "status" "STATUS" NOT NULL,

    CONSTRAINT "status_type_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "appearances" (
    "id" INTEGER NOT NULL,
    "type" "TYPES" NOT NULL,
    "character_id" INTEGER NOT NULL,
    "init_time" TIMESTAMP(3) NOT NULL,
    "finish_time" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "appearances_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "status_asociated" (
    "id" INTEGER NOT NULL,
    "category" "CATEGORY" NOT NULL,
    "allStatus" "STATUS"[],

    CONSTRAINT "status_asociated_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "subcategories" (
    "id" INTEGER NOT NULL,
    "category" "CATEGORY" NOT NULL,
    "subcategories" TEXT[],

    CONSTRAINT "subcategories_pkey" PRIMARY KEY ("id")
);
