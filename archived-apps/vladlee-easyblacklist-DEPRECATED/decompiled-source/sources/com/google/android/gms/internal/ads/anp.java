package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anp.class */
final class anp extends anm {

    /* renamed from: aA */
    public final List<ano> f7911aA = new ArrayList();

    /* renamed from: aB */
    public final List<anp> f7912aB = new ArrayList();

    /* renamed from: az */
    public final long f7913az;

    public anp(int i, long j) {
        super(i);
        this.f7913az = j;
    }

    /* renamed from: d */
    public final ano m4843d(int i) {
        int size = this.f7911aA.size();
        for (int i2 = 0; i2 < size; i2++) {
            ano anoVar = this.f7911aA.get(i2);
            if (anoVar.f7905ay == i) {
                return anoVar;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final anp m4842e(int i) {
        int size = this.f7912aB.size();
        for (int i2 = 0; i2 < size; i2++) {
            anp anpVar = this.f7912aB.get(i2);
            if (anpVar.f7905ay == i) {
                return anpVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.anm
    public final String toString() {
        String c = m4849c(this.f7905ay);
        String arrays = Arrays.toString(this.f7911aA.toArray());
        String arrays2 = Arrays.toString(this.f7912aB.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
        sb.append(c);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
