package com.hiya.stingray.p000ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.manager.i2;
import com.hiya.stingray.ui.SplashActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$m */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$m.class */
final class DebugActivity$m implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f102f;

    DebugActivity$m(DebugActivity debugActivity) {
        this.f102f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f102f;
        Intent intent = new Intent((Context) this.f102f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(i2.a.KEYPAD.getUri(this.f102f));
        debugActivity.startActivity(intent);
    }
}
