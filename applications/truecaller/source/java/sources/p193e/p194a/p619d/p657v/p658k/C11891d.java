package p193e.p194a.p619d.p657v.p658k;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p657v.C11821a;
import q3.a.b3.c;
import q3.a.i0;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$listenToCallInterrupted$1", f = "ChangeCallSetting.kt", l = {55}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/d.class */
public final class C11891d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f34943e;

    /* renamed from: f */
    public final /* synthetic */ C11868b f34944f;

    @e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$listenToCallInterrupted$1$1", f = "ChangeCallSetting.kt", l = {136}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/d$a.class */
    public static final class C11892a extends i implements p<Boolean, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ boolean f34945e;

        /* renamed from: f */
        public Object f34946f;

        /* renamed from: g */
        public Object f34947g;

        /* renamed from: h */
        public int f34948h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11892a(d dVar) {
            super(2, dVar);
            C11891d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23869i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11892a c11892a = new C11892a(dVar);
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            c11892a.f34945e = bool.booleanValue();
            return c11892a;
        }

        /* renamed from: k */
        public final Object m23868k(Object obj, Object obj2) {
            return m23869i(obj, (d) obj2).m23867s(s.a);
        }

        /* renamed from: s */
        public final Object m23867s(Object obj) {
            C11464r<C11821a> c11464r;
            boolean z;
            c cVar;
            a aVar = a.a;
            int i = this.f34948h;
            if (i == 0) {
                C25225a.m3932a3(obj);
                z = this.f34945e;
                c11464r = C11891d.this.f34944f.f34838a;
                cVar = c11464r.f33655b;
                this.f34946f = c11464r;
                this.f34947g = cVar;
                this.f34945e = z;
                this.f34948h = 1;
                if (cVar.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                z = this.f34945e;
                c cVar2 = (c) this.f34947g;
                c11464r = (C11464r) this.f34946f;
                C25225a.m3932a3(obj);
                cVar = cVar2;
            }
            try {
                c11464r.mo24640h().mo24639a(C11821a.m23967a(C11891d.this.f34944f.f34838a.getValue(), false, false, z, 3));
                s sVar = s.a;
                cVar.c((Object) null);
                return sVar;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11891d(C11868b c11868b, d dVar) {
        super(2, dVar);
        this.f34944f = c11868b;
    }

    /* renamed from: i */
    public final d<s> m23872i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11891d(this.f34944f, dVar);
    }

    /* renamed from: k */
    public final Object m23871k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11891d(this.f34944f, dVar).m23870s(s.a);
    }

    /* renamed from: s */
    public final Object m23870s(Object obj) {
        a aVar = a.a;
        int i = this.f34943e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f<Boolean> mo23398d = this.f34944f.f34840c.mo23398d();
            C11892a c11892a = new C11892a(null);
            this.f34943e = 1;
            if (s1.a.a.a.v0.f.d.g0(mo23398d, c11892a, this) == aVar) {
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
