package com.hiya.stingray.p030ui.login.verification;

import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.referrer.Payload;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.VerificationActivity$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/VerificationActivity$a.class */
public final class VerificationActivity$a {
    private VerificationActivity$a() {
    }

    public /* synthetic */ VerificationActivity$a(g gVar) {
        this();
    }

    /* renamed from: a */
    public final Intent m1211a(Context context, VerificationActivity$b verificationActivity$b) {
        k.g(context, "context");
        k.g(verificationActivity$b, Payload.SOURCE);
        Intent intent = new Intent(context, VerificationActivity.class);
        intent.putExtra("EXTRA_SOURCE", verificationActivity$b);
        return intent;
    }
}
