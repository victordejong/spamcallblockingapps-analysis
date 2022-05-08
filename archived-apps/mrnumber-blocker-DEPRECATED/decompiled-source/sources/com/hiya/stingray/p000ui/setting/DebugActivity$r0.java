package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.notification.NotificationReceiver;
import com.hiya.stingray.notification.v;
import kotlin.l;
import kotlin.p;
import kotlin.s.b0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$r0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$r0.class */
final class DebugActivity$r0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f113f;

    DebugActivity$r0(DebugActivity debugActivity) {
        this.f113f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f113f;
        debugActivity.sendBroadcast(NotificationReceiver.d.b(debugActivity, v.SUBSCRIPTION_EXPIRE, b0.h(new l[]{p.a("subscriptionEventType", "SubscriptionInGracePeriod"), p.a("subscriptionId", "1234")})));
    }
}
