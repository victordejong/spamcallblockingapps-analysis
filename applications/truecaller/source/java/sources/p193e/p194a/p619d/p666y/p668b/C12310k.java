package p193e.p194a.p619d.p666y.p668b;

import android.view.View;
import android.widget.TextView;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.y.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/k.class */
public final class C12310k extends m implements a<TextView> {

    /* renamed from: b */
    public final /* synthetic */ VoipInAppNotificationView f35955b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12310k(VoipInAppNotificationView voipInAppNotificationView) {
        super(0);
        this.f35955b = voipInAppNotificationView;
    }

    public Object invoke() {
        View findViewById = this.f35955b.findViewById(C4781R.C4783id.text_name);
        l.d(findViewById, "findViewById(R.id.text_name)");
        return (TextView) findViewById;
    }
}
