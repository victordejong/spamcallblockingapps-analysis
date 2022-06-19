package p193e.p194a.p619d.p652q;

import com.truecaller.voip.VoipState;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p652q.C11746b;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.LegacyVoipCallConnection$listenServiceStates$1", f = "LegacyVoipCallConnection.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.q.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/h.class */
public final class C11754h extends i implements p<C11730l, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34550e;

    /* renamed from: f */
    public final /* synthetic */ C11746b f34551f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11754h(C11746b c11746b, d dVar) {
        super(2, dVar);
        this.f34551f = c11746b;
    }

    /* renamed from: i */
    public final d<s> m24047i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11754h c11754h = new C11754h(this.f34551f, dVar);
        c11754h.f34550e = obj;
        return c11754h;
    }

    /* renamed from: k */
    public final Object m24046k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11746b c11746b = this.f34551f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        C11730l c11730l = (C11730l) obj;
        StringBuilder m8728C = C22128a.m8728C("New state is received ");
        m8728C.append(c11730l.f34449a);
        m8728C.toString();
        int ordinal = c11730l.f34449a.ordinal();
        if (ordinal != 4) {
            if (ordinal == 6) {
                C11746b.ServiceConnectionC11747a serviceConnectionC11747a = c11746b.f34529b;
                if (serviceConnectionC11747a != null) {
                    serviceConnectionC11747a.f34538a = false;
                }
                Objects.requireNonNull(c11746b);
                c11746b.m24057e(LegacyVoipService.class, new C11751e(c11746b), new C11752f(c11746b));
            } else if (ordinal == 9) {
                c11746b.setActive();
            }
        } else if (!c11746b.f34537j) {
            c11746b.setRinging();
        }
        c11746b.setConnectionCapabilities(c11730l.f34449a == VoipState.ONGOING ? 1 : 2);
        return sVar;
    }

    /* renamed from: s */
    public final Object m24045s(Object obj) {
        C25225a.m3932a3(obj);
        C11730l c11730l = (C11730l) this.f34550e;
        StringBuilder m8728C = C22128a.m8728C("New state is received ");
        m8728C.append(c11730l.f34449a);
        m8728C.toString();
        int ordinal = c11730l.f34449a.ordinal();
        if (ordinal == 4) {
            C11746b c11746b = this.f34551f;
            if (!c11746b.f34537j) {
                c11746b.setRinging();
            }
        } else if (ordinal == 6) {
            C11746b c11746b2 = this.f34551f;
            C11746b.ServiceConnectionC11747a serviceConnectionC11747a = c11746b2.f34529b;
            if (serviceConnectionC11747a != null) {
                serviceConnectionC11747a.f34538a = false;
            }
            Objects.requireNonNull(c11746b2);
            c11746b2.m24057e(LegacyVoipService.class, new C11751e(c11746b2), new C11752f(c11746b2));
        } else if (ordinal == 9) {
            this.f34551f.setActive();
        }
        this.f34551f.setConnectionCapabilities(c11730l.f34449a == VoipState.ONGOING ? 1 : 2);
        return s.a;
    }
}
