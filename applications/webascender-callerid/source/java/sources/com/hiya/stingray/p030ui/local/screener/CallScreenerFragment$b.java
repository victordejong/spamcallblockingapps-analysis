package com.hiya.stingray.p030ui.local.screener;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.local.screener.CallScreenerFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/screener/CallScreenerFragment$b.class */
final class CallScreenerFragment$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ CallScreenerFragment f4748a;

    CallScreenerFragment$b(CallScreenerFragment callScreenerFragment) {
        this.f4748a = callScreenerFragment;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f4748a.h1().u(z);
    }
}
