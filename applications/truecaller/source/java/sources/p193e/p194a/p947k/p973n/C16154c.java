package p193e.p194a.p947k.p973n;

import com.truecaller.videocallerid.p186db.VideoCallerIdDatabase;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.n.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/c.class */
public final class C16154c implements AbstractC16153b {

    /* renamed from: a */
    public final f f45597a;

    /* renamed from: b */
    public final VideoCallerIdDatabase f45598b;

    @e(c = "com.truecaller.videocallerid.db.VideoCallerIdDatabaseUtilImpl$clearAllTables$2", f = "VideoCallerIdDatabaseUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/c$a.class */
    public static final class C16155a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16155a(d dVar) {
            super(2, dVar);
            C16154c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17796i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16155a(dVar);
        }

        /* renamed from: k */
        public final Object m17795k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16154c c16154c = C16154c.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c16154c.f45598b.clearAllTables();
            return sVar;
        }

        /* renamed from: s */
        public final Object m17794s(Object obj) {
            C25225a.m3932a3(obj);
            C16154c.this.f45598b.clearAllTables();
            return s.a;
        }
    }

    @Inject
    public C16154c(@Named("IO") f fVar, VideoCallerIdDatabase videoCallerIdDatabase) {
        l.e(fVar, "ioContext");
        l.e(videoCallerIdDatabase, "database");
        this.f45597a = fVar;
        this.f45598b = videoCallerIdDatabase;
    }

    @Override // p193e.p194a.p947k.p973n.AbstractC16153b
    /* renamed from: a */
    public Object mo17797a(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f45597a, new C16155a(null), dVar);
        return a4 == a.a ? a4 : s.a;
    }
}
