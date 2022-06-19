package p193e.p194a.p982k0.p987l;

import com.truecaller.callrecording.recorder.RecordingError;
import com.truecaller.log.AssertionUtil;
import java.util.concurrent.TimeUnit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callrecording.recorder.CallRecorderSessionManagerImpl$logRecordingEnded$1", f = "CallRecorderSessionManager.kt", l = {242}, m = "invokeSuspend")
/* renamed from: e.a.k0.l.e */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/e.class */
public final class C16337e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45986e;

    /* renamed from: f */
    public int f45987f;

    /* renamed from: g */
    public final /* synthetic */ C16334d f45988g;

    /* renamed from: h */
    public final /* synthetic */ C16344j f45989h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16337e(C16334d c16334d, C16344j c16344j, d dVar) {
        super(2, dVar);
        this.f45988g = c16334d;
        this.f45989h = c16344j;
    }

    /* renamed from: i */
    public final d<s> m17521i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16337e c16337e = new C16337e(this.f45988g, this.f45989h, dVar);
        c16337e.f45986e = obj;
        return c16337e;
    }

    /* renamed from: k */
    public final Object m17520k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16337e c16337e = new C16337e(this.f45988g, this.f45989h, dVar);
        c16337e.f45986e = obj;
        return c16337e.m17519s(s.a);
    }

    /* renamed from: s */
    public final Object m17519s(Object obj) {
        C16346l c16346l;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f45987f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f45986e;
            C16334d c16334d = this.f45988g;
            if (!c16334d.f45970a) {
                return sVar;
            }
            c16334d.f45970a = false;
            C16344j c16344j = this.f45989h;
            RecordingError recordingError = c16344j.f45997c;
            if (recordingError != RecordingError.NONE) {
                c16334d.f45981l.mo17535a(recordingError);
                return sVar;
            }
            c16346l = c16344j.f45995a;
            if (c16346l == null) {
                AssertionUtil.shouldNeverHappen(new IllegalArgumentException("Session data must always be available at this point"), new String[0]);
                return sVar;
            }
            this.f45986e = c16346l;
            this.f45987f = 1;
            if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            c16346l = (C16346l) this.f45986e;
        }
        this.f45988g.f45981l.mo17533c(c16346l.f46000a, (int) TimeUnit.MILLISECONDS.toSeconds(this.f45989h.f45996b), this.f45988g.f45976g.mo17513c(c16346l.f46002c));
        return sVar;
    }
}
