package p193e.p194a.p619d.p657v.p658k;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11471s;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$listenNativeCalls$1", f = "ChangeCallSetting.kt", l = {104, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c.class */
public final class C11878c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f34890e;

    /* renamed from: f */
    public final /* synthetic */ C11868b f34891f;

    /* renamed from: e.a.d.v.k.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c$a.class */
    public static final class C11879a implements g<AbstractC11471s> {
        public C11879a() {
            C11878c.this = r4;
        }

        /* renamed from: a */
        public Object m23895a(Object obj, d dVar) {
            Object m23921c = C11878c.this.f34891f.m23921c((AbstractC11471s) obj, dVar);
            return m23921c == a.a ? m23921c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11878c(C11868b c11868b, d dVar) {
        super(2, dVar);
        this.f34891f = c11868b;
    }

    /* renamed from: i */
    public final d<s> m23898i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11878c(this.f34891f, dVar);
    }

    /* renamed from: k */
    public final Object m23897k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11878c(this.f34891f, dVar).m23896s(s.a);
    }

    /* renamed from: s */
    public final Object m23896s(Object obj) {
        a aVar = a.a;
        int i = this.f34890e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C11868b c11868b = this.f34891f;
            AbstractC11471s mo24583n = c11868b.f34842e.mo24583n();
            this.f34890e = 1;
            if (c11868b.m23921c(mo24583n, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        f<AbstractC11471s> mo24587a = this.f34891f.f34842e.mo24587a();
        C11879a c11879a = new C11879a();
        this.f34890e = 2;
        if (mo24587a.c(c11879a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
