package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.r0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/r0.class */
public final class C9768r0 extends AbstractC25649a {
    public C9768r0() {
        super(4, 5);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS link_prune_tree ( run_type TEXT NOT NULL, tree_type TEXT NOT NULL, sub_tree_name TEXT NOT NULL, sub_tree_value TEXT, created_at INTEGER NOT NULL, PRIMARY KEY (run_type, tree_type,  sub_tree_name))");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_link_prune_tree_run_type` ON `link_prune_tree` (`run_type`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_link_prune_tree_tree_type` ON `link_prune_tree` (`tree_type`)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_link_prune_tree_sub_tree_name` ON `link_prune_tree` (`sub_tree_name`)");
    }
}
