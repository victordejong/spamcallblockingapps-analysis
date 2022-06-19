package com.hiya.stingray.p030ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.manager.i2;
import com.hiya.stingray.ui.SplashActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$n */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$n.class */
final class DebugActivity$n implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4896f;

    DebugActivity$n(DebugActivity debugActivity) {
        this.f4896f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f4896f;
        Intent intent = new Intent((Context) this.f4896f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(i2.a.KEYPAD.getUri(this.f4896f));
        debugActivity.startActivity(intent);
    }
}
