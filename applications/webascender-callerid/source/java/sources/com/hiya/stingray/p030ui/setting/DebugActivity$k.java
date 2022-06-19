package com.hiya.stingray.p030ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.manager.i2;
import com.hiya.stingray.ui.SplashActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$k */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$k.class */
final class DebugActivity$k implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4890f;

    DebugActivity$k(DebugActivity debugActivity) {
        this.f4890f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f4890f;
        Intent intent = new Intent((Context) this.f4890f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(i2.a.PREMIUM_INFO.getUri(this.f4890f));
        debugActivity.startActivity(intent);
    }
}
