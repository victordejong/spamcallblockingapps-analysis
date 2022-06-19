package p193e.p194a.p619d.p666y.p668b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.truecaller.voip.notification.inapp.ServiceType;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p622b.p623a.AbstractC11105d;
import p193e.p194a.p619d.p622b.p623a.BinderC11121s;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p622b.p625b.BinderC11145d;
import p193e.p194a.p619d.p670z.BinderC12331a;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.y.b.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/l.class */
public final class ServiceConnectionC12311l implements ServiceConnection {

    /* renamed from: a */
    public ComponentName f35956a;

    /* renamed from: b */
    public final /* synthetic */ VoipInAppNotificationView f35957b;

    public ServiceConnectionC12311l(VoipInAppNotificationView voipInAppNotificationView) {
        this.f35957b = voipInAppNotificationView;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = "Voip service connected to " + componentName;
        VoipInAppNotificationView.m34323g1(this.f35957b);
        if (iBinder == null) {
            return;
        }
        if (this.f35956a != null) {
            StringBuilder m8728C = C22128a.m8728C("Already connected to the service: ");
            m8728C.append(this.f35956a);
            m8728C.toString();
            return;
        }
        this.f35956a = componentName;
        if (iBinder instanceof BinderC11121s) {
            VoipInAppNotificationView voipInAppNotificationView = this.f35957b;
            voipInAppNotificationView.f16381B = ServiceType.ONGOING;
            AbstractC12299b presenter = voipInAppNotificationView.getPresenter();
            AbstractC11105d abstractC11105d = ((BinderC11121s) iBinder).f32881a;
            C12307h c12307h = (C12307h) presenter;
            Objects.requireNonNull(c12307h);
            l.e(abstractC11105d, "binderView");
            C19291g.m13599P0(c12307h, abstractC11105d.mo25232K1(), new C12303e(c12307h, abstractC11105d, null));
        } else if (iBinder instanceof BinderC11145d) {
            VoipInAppNotificationView voipInAppNotificationView2 = this.f35957b;
            voipInAppNotificationView2.f16381B = ServiceType.INCOMING;
            AbstractC12299b presenter2 = voipInAppNotificationView2.getPresenter();
            AbstractC11147f abstractC11147f = ((BinderC11145d) iBinder).f32965a;
            C12307h c12307h2 = (C12307h) presenter2;
            Objects.requireNonNull(c12307h2);
            l.e(abstractC11147f, "binderPresenter");
            C19291g.m13599P0(c12307h2, abstractC11147f.mo25125K1(), new C12304f(c12307h2, null));
        } else if (!(iBinder instanceof BinderC12331a)) {
        } else {
            VoipInAppNotificationView voipInAppNotificationView3 = this.f35957b;
            voipInAppNotificationView3.f16381B = ServiceType.GROUP;
            C12307h c12307h3 = (C12307h) voipInAppNotificationView3.getPresenter();
            p1 p1Var = c12307h3.f35949d;
            if (p1Var != null) {
                d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            c12307h3.f35949d = d.w2(c12307h3, (f) null, (j0) null, new C12301d(c12307h3, null), 3, (Object) null);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        String str = "Voip service is disconnected. Component name: " + componentName;
        VoipInAppNotificationView.m34323g1(this.f35957b);
        if (!l.a(this.f35956a, componentName)) {
            return;
        }
        C12307h c12307h = (C12307h) this.f35957b.getPresenter();
        p1 p1Var = c12307h.f35949d;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        p1 p1Var2 = c12307h.f35950e;
        if (p1Var2 != null) {
            d.T(p1Var2, (CancellationException) null, 1, (Object) null);
        }
        AbstractC12300c abstractC12300c = (AbstractC12300c) c12307h.f57683a;
        if (abstractC12300c != null) {
            abstractC12300c.mo23298F0();
        }
        this.f35956a = null;
        this.f35957b.m34322h1();
    }
}
