package p193e.p194a.p437c.p438a.p479i;

import com.truecaller.insights.p168ui.domain.DelayedAnalyticLoggerImpl;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.domain.DelayedAnalyticLoggerImpl$logCachedEvents$1", f = "DelayedAnalyticLogger.kt", l = {83}, m = "invokeSuspend")
/* renamed from: e.a.c.a.i.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/i/b.class */
public final class C9106b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27774e;

    /* renamed from: f */
    public final /* synthetic */ DelayedAnalyticLoggerImpl f27775f;

    /* renamed from: g */
    public final /* synthetic */ long f27776g;

    /* renamed from: h */
    public final /* synthetic */ List f27777h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9106b(DelayedAnalyticLoggerImpl delayedAnalyticLoggerImpl, long j, List list, d dVar) {
        super(2, dVar);
        this.f27775f = delayedAnalyticLoggerImpl;
        this.f27776g = j;
        this.f27777h = list;
    }

    /* renamed from: i */
    public final d<s> m27877i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9106b(this.f27775f, this.f27776g, this.f27777h, dVar);
    }

    /* renamed from: k */
    public final Object m27876k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9106b(this.f27775f, this.f27776g, this.f27777h, dVar).m27875s(s.a);
    }

    /* renamed from: s */
    public final Object m27875s(Object obj) {
        a aVar = a.a;
        int i = this.f27774e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            long j = this.f27776g;
            this.f27774e = 1;
            if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC10060c abstractC10060c = this.f27775f.f12722e;
        List<k> list = this.f27777h;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (k kVar : list) {
            arrayList.add((C10529b) kVar.a);
        }
        abstractC10060c.mo26756b(arrayList);
        this.f27775f.f12720c.clear();
        return s.a;
    }
}
