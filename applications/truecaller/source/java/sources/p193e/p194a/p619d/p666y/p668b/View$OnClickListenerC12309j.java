package p193e.p194a.p619d.p666y.p668b;

import android.view.View;
import com.truecaller.voip.notification.inapp.ServiceType;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import p193e.p194a.p619d.AbstractC11705f;
import s1.i;
/* renamed from: e.a.d.y.b.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/j.class */
public final class View$OnClickListenerC12309j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ VoipInAppNotificationView f35954a;

    public View$OnClickListenerC12309j(VoipInAppNotificationView voipInAppNotificationView) {
        this.f35954a = voipInAppNotificationView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ServiceType serviceType;
        C12307h c12307h = (C12307h) this.f35954a.getPresenter();
        AbstractC12300c abstractC12300c = (AbstractC12300c) c12307h.f57683a;
        if (abstractC12300c == null || (serviceType = abstractC12300c.getServiceType()) == null) {
            return;
        }
        int ordinal = serviceType.ordinal();
        if (ordinal == 0) {
            AbstractC12300c abstractC12300c2 = (AbstractC12300c) c12307h.f57683a;
            if (abstractC12300c2 == null) {
                return;
            }
            abstractC12300c2.mo23294l0();
        } else if (ordinal != 1) {
            if (ordinal != 2) {
                throw new i();
            }
            ((AbstractC11705f) c12307h.f35952g.get()).mo24177p();
        } else {
            AbstractC12300c abstractC12300c3 = (AbstractC12300c) c12307h.f57683a;
            if (abstractC12300c3 == null) {
                return;
            }
            abstractC12300c3.mo23295g0();
        }
    }
}
