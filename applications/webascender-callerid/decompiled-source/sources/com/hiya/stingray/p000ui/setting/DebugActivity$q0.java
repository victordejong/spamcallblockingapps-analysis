package com.hiya.stingray.p000ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import com.hiya.stingray.o;
import com.hiya.stingray.ui.SplashActivity;
import kotlin.c0.m;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$q0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$q0.class */
final class DebugActivity$q0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f224f;

    DebugActivity$q0(DebugActivity debugActivity) {
        this.f224f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f224f.n0().d();
        DebugActivity debugActivity = this.f224f;
        Intent intent = new Intent((Context) this.f224f, (Class<?>) SplashActivity.class);
        EditText editText = (EditText) this.f224f.O(o.c3);
        k.c(editText, "promoPremiumDuration");
        Long k = m.k(editText.getText().toString());
        intent.putExtra("promo_premium_duration", String.valueOf(k != null ? k.longValue() : 3L));
        intent.putExtra("promo_premium_token", "7d8hA3Yx4GE5FQl710YaEo6r95YUTZrg");
        debugActivity.startActivity(intent);
    }
}
