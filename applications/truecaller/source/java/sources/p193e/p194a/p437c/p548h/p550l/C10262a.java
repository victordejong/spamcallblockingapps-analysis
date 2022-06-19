package p193e.p194a.p437c.p548h.p550l;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1075n3.p1076a.C18481d;
import p193e.p194a.p1129p5.C19271s;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.commons.logging.InsightsDebugLogger$sendAsIntentAsync$1", f = "InsightsDebugLogger.kt", l = {76}, m = "invokeSuspend")
/* renamed from: e.a.c.h.l.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/l/a.class */
public final class C10262a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f30409e;

    /* renamed from: f */
    public final /* synthetic */ Context f30410f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10262a(Context context, d dVar) {
        super(2, dVar);
        this.f30410f = context;
    }

    /* renamed from: i */
    public final d<s> m26512i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10262a(this.f30410f, dVar);
    }

    /* renamed from: k */
    public final Object m26511k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10262a(this.f30410f, dVar).m26510s(s.a);
    }

    /* renamed from: s */
    public final Object m26510s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f30409e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C10263b c10263b = C10263b.f30414d;
            C18481d c18481d = C10263b.f30412b;
            if (c18481d != null) {
                StringBuilder m8728C = C22128a.m8728C("insightsDebugLogs_");
                m8728C.append(System.currentTimeMillis());
                m8728C.append(".gz");
                String sb = m8728C.toString();
                Context context = this.f30410f;
                byte[] m14870b = c18481d.m14870b();
                l.d(m14870b, "logger.compressedLogs");
                this.f30409e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C19271s(context, sb, m14870b, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            }
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Uri uri = (Uri) obj;
        if (uri != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("application/gzip");
            intent.putExtra("android.intent.extra.STREAM", uri);
            this.f30410f.startActivity(intent);
        }
        return sVar;
    }
}
