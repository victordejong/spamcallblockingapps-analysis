package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool.class */
public class ByteArrayPool {

    /* renamed from: e */
    public static final Comparator<byte[]> f35130e = new C9002a();

    /* renamed from: a */
    public final List<byte[]> f35131a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f35132b = new ArrayList(64);

    /* renamed from: c */
    public int f35133c = 0;

    /* renamed from: d */
    public final int f35134d;

    /* renamed from: com.mopub.volley.toolbox.ByteArrayPool$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool$a.class */
    public static final class C9002a implements Comparator<byte[]> {
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public ByteArrayPool(int i) {
        this.f35134d = i;
    }

    /* renamed from: a */
    public final void m3728a() {
        synchronized (this) {
            while (this.f35133c > this.f35134d) {
                byte[] remove = this.f35131a.remove(0);
                this.f35132b.remove(remove);
                this.f35133c -= remove.length;
            }
        }
    }

    public byte[] getBuf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f35132b.size(); i2++) {
                byte[] bArr = this.f35132b.get(i2);
                if (bArr.length >= i) {
                    this.f35133c -= bArr.length;
                    this.f35132b.remove(i2);
                    this.f35131a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    public void returnBuf(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f35134d) {
                    this.f35131a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f35132b, bArr, f35130e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f35132b.add(i, bArr);
                    this.f35133c += bArr.length;
                    m3728a();
                }
            }
        }
    }
}
