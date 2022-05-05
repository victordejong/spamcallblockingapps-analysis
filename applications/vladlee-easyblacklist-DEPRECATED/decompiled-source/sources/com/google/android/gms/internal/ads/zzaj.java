package com.google.android.gms.internal.ads;

import com.crashlytics.android.core.CodedOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaj.class */
public final class zzaj {

    /* renamed from: e */
    private static final Comparator<byte[]> f10942e = new C1779by();

    /* renamed from: a */
    private final List<byte[]> f10943a = new ArrayList();

    /* renamed from: b */
    private final List<byte[]> f10944b = new ArrayList(64);

    /* renamed from: c */
    private int f10945c = 0;

    /* renamed from: d */
    private final int f10946d = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    public zzaj(int i) {
    }

    /* renamed from: a */
    private final void m4384a() {
        synchronized (this) {
            while (this.f10945c > this.f10946d) {
                byte[] remove = this.f10943a.remove(0);
                this.f10944b.remove(remove);
                this.f10945c -= remove.length;
            }
        }
    }

    public final void zza(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f10946d) {
                    this.f10943a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f10944b, bArr, f10942e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f10944b.add(i, bArr);
                    this.f10945c += bArr.length;
                    m4384a();
                }
            }
        }
    }

    public final byte[] zzc(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f10944b.size(); i2++) {
                byte[] bArr = this.f10944b.get(i2);
                if (bArr.length >= i) {
                    this.f10945c -= bArr.length;
                    this.f10944b.remove(i2);
                    this.f10943a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
