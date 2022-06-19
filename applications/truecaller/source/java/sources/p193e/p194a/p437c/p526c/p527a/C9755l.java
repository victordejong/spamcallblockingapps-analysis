package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/l.class */
public final class C9755l extends AbstractC25649a {
    public C9755l() {
        super(1, 2);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("ALTER TABLE parsed_data_object_table ADD COLUMN state TEXT NOT NULL DEFAULT '' ");
        abstractC26147b.mo2668S0("CREATE TABLE link_prune_table (parent_id INTEGER NOT NULL, child_id INTEGER NOT NULL, link_type TEXT NOT NULL, created_at INTEGER NOT NULL, PRIMARY KEY (parent_id, child_id), FOREIGN KEY (parent_id) REFERENCES parsed_data_object_table (id), FOREIGN KEY (child_id) REFERENCES parsed_data_object_table (id))");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS index_link_prune_table_parent_id ON link_prune_table (parent_id)");
        abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS index_link_prune_table_child_id ON link_prune_table (child_id)");
        abstractC26147b.mo2668S0("CREATE TABLE states_table (owner TEXT NOT NULL, last_updated_at INTEGER NOT NULL, last_updated_data TEXT, created_at INTEGER NOT NULL, PRIMARY KEY (owner))");
    }
}
