package p193e.p194a.p619d.p666y.p668b;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
@e(c = "com.truecaller.voip.notification.inapp.VoipInAppNotificationPresenter$startOngoingGroupCallStatusJob$1", f = "VoipInAppNotificationPresenter.kt", l = {Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED}, m = "invokeSuspend")
/* renamed from: e.a.d.y.b.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/g.class */
public final class C12305g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35944e;

    /* renamed from: f */
    public final /* synthetic */ C12307h f35945f;

    /* renamed from: g */
    public final /* synthetic */ f f35946g;

    /* renamed from: h */
    public final /* synthetic */ long f35947h;

    /* renamed from: e.a.d.y.b.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/b/g$a.class */
    public static final class C12306a implements g<String> {
        public C12306a() {
            C12305g.this = r4;
        }

        /* renamed from: a */
        public Object m23279a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            String str = (String) obj;
            C12305g c12305g = C12305g.this;
            AbstractC12300c abstractC12300c = (AbstractC12300c) c12305g.f35945f.f57683a;
            if (abstractC12300c != null) {
                abstractC12300c.mo23296I(str, c12305g.f35947h);
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12305g(C12307h c12307h, f fVar, long j, d dVar) {
        super(2, dVar);
        this.f35945f = c12307h;
        this.f35946g = fVar;
        this.f35947h = j;
    }

    /* renamed from: i */
    public final d<s> m23282i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12305g(this.f35945f, this.f35946g, this.f35947h, dVar);
    }

    /* renamed from: k */
    public final Object m23281k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12305g(this.f35945f, this.f35946g, this.f35947h, dVar).m23280s(s.a);
    }

    /* renamed from: s */
    public final Object m23280s(Object obj) {
        a aVar = a.a;
        int i = this.f35944e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f35946g;
            C12306a c12306a = new C12306a();
            this.f35944e = 1;
            if (fVar.c(c12306a, this) == aVar) {
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
