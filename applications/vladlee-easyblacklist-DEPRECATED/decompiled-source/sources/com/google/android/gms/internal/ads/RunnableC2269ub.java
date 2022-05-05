package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ub */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ub.class */
public final class RunnableC2269ub implements Runnable {
    private RunnableC2269ub() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ RunnableC2269ub(byte b) {
        this();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0019 -> B:3:0x0009). Please submit an issue!!! */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = C2249ti.f10502c = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
        } catch (Throwable th) {
            C2249ti.f10500a.countDown();
            throw th;
        }
        C2249ti.f10500a.countDown();
    }
}
