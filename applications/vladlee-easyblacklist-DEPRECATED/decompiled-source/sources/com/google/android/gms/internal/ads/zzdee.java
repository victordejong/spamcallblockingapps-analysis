package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdee.class */
public final class zzdee {

    /* renamed from: a */
    private final String f14243a;

    /* renamed from: b */
    private final aba f14244b;

    /* renamed from: c */
    private aba f14245c;

    /* renamed from: d */
    private boolean f14246d;

    private zzdee(String str) {
        this.f14244b = new aba((byte) 0);
        this.f14245c = this.f14244b;
        this.f14246d = false;
        this.f14243a = (String) zzdei.checkNotNull(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdee(String str, byte b) {
        this(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f14243a);
        sb.append('{');
        aba abaVar = this.f14244b.f7149b;
        String str = "";
        while (abaVar != null) {
            Object obj = abaVar.f7148a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            abaVar = abaVar.f7149b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzdee zzaa(@NullableDecl Object obj) {
        aba abaVar = new aba((byte) 0);
        this.f14245c.f7149b = abaVar;
        this.f14245c = abaVar;
        abaVar.f7148a = obj;
        return this;
    }
}
