package com.hiya.stingray.p000ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.manager.i2;
import com.hiya.stingray.ui.SplashActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$l */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$l.class */
final class DebugActivity$l implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f213f;

    DebugActivity$l(DebugActivity debugActivity) {
        this.f213f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f213f;
        Intent intent = new Intent((Context) this.f213f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(i2.a.UPSELL.getUri(this.f213f));
        debugActivity.startActivity(intent);
    }
}
