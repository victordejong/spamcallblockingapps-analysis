package com.flurry.sdk;

import android.widget.Button;
/* renamed from: com.flurry.sdk.t */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/t.class */
public final class C3504t extends AbstractC3343jk {

    /* renamed from: a */
    public Button f6050a;

    /* renamed from: b */
    public int f6051b;

    /* renamed from: c */
    public EnumC3505a f6052c;

    /* renamed from: com.flurry.sdk.t$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/t$a.class */
    public enum EnumC3505a {
        CALL_TO_ACTION(0),
        CLICK_TO_CALL(1);
        

        /* renamed from: c */
        public int f6056c;

        EnumC3505a(int i) {
            this.f6056c = i;
        }
    }

    public C3504t(EnumC3505a aVar) {
        super("com.flurry.android.impl.ads.RegisterCTAViewEvent");
        this.f6052c = aVar;
    }
}
