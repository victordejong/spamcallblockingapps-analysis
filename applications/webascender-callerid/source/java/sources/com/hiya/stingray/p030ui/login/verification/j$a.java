package com.hiya.stingray.p030ui.login.verification;

import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$a.class */
public final class j$a {
    private j$a() {
    }

    public /* synthetic */ j$a(g gVar) {
        this();
    }

    /* renamed from: a */
    public final j m1180a(boolean z, VerificationActivity$b verificationActivity$b) {
        k.g(verificationActivity$b, Payload.SOURCE);
        j jVar = new j();
        Bundle bundle = new Bundle();
        bundle.putBoolean("key_verify_code", z);
        bundle.putSerializable("EXTRA_SOURCE", verificationActivity$b);
        jVar.setArguments(bundle);
        return jVar;
    }
}
