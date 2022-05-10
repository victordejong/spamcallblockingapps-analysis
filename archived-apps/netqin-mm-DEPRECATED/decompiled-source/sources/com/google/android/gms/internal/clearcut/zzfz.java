package com.google.android.gms.internal.clearcut;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfz.class */
public class zzfz {

    /* renamed from: a */
    public volatile int f29286a = -1;

    /* renamed from: a */
    public static final void m10618a(zzfz zzfzVar, byte[] bArr, int i, int i2) {
        try {
            zzfs a = zzfs.m10643a(bArr, 0, i2);
            zzfzVar.mo10563a(a);
            a.m10657a();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: a */
    public void mo10563a(zzfs zzfsVar) throws IOException {
    }

    /* renamed from: c */
    public final int m10617c() {
        int e = mo10562e();
        this.f29286a = e;
        return e;
    }

    /* renamed from: e */
    public int mo10562e() {
        return 0;
    }

    /* renamed from: g */
    public zzfz clone() throws CloneNotSupportedException {
        return (zzfz) super.clone();
    }

    public String toString() {
        return zzga.m10616a(this);
    }
}
