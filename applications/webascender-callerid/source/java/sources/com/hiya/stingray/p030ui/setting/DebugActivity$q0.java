package com.hiya.stingray.p030ui.setting;

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
    final /* synthetic */ DebugActivity f4903f;

    DebugActivity$q0(DebugActivity debugActivity) {
        this.f4903f = debugActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4903f.n0().d();
        DebugActivity debugActivity = this.f4903f;
        Intent intent = new Intent((Context) this.f4903f, (Class<?>) SplashActivity.class);
        EditText editText = (EditText) this.f4903f.O(o.c3);
        k.c(editText, "promoPremiumDuration");
        Long k = m.k(editText.getText().toString());
        intent.putExtra("promo_premium_duration", String.valueOf((k != null ? k.longValue() : true) == true ? 1L : 0L));
        intent.putExtra("promo_premium_token", "7d8hA3Yx4GE5FQl710YaEo6r95YUTZrg");
        debugActivity.startActivity(intent);
    }
}
