package p193e.p194a.p619d.p666y.p668b;

import android.view.View;
import android.widget.Chronometer;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.y.b.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/i.class */
public final class C12308i extends m implements a<Chronometer> {

    /* renamed from: b */
    public final /* synthetic */ VoipInAppNotificationView f35953b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12308i(VoipInAppNotificationView voipInAppNotificationView) {
        super(0);
        this.f35953b = voipInAppNotificationView;
    }

    public Object invoke() {
        View findViewById = this.f35953b.findViewById(C4781R.C4783id.chronometer);
        l.d(findViewById, "findViewById(R.id.chronometer)");
        return (Chronometer) findViewById;
    }
}
