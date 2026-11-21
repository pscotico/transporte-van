-- CreateEnum
CREATE TYPE "Papel" AS ENUM ('MOTORISTA', 'ALUNO');

-- CreateTable
CREATE TABLE "Usuario" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    "senha_hash" VARCHAR(20) NOT NULL,
    "telefone" VARCHAR(50) NOT NULL,
    "papel" "Papel" NOT NULL,
    "criado_em" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_email_key" ON "Usuario"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_telefone_key" ON "Usuario"("telefone");
