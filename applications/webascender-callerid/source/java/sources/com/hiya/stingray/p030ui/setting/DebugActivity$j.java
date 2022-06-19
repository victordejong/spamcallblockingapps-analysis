package com.hiya.stingray.p030ui.setting;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Button;
import com.hiya.stingray.o;
import com.hiya.stingray.ui.SplashActivity;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$j.class */
final class DebugActivity$j implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4888f;

    DebugActivity$j(DebugActivity debugActivity) {
        this.f4888f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f4888f;
        Intent intent = new Intent((Context) this.f4888f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.DIAL");
        Button button = (Button) this.f4888f.O(o.k0);
        k.c(button, "deepLinkActionDial");
        intent.setData(Uri.parse(button.getText().toString()));
        debugActivity.startActivity(intent);
    }
}
