package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.t0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/t0.class */
public final class C9772t0 extends AbstractC25649a {
    public C9772t0() {
        super(51, 52);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS aggregate_analytics_events (\nfeature TEXT NOT NULL, \nevent_category TEXT NOT NULL, \nevent_info TEXT NOT NULL, \ncontext TEXT NOT NULL, \naction_type TEXT NOT NULL, \naction_info TEXT NOT NULL DEFAULT '',\nevent_date INTEGER NOT NULL DEFAULT 0, \ncounts INTEGER NOT NULL, \nagg_event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \ncreated_at INTEGER NOT NULL, \nconsumed INTEGER NOT NULL\n)");
    }
}
