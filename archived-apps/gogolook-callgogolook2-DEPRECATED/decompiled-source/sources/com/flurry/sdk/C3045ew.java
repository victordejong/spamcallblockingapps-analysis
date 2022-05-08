package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.ew */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ew.class */
public class C3045ew extends AbstractC3066fc {

    /* renamed from: e */
    public static final String f4796e = C3045ew.class.getName();

    /* renamed from: f */
    public int f4797f = 0;

    /* renamed from: g */
    public AtomicBoolean f4798g = new AtomicBoolean(false);

    public C3045ew(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
        if (((AbstractC3066fc) this).f4874c == null) {
            ((AbstractC3066fc) this).f4874c = new C3088fj(context);
        }
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        if (fjVar != null) {
            fjVar.f4969a = this;
        }
        setAutoPlay(xVar.mo32279k().f4111b.f4147b.f4454t);
        setVideoUri(m33158c(xVar.mo32279k().m33528c().f4367b));
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33123a() {
        m33165a(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap());
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: a */
    public final void mo33166a(int i) {
        super.mo33166a(i);
        if (!this.f4798g.get()) {
            String str = f4796e;
            C3356jq.m32615a(3, str, "Showing progress bar again. Cant play video as its not prepared yet." + this.f4798g.get());
            showProgressDialog();
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33122a(String str) {
        super.mo33122a(str);
        m33170C();
        this.f4798g.set(true);
        String str2 = f4796e;
        C3356jq.m32615a(3, str2, "Video prepared onVideoPrepared." + this.f4798g.get());
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33121a(String str, float f, float f2) {
        AbstractC3066fc.m33169D();
        super.mo33121a(str, f, f2);
        if (f2 > 3.0f) {
            this.f4797f |= 2;
            this.f4797f &= -9;
        }
        long j = getAdController().f4111b.f4147b.f4446l;
        if (f > 15000.0f) {
            j = getAdController().f4111b.f4147b.f4447m;
        }
        if (f2 > ((float) j)) {
            this.f4797f |= 1;
        }
        if (!this.f4798g.get()) {
            this.f4798g.set(true);
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33119b() {
        this.f4797f &= -9;
        super.mo33119b();
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: c */
    public final void mo33160c() {
        super.mo33160c();
        this.f4798g.set(false);
        String str = f4796e;
        C3356jq.m32615a(3, str, "Video prepared suspendVideo." + this.f4798g.get());
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void cleanupLayout() {
        super.cleanupLayout();
        this.f4798g.set(false);
        String str = f4796e;
        C3356jq.m32615a(3, str, "Video prepared cleanupLayout." + this.f4798g.get());
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    public int getViewParams() {
        if (this.f4797f == 0) {
            this.f4797f = getAdController().m33525e().f4902j;
        }
        return this.f4797f;
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(((AbstractC3066fc) this).f4874c.f4972d, layoutParams);
        showProgressDialog();
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    public void setAutoPlay(boolean z) {
        super.setAutoPlay(z);
        if (getAdController().m33525e().f4893a <= 3) {
            this.f4797f = z ? this.f4797f : this.f4797f | 8;
        }
    }
}
