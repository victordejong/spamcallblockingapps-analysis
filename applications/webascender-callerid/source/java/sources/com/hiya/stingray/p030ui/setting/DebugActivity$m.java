package com.hiya.stingray.p030ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.manager.i2;
import com.hiya.stingray.ui.SplashActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$m */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$m.class */
final class DebugActivity$m implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4894f;

    DebugActivity$m(DebugActivity debugActivity) {
        this.f4894f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f4894f;
        Intent intent = new Intent((Context) this.f4894f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(i2.a.UPSELL_PROMO.getUri(this.f4894f));
        debugActivity.startActivity(intent);
    }
}
