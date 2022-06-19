package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/b.class */
public final class C9734b extends AbstractC25649a {
    public C9734b() {
        super(10, 11);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `insights_reminders` (`uniqueRefId` TEXT PRIMARY KEY NOT NULL, `vendorName` TEXT NOT NULL, `due_date` INTEGER NOT NULL, `category` TEXT NOT NULL, `image_url` TEXT, `times_notified` INTEGER NOT NULL DEFAULT 0, `is_dismissed` INTEGER NOT NULL, `meta` TEXT NULL, `created_at` INTEGER NOT NULL)");
        abstractC26147b.mo2668S0("CREATE  INDEX `index_insights_reminders_uniqueRefId` ON `insights_reminders` (`uniqueRefId`)");
        abstractC26147b.mo2668S0("CREATE  INDEX `index_insights_reminders_vendorName` ON `insights_reminders` (`vendorName`)");
        abstractC26147b.mo2668S0("CREATE  INDEX `index_insights_reminders_category` ON `insights_reminders` (`category`)");
    }
}
