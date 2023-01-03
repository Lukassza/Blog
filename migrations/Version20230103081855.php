<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230103081855 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE categorie ADD CONSTRAINT FK_497DD6347EC4E0DC FOREIGN KEY (cate_to_user_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_497DD6347EC4E0DC ON categorie (cate_to_user_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE categorie DROP FOREIGN KEY FK_497DD6347EC4E0DC');
        $this->addSql('DROP INDEX IDX_497DD6347EC4E0DC ON categorie');
    }
}