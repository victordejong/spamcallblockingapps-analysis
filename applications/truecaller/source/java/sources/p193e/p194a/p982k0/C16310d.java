package p193e.p194a.p982k0;

import com.truecaller.C2752R;
import com.truecaller.callrecording.recorder.RecordingError;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p982k0.AbstractC16315h;
import p193e.p194a.p982k0.p987l.AbstractC16333c;
import p193e.p194a.p982k0.p987l.AbstractC16347m;
import p193e.p194a.p982k0.p987l.C16346l;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callrecording.CallRecordingManagerImpl$setupSessionManagerListener$1", f = "CallRecordingManagerImpl.kt", l = {237}, m = "invokeSuspend")
/* renamed from: e.a.k0.d */
/* loaded from: classes7-dex2jar.jar:e/a/k0/d.class */
public final class C16310d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f45926e;

    /* renamed from: f */
    public final /* synthetic */ C16305c f45927f;

    /* renamed from: e.a.k0.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/d$a.class */
    public static final class C16311a implements g<AbstractC16347m> {
        public C16311a() {
            C16310d.this = r4;
        }

        /* renamed from: a */
        public Object m17564a(AbstractC16347m abstractC16347m, d<? super s> dVar) {
            AbstractC16315h.C16318c c16318c;
            AbstractC16347m abstractC16347m2 = abstractC16347m;
            String str = "New session state: " + abstractC16347m2;
            if (l.a(abstractC16347m2, AbstractC16347m.C16349b.f46006a)) {
                c16318c = AbstractC16315h.C16318c.f45934a;
            } else if (l.a(abstractC16347m2, AbstractC16347m.C16350c.f46007a)) {
                c16318c = AbstractC16315h.C16319d.f45935a;
            } else if (abstractC16347m2 instanceof AbstractC16347m.C16351d) {
                C16346l c16346l = ((AbstractC16347m.C16351d) abstractC16347m2).f46008a;
                c16318c = new AbstractC16315h.C16320e(c16346l.f46003d, c16346l.f46004e);
            } else if (!(abstractC16347m2 instanceof AbstractC16347m.C16348a)) {
                throw new s1.i();
            } else {
                C16310d.this.f45927f.f45909i.mo17391t(true);
                if (((AbstractC16347m.C16348a) abstractC16347m2).f46005a.f45997c == RecordingError.NONE) {
                    c16318c = AbstractC16315h.C16316a.f45932a;
                } else {
                    ((AbstractC16333c) C16310d.this.f45927f.f45916p.get()).reset();
                    C16310d.this.f45927f.m17597K(C2752R.string.call_recording_unable_to_record);
                    c16318c = new AbstractC16315h.C16317b(new Exception(((AbstractC16315h) C16310d.this.f45927f.f45902b.getValue()).toString()));
                }
            }
            C16310d.this.f45927f.f45902b.setValue(c16318c);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16310d(C16305c c16305c, d dVar) {
        super(2, dVar);
        this.f45927f = c16305c;
    }

    /* renamed from: i */
    public final d<s> m17567i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16310d(this.f45927f, dVar);
    }

    /* renamed from: k */
    public final Object m17566k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16310d(this.f45927f, dVar).m17565s(s.a);
    }

    /* renamed from: s */
    public final Object m17565s(Object obj) {
        a aVar = a.a;
        int i = this.f45926e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<AbstractC16347m> state = ((AbstractC16333c) this.f45927f.f45916p.get()).getState();
            C16311a c16311a = new C16311a();
            this.f45926e = 1;
            if (state.c(c16311a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
