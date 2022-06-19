package p193e.p194a.p437c.p526c.p527a;

import android.database.Cursor;
import java.util.ArrayList;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.z */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/z.class */
public final class C9783z extends AbstractC25649a {
    public C9783z() {
        super(32, 33);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("\n            ALTER TABLE 'feedback'\n            ADD COLUMN 'parent_id'\n            INTEGER NOT NULL DEFAULT -1\n            ");
        Cursor mo2667U1 = abstractC26147b.mo2667U1("\n                    SELECT * FROM message_conversation_table \n                    WHERE message_id IN (\n                    SELECT DISTINCT(entity_id) \n                    FROM feedback)\n                    ");
        try {
            ArrayList arrayList = new ArrayList();
            if (mo2667U1 != null) {
                while (mo2667U1.moveToNext()) {
                    arrayList.add(new k(Integer.valueOf(mo2667U1.getInt(mo2667U1.getColumnIndex("conversation_id"))), Integer.valueOf(mo2667U1.getInt(mo2667U1.getColumnIndex("message_id")))));
                }
            }
            C25225a.m4016G(mo2667U1, null);
            for (k kVar : i.z(arrayList)) {
                StringBuilder m8728C = C22128a.m8728C(" UPDATE feedback SET parent_id = ");
                m8728C.append(((Number) kVar.a).intValue());
                m8728C.append(" WHERE entity_id = ");
                m8728C.append(((Number) kVar.b).intValue());
                m8728C.append(' ');
                abstractC26147b.mo2668S0(m8728C.toString());
            }
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }
}
