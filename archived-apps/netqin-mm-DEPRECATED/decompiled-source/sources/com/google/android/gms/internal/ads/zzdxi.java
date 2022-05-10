package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Deque;
import p131c.p161d.p170b.p224d.p252g.p253a.i10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxi.class */
public final class zzdxi {
    static {
        new i10();
    }

    /* renamed from: a */
    public static byte[] m13072a(InputStream inputStream) throws IOException {
        zzdwd.m13096a(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        while (i2 < 2147483639) {
            int min = Math.min(i, 2147483639 - i2);
            byte[] bArr = new byte[min];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < min) {
                int read = inputStream.read(bArr, i3, min - i3);
                if (read == -1) {
                    return m13071a(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            i = zzdxn.m13070a(i, 2);
        }
        if (inputStream.read() == -1) {
            return m13071a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: a */
    public static byte[] m13071a(Deque<byte[]> deque, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] removeFirst = deque.removeFirst();
            int min = Math.min(i2, removeFirst.length);
            System.arraycopy(removeFirst, 0, bArr, i - i2, min);
            i2 -= min;
        }
        return bArr;
    }
}
