package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.c.a.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/s.class */
public final class C9769s extends AbstractC25649a {
    public C9769s() {
        super(26, 27);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "CREATE VIRTUAL TABLE IF NOT EXISTS `pdo_fts` \nUSING FTS4(`d`, \n`k`, \n`p`, \n`c`, \n`o`, \n`f`, \n`g`, \n`s`, \n`val1`, \n`val2`, \n`val3`, \n`val4`, \n`val5`, \n`address`, \n`dff_val1`, \n`dff_val2`, \n`dff_val3`, \n`dff_val4`, \n`dff_val5`, \ncontent=`parsed_data_object_table`)", "INSERT INTO pdo_fts(pdo_fts) VALUES ('rebuild')");
    }
}
