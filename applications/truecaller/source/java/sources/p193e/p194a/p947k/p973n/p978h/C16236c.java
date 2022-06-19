package p193e.p194a.p947k.p973n.p978h;

import com.truecaller.videocallerid.data.PredefinedVideoResult;
import e.m.e.f0.a;
import java.lang.reflect.Type;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19243l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.db.predefinedVideos.PredefinedVideosRepositoryImpl$getPredefinedVideosConfig$2", f = "PredefinedVideosRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.n.h.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/h/c.class */
public final class C16236c extends i implements p<i0, d<? super List<? extends PredefinedVideoResult>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16238d f45766e;

    /* renamed from: e.a.k.n.h.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/h/c$a.class */
    public static final class C16237a extends a<List<? extends PredefinedVideoResult>> {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16236c(C16238d c16238d, d dVar) {
        super(2, dVar);
        this.f45766e = c16238d;
    }

    /* renamed from: i */
    public final d<s> m17685i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16236c(this.f45766e, dVar);
    }

    /* renamed from: k */
    public final Object m17684k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16238d c16238d = this.f45766e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Type type = new C16237a().getType();
        AbstractC19243l abstractC19243l = c16238d.f45772f;
        Object obj3 = c16238d.f45768b.get();
        l.d(obj3, "predefinedVideoConfig.get()");
        l.d(type, "type");
        s1.u.s sVar = (List) abstractC19243l.mo13750b((String) obj3, type);
        if (sVar == null) {
            sVar = s1.u.s.a;
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m17683s(Object obj) {
        C25225a.m3932a3(obj);
        Type type = new C16237a().getType();
        C16238d c16238d = this.f45766e;
        AbstractC19243l abstractC19243l = c16238d.f45772f;
        Object obj2 = c16238d.f45768b.get();
        l.d(obj2, "predefinedVideoConfig.get()");
        l.d(type, "type");
        s1.u.s sVar = (List) abstractC19243l.mo13750b((String) obj2, type);
        if (sVar == null) {
            sVar = s1.u.s.a;
        }
        return sVar;
    }
}
