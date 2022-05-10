package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.common.collect.RegularImmutableMap;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzi.class */
public final class zzi {
    /* renamed from: a */
    public static long m11997a(ByteBuffer byteBuffer) {
        m11993c(byteBuffer);
        return m11996a(byteBuffer, byteBuffer.position() + 16);
    }

    /* renamed from: a */
    public static long m11996a(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    /* renamed from: a */
    public static Pair<ByteBuffer, Long> m11999a(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> a = m11998a(randomAccessFile, 0);
        return a != null ? a : m11998a(randomAccessFile, (int) RegularImmutableMap.SHORT_MASK);
    }

    /* renamed from: a */
    public static Pair<ByteBuffer, Long> m11998a(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        if (i < 0 || i > 65535) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("maxCommentSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, length - 22)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        m11993c(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, (int) RegularImmutableMap.SHORT_MASK);
            for (int i4 = 0; i4 < min; i4++) {
                int i5 = i3 - i4;
                if (allocate.getInt(i5) == 101010256 && (allocate.getShort(i5 + 20) & 65535) == i4) {
                    i2 = i5;
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i2));
    }

    /* renamed from: a */
    public static void m11995a(ByteBuffer byteBuffer, long j) {
        m11993c(byteBuffer);
        int position = byteBuffer.position();
        if (j < 0 || j > 4294967295L) {
            StringBuilder sb = new StringBuilder(47);
            sb.append("uint32 value of out range: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
        byteBuffer.putInt(byteBuffer.position() + position + 16, (int) j);
    }

    /* renamed from: b */
    public static long m11994b(ByteBuffer byteBuffer) {
        m11993c(byteBuffer);
        return m11996a(byteBuffer, byteBuffer.position() + 12);
    }

    /* renamed from: c */
    public static void m11993c(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }
}
