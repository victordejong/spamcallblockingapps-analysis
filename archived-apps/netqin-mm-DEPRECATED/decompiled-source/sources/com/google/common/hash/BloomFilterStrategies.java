package com.google.common.hash;

import com.google.common.hash.BloomFilter;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p270d.AbstractC5050i;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/BloomFilterStrategies.class */
public enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 { // from class: com.google.common.hash.BloomFilterStrategies.1
        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, C7680a aVar) {
            long b = aVar.m7948b();
            long asLong = Hashing.m7944a().hashObject(t, funnel).asLong();
            int i2 = (int) asLong;
            int i3 = (int) (asLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                int i6 = i5;
                if (i5 < 0) {
                    i6 = i5 ^ (-1);
                }
                if (!aVar.m7951a(i6 % b)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, C7680a aVar) {
            long b = aVar.m7948b();
            long asLong = Hashing.m7944a().hashObject(t, funnel).asLong();
            int i2 = (int) asLong;
            int i3 = (int) (asLong >>> 32);
            boolean z = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                int i6 = i5;
                if (i5 < 0) {
                    i6 = i5 ^ (-1);
                }
                z |= aVar.m7947b(i6 % b);
            }
            return z;
        }
    },
    MURMUR128_MITZ_64 { // from class: com.google.common.hash.BloomFilterStrategies.2
        private long lowerEight(byte[] bArr) {
            return Longs.m7804a(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long upperEight(byte[] bArr) {
            return Longs.m7804a(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, C7680a aVar) {
            long b = aVar.m7948b();
            byte[] bytesInternal = Hashing.m7944a().hashObject(t, funnel).getBytesInternal();
            long lowerEight = lowerEight(bytesInternal);
            long upperEight = upperEight(bytesInternal);
            for (int i2 = 0; i2 < i; i2++) {
                if (!aVar.m7951a((Long.MAX_VALUE & lowerEight) % b)) {
                    return false;
                }
                lowerEight += upperEight;
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, C7680a aVar) {
            long b = aVar.m7948b();
            byte[] bytesInternal = Hashing.m7944a().hashObject(t, funnel).getBytesInternal();
            long lowerEight = lowerEight(bytesInternal);
            long upperEight = upperEight(bytesInternal);
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                z |= aVar.m7947b((Long.MAX_VALUE & lowerEight) % b);
                lowerEight += upperEight;
            }
            return z;
        }
    };

    /* renamed from: com.google.common.hash.BloomFilterStrategies$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/BloomFilterStrategies$a.class */
    public static final class C7680a {

        /* renamed from: a */
        public final AtomicLongArray f30827a;

        /* renamed from: b */
        public final AbstractC5050i f30828b;

        public C7680a(long j) {
            C4933n.m24790a(j > 0, "data length is zero!");
            this.f30827a = new AtomicLongArray(Ints.m7812a(LongMath.m7893a(j, 64L, RoundingMode.CEILING)));
            this.f30828b = LongAddables.m7943a();
        }

        public C7680a(long[] jArr) {
            C4933n.m24790a(jArr.length > 0, "data length is zero!");
            this.f30827a = new AtomicLongArray(jArr);
            this.f30828b = LongAddables.m7943a();
            long j = 0;
            for (long j2 : jArr) {
                j += Long.bitCount(j2);
            }
            this.f30828b.add(j);
        }

        /* renamed from: a */
        public static long[] m7949a(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        /* renamed from: a */
        public long m7952a() {
            return this.f30828b.sum();
        }

        /* renamed from: a */
        public void m7950a(C7680a aVar) {
            long j;
            long j2;
            boolean z;
            C4933n.m24786a(this.f30827a.length() == aVar.f30827a.length(), "BitArrays must be of equal length (%s != %s)", this.f30827a.length(), aVar.f30827a.length());
            for (int i = 0; i < this.f30827a.length(); i++) {
                long j3 = aVar.f30827a.get(i);
                while (true) {
                    j = this.f30827a.get(i);
                    j2 = j | j3;
                    if (j != j2) {
                        if (this.f30827a.compareAndSet(i, j, j2)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    this.f30828b.add(Long.bitCount(j2) - Long.bitCount(j));
                }
            }
        }

        /* renamed from: a */
        public boolean m7951a(long j) {
            return ((1 << ((int) j)) & this.f30827a.get((int) (j >>> 6))) != 0;
        }

        /* renamed from: b */
        public long m7948b() {
            return this.f30827a.length() * 64;
        }

        /* renamed from: b */
        public boolean m7947b(long j) {
            long j2;
            long j3;
            if (m7951a(j)) {
                return false;
            }
            int i = (int) (j >>> 6);
            int i2 = (int) j;
            do {
                j2 = this.f30827a.get(i);
                j3 = j2 | (1 << i2);
                if (j2 == j3) {
                    return false;
                }
            } while (!this.f30827a.compareAndSet(i, j2, j3));
            this.f30828b.increment();
            return true;
        }

        /* renamed from: c */
        public C7680a m7946c() {
            return new C7680a(m7949a(this.f30827a));
        }

        public boolean equals(Object obj) {
            if (obj instanceof C7680a) {
                return Arrays.equals(m7949a(this.f30827a), m7949a(((C7680a) obj).f30827a));
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(m7949a(this.f30827a));
        }
    }
}
