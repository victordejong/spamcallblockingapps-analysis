package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.ey */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ey.class */
public final class C3054ey extends AbstractC3066fc {

    /* renamed from: e */
    public int f4826e = 0;

    public C3054ey(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
        if (((AbstractC3066fc) this).f4874c == null) {
            ((AbstractC3066fc) this).f4874c = new C3088fj(context);
        }
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        if (fjVar != null) {
            fjVar.f4969a = this;
        }
        setAutoPlay(xVar.mo32279k().f4111b.f4147b.f4454t);
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33121a(String str, float f, float f2) {
        super.mo33121a(str, f, f2);
        if (f2 > 0.0f) {
            this.f4826e |= 1;
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    public final int getViewParams() {
        if (this.f4826e == 0) {
            this.f4826e = getAdController().m33525e().f4902j;
        }
        return this.f4826e;
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public final void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(((AbstractC3066fc) this).f4874c.f4972d, layoutParams);
        showProgressDialog();
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    public final void setAutoPlay(boolean z) {
        super.setAutoPlay(true);
    }
}
