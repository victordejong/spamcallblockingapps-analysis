package p193e.p194a.p717f.p733y;

import android.app.NotificationChannel;
import android.os.Build;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.service.CallState;
import com.truecaller.incallui.service.ServiceUIEvent;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p734z.C13817f0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$listenToCallStateChanges$1", f = "InCallUIServicePresenter.kt", l = {236}, m = "invokeSuspend")
/* renamed from: e.a.f.y.p */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/p.class */
public final class C13785p extends i implements p<CallState, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39994e;

    /* renamed from: f */
    public int f39995f;

    /* renamed from: g */
    public final /* synthetic */ C13778o f39996g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13785p(C13778o c13778o, d dVar) {
        super(2, dVar);
        this.f39996g = c13778o;
    }

    /* renamed from: i */
    public final d<s> m21085i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13785p c13785p = new C13785p(this.f39996g, dVar);
        c13785p.f39994e = obj;
        return c13785p;
    }

    /* renamed from: k */
    public final Object m21084k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13785p c13785p = new C13785p(this.f39996g, dVar);
        c13785p.f39994e = obj;
        return c13785p.m21083s(s.a);
    }

    /* renamed from: s */
    public final Object m21083s(Object obj) {
        AbstractC13773k abstractC13773k;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f39995f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            CallState callState = (CallState) this.f39994e;
            this.f39996g.f39964s.mo21038b(callState);
            int ordinal = callState.ordinal();
            if (ordinal == 0) {
                AbstractC13773k abstractC13773k2 = (AbstractC13773k) this.f39996g.f57683a;
                if (abstractC13773k2 != null) {
                    abstractC13773k2.mo21158m();
                }
            } else if (ordinal != 2) {
                Integer num = null;
                if (ordinal == 3) {
                    C13778o c13778o = this.f39996g;
                    c13778o.f39940A.mo14506s();
                    s1.a.a.a.v0.f.d.w2(c13778o, (f) null, (j0) null, new C13777n(c13778o, null), 3, (Object) null);
                    c13778o.m21122Mj();
                } else if (ordinal != 4 && ordinal != 5) {
                    return sVar;
                } else {
                    C13778o c13778o2 = this.f39996g;
                    c13778o2.m21119Oj();
                    if (c13778o2.f39953h && (abstractC13773k = (AbstractC13773k) c13778o2.f57683a) != null) {
                        abstractC13773k.mo21174B();
                    }
                    c13778o2.f39940A.mo14506s();
                    if (!c13778o2.f39966u.m21046b()) {
                        AbstractC13773k abstractC13773k3 = (AbstractC13773k) c13778o2.f57683a;
                        if (abstractC13773k3 != null) {
                            abstractC13773k3.mo21147x();
                        }
                    } else {
                        C13817f0 c13817f0 = c13778o2.f39966u;
                        Objects.requireNonNull(c13817f0);
                        boolean z = true;
                        if (Build.VERSION.SDK_INT >= 26) {
                            NotificationChannel mo19423c = c13817f0.f40077a.mo19423c("phone_calls");
                            if (mo19423c != null) {
                                num = Integer.valueOf(mo19423c.getImportance());
                            }
                            z = num == null ? true : num.intValue() != 0;
                        }
                        if (!z) {
                            AbstractC13773k abstractC13773k4 = (AbstractC13773k) c13778o2.f57683a;
                            if (abstractC13773k4 != null) {
                                abstractC13773k4.mo21147x();
                            }
                        } else {
                            AbstractC13773k abstractC13773k5 = (AbstractC13773k) c13778o2.f57683a;
                            if (abstractC13773k5 != null) {
                                abstractC13773k5.mo21149v(C4013R.string.incallui_notification_ongoing_content, c13778o2.f39961p.mo21202e(), c13778o2.m21124Kj());
                            }
                            c13778o2.f39956k.offer(ServiceUIEvent.ONGOING_NOTIFICATION_SHOWN);
                            c13778o2.m21123Lj();
                            c13778o2.m21108Xj();
                        }
                    }
                    c13778o2.m21122Mj();
                }
            } else {
                C13778o c13778o3 = this.f39996g;
                this.f39995f = 1;
                if (c13778o3.m21117Pj(this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f39996g.m21109Wj();
        this.f39996g.m21120Nj();
        return sVar;
    }
}
