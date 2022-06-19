package p193e.p194a.p616c5.p617a;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.truecaller.social_login.SocialAccountProfile;
import p193e.p1538j.C23244l0;
import p193e.p1538j.EnumC23246m0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.social_login.facebook.FacebookLoginPresenter$fetchProfile$1", f = "FacebookLoginPresenter.kt", l = {50}, m = "invokeSuspend")
/* renamed from: e.a.c5.a.e */
/* loaded from: classes13-dex2jar.jar:e/a/c5/a/e.class */
public final class C10952e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32461e;

    /* renamed from: f */
    public final /* synthetic */ C10954f f32462f;

    /* renamed from: g */
    public final /* synthetic */ AccessToken f32463g;

    @e(c = "com.truecaller.social_login.facebook.FacebookLoginPresenter$fetchProfile$1$response$1", f = "FacebookLoginPresenter.kt", l = {51}, m = "invokeSuspend")
    /* renamed from: e.a.c5.a.e$a */
    /* loaded from: classes13-dex2jar.jar:e/a/c5/a/e$a.class */
    public static final class C10953a extends i implements p<i0, d<? super C23244l0>, Object> {

        /* renamed from: e */
        public int f32464e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10953a(d dVar) {
            super(2, dVar);
            C10952e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m25479i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10953a(dVar);
        }

        /* renamed from: k */
        public final Object m25478k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10953a(dVar).m25477s(s.a);
        }

        /* renamed from: s */
        public final Object m25477s(Object obj) {
            a aVar = a.a;
            int i = this.f32464e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10952e c10952e = C10952e.this;
                C10954f c10954f = c10952e.f32462f;
                AbstractC10956h abstractC10956h = c10954f.f32470h;
                AccessToken accessToken = c10952e.f32463g;
                String str = c10954f.f32467e;
                this.f32464e = 1;
                C10958j c10958j = (C10958j) abstractC10956h;
                c0 c0Var = new c0();
                String str2 = c10958j.f32473a;
                Bundle bundle = new Bundle();
                bundle.putString(c10958j.f32474b, str);
                c0Var.a = new GraphRequest(accessToken, str2, bundle, EnumC23246m0.GET, null, null, 48);
                Object a4 = s1.a.a.a.v0.f.d.a4(c10958j.f32475c, new C10957i(c0Var, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10952e(C10954f c10954f, AccessToken accessToken, d dVar) {
        super(2, dVar);
        this.f32462f = c10954f;
        this.f32463g = accessToken;
    }

    /* renamed from: i */
    public final d<s> m25482i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10952e(this.f32462f, this.f32463g, dVar);
    }

    /* renamed from: k */
    public final Object m25481k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10952e(this.f32462f, this.f32463g, dVar).m25480s(s.a);
    }

    /* renamed from: s */
    public final Object m25480s(Object obj) {
        a aVar = a.a;
        int i = this.f32461e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = this.f32462f.f32469g;
                C10953a c10953a = new C10953a(null);
                this.f32461e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c10953a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            SocialAccountProfile m25474a = this.f32462f.f32471i.m25474a((C23244l0) obj);
            String str = "Successfully parsed profile: " + m25474a;
            AbstractC10951d abstractC10951d = (AbstractC10951d) this.f32462f.f57683a;
            if (abstractC10951d != null) {
                abstractC10951d.mo25483q(m25474a, false);
            }
        } catch (Exception e) {
            AbstractC10951d abstractC10951d2 = (AbstractC10951d) this.f32462f.f57683a;
            if (abstractC10951d2 != null) {
                abstractC10951d2.mo25483q(null, true);
            }
        }
        return s.a;
    }
}
