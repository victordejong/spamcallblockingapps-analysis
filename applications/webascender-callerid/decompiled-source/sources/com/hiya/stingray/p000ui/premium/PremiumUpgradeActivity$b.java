package com.hiya.stingray.p000ui.premium;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.ui.local.MainActivity;
/* renamed from: com.hiya.stingray.ui.premium.PremiumUpgradeActivity$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/PremiumUpgradeActivity$b.class */
final class PremiumUpgradeActivity$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ PremiumUpgradeActivity f141f;

    PremiumUpgradeActivity$b(PremiumUpgradeActivity premiumUpgradeActivity) {
        this.f141f = premiumUpgradeActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PremiumUpgradeActivity premiumUpgradeActivity = this.f141f;
        Intent intent = new Intent((Context) this.f141f, (Class<?>) MainActivity.class);
        intent.addFlags(268468224);
        premiumUpgradeActivity.startActivity(intent);
        this.f141f.P().m1120a();
    }
}
