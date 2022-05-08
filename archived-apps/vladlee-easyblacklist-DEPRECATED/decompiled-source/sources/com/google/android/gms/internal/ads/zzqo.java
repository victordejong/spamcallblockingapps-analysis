package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqo.class */
public abstract class zzqo {

    /* renamed from: b */
    private static MessageDigest f15401b;

    /* renamed from: a */
    protected Object f15402a = new Object();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0037 -> B:14:0x0024). Please submit an issue!!! */
    /* renamed from: a */
    public final MessageDigest m3100a() {
        synchronized (this.f15402a) {
            if (f15401b != null) {
                return f15401b;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    f15401b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                }
            }
            return f15401b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] zzbv(String str);
}
