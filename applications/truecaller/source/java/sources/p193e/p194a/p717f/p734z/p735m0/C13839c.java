package p193e.p194a.p717f.p734z.p735m0;

import com.truecaller.incallui.utils.analytics.events.AnalyticsContext;
import com.truecaller.incallui.utils.analytics.events.CallerType;
import e.m.d.y.n;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$logNotificationViewVisitAsync$1", f = "InCallUIAnalyticsImpl.kt", l = {191}, m = "invokeSuspend")
/* renamed from: e.a.f.z.m0.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/c.class */
public final class C13839c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f40156e;

    /* renamed from: f */
    public final /* synthetic */ C13832b f40157f;

    /* renamed from: g */
    public final /* synthetic */ AnalyticsContext f40158g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13839c(C13832b c13832b, AnalyticsContext analyticsContext, d dVar) {
        super(2, dVar);
        this.f40157f = c13832b;
        this.f40158g = analyticsContext;
    }

    /* renamed from: i */
    public final d<s> m21010i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13839c(this.f40157f, this.f40158g, dVar);
    }

    /* renamed from: k */
    public final Object m21009k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13839c(this.f40157f, this.f40158g, dVar).m21008s(s.a);
    }

    /* renamed from: s */
    public final Object m21008s(Object obj) {
        a aVar = a.a;
        int i = this.f40156e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13832b c13832b = this.f40157f;
                this.f40156e = 1;
                Object m21028l = c13832b.m21028l(this);
                obj = m21028l;
                if (m21028l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            CallerType callerType = (CallerType) obj;
            String value = this.f40158g.getValue();
            String value2 = callerType.getValue();
            if (true & true) {
                value2 = null;
            }
            l.e(value, "viewId");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (value2 != null) {
                String str = (String) linkedHashMap.put("Type", value2);
            }
            n.B0(new C19597a(value, null, linkedHashMap), this.f40157f.f40129c);
            return s.a;
        } catch (CancellationException e) {
            String value3 = this.f40158g.getValue();
            String value4 = CallerType.SEARCHING.getValue();
            if (true & true) {
                value4 = null;
            }
            l.e(value3, "viewId");
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            if (value4 != null) {
                String str2 = (String) linkedHashMap2.put("Type", value4);
            }
            n.B0(new C19597a(value3, null, linkedHashMap2), this.f40157f.f40129c);
            throw e;
        }
    }
}
