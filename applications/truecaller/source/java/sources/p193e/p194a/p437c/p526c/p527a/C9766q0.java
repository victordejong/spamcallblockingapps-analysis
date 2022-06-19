package p193e.p194a.p437c.p526c.p527a;

import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.models.pdo.ClassifierType;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.f0.n;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.q0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/q0.class */
public final class C9766q0 extends AbstractC25649a {
    public C9766q0() {
        super(49, 50);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("DROP VIEW IF EXISTS pdo_conv_view            ");
        abstractC26147b.mo2668S0(n.c("\n            UPDATE sms_backup_table \n            SET transport = " + Transport.IM.getValue() + "\n            WHERE messageID IN (\n                SELECT message_id \n                FROM message_conversation_table \n                WHERE is_im = 1\n            )\n            "));
        abstractC26147b.mo2668S0("ALTER TABLE sms_backup_table RENAME TO temp_sms_backup_table");
        abstractC26147b.mo2668S0("DROP INDEX IF EXISTS index_sms_backup_table_address");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `sms_backup_table` \n(\n    `messageID` INTEGER PRIMARY KEY NOT NULL,\n    `address` TEXT NOT NULL, \n    `message` TEXT NOT NULL,\n    `date` INTEGER NOT NULL,\n    `transport` INTEGER NOT NULL, \n    `parseFailed` INTEGER NOT NULL, \n    `errorMessage` TEXT NOT NULL, \n    `retryCount` INTEGER NOT NULL, \n    `deleted` INTEGER NOT NULL, \n    `created_at` INTEGER NOT NULL, \n    `updateCategory` TEXT, \n    `classified_by` INTEGER NOT NULL, \n    `conversationId` INTEGER NOT NULL, \n    `spam_category` INTEGER NOT NULL\n)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_sms_backup_table_address` ON `sms_backup_table` (`address`)");
        abstractC26147b.mo2668S0(n.c("\n                INSERT OR REPLACE INTO `sms_backup_table` (\n                    `messageID`,\n                    `address`,\n                    `message`,\n                    `date`,\n                    `transport`,\n                    `parseFailed`,\n                    `errorMessage`,\n                    `retryCount`,\n                    `deleted`,\n                    `created_at`,\n                    `updateCategory`,\n                    `classified_by`,\n                    `conversationId`,\n                    `spam_category`\n                ) SELECT `messageID`, \n                    `address`, \n                    `message`, \n                    IFNULL(`date`, strftime('%s', 'now')) \n                    AS `date`, \n                    IFNULL(`transport`, " + Transport.SMS.getValue() + ") \n                    AS `transport`, \n                    IFNULL(`parseFailed`, 0) \n                    AS `parseFailed`,  \n                    IFNULL(`errorMessage`, '') \n                    AS `errorMessage`, \n                    IFNULL(`retryCount`, 0) \n                    AS `retryCount`, \n                    IFNULL(`deleted`, 0) \n                    AS `deleted`, \n                    IFNULL(`temp_sms_backup_table`.\n                    `created_at`, strftime('%s', 'now'))\n                     AS `created_at`, \n                    `updateCategory`, \n                    IFNULL(`classified_by`, " + ClassifierType.DEFAULT.getValue() + ") \n                    AS `classified_by`, \n                    IFNULL(`conversationId`, -1) \n                    AS `conversationId`, \n                    IFNULL(`spam_category`, 1) \n                    AS `spam_category`\n                FROM `temp_sms_backup_table`\n                INNER JOIN `message_conversation_table` ON\n                `temp_sms_backup_table`.`messageID` = \n                `message_conversation_table`.`message_id`\n            "));
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS temp_sms_backup_table");
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS message_conversation_table");
    }
}
