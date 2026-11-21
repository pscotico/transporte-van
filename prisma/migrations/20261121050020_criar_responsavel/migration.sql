/*
  Warnings:

  - You are about to drop the `Aluno` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Aluno" DROP CONSTRAINT "Aluno_usuario_id_fkey";

-- DropTable
DROP TABLE "Aluno";

-- CreateTable
CREATE TABLE "Responsavel" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    "telefone" VARCHAR(20) NOT NULL,
    "aluno_id" INTEGER NOT NULL,

    CONSTRAINT "Responsavel_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Responsavel" ADD CONSTRAINT "Responsavel_aluno_id_fkey" FOREIGN KEY ("aluno_id") REFERENCES "Aluno"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
