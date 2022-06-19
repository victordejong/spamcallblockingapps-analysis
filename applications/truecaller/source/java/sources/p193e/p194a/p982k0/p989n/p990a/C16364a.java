package p193e.p194a.p982k0.p989n.p990a;

import android.content.Context;
import android.content.Intent;
import com.truecaller.callrecording.p154ui.accessibilityguide.CallRecordingAccessibilityGuideActivity;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callrecording.ui.accessibilityguide.CallRecordingAccessibilityGuideActivity$Companion$show$1", f = "CallRecordingAccessibilityGuideActivity.kt", l = {24}, m = "invokeSuspend")
/* renamed from: e.a.k0.n.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/a/a.class */
public final class C16364a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f46027e;

    /* renamed from: f */
    public final /* synthetic */ Context f46028f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16364a(Context context, d dVar) {
        super(2, dVar);
        this.f46028f = context;
    }

    /* renamed from: i */
    public final d<s> m17503i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16364a(this.f46028f, dVar);
    }

    /* renamed from: k */
    public final Object m17502k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16364a(this.f46028f, dVar).m17501s(s.a);
    }

    /* renamed from: s */
    public final Object m17501s(Object obj) {
        a aVar = a.a;
        int i = this.f46027e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f46027e = 1;
            if (s1.a.a.a.v0.f.d.D0(700L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f46028f.startActivity(new Intent(this.f46028f, CallRecordingAccessibilityGuideActivity.class));
        return s.a;
    }
}
