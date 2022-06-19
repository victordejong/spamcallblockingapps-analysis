package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/f.class */
public final class C9743f extends AbstractC25649a {
    public C9743f() {
        super(14, 15);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "CREATE TABLE IF NOT EXISTS `aggregation_buckets` (\n`query_name` TEXT NOT NULL,\n`columns` TEXT NOT NULL, \n`version` INTEGER NOT NULL, \n`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n`created_at` INTEGER NOT NULL )", "CREATE TABLE IF NOT EXISTS `aggregation_queries` (\n`query` TEXT NOT NULL,\n`column_list` TEXT NOT NULL,\n`query_name` TEXT NOT NULL, \n`version` INTEGER NOT NULL,\n`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n`created_at` INTEGER NOT NULL)");
    }
}
