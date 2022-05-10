package com.google.common.hash;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p131c.p161d.p266c.p270d.AbstractC5043b;
import p131c.p161d.p266c.p270d.AbstractC5045d;
import p131c.p161d.p266c.p270d.AbstractC5046e;
import p131c.p161d.p266c.p270d.AbstractC5047f;
import p131c.p161d.p266c.p273g.C5069b;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/Murmur3_128HashFunction.class */
public final class Murmur3_128HashFunction extends AbstractC5043b implements Serializable {
    public static final long serialVersionUID = 0;
    public final int seed;
    public static final AbstractC5046e MURMUR3_128 = new Murmur3_128HashFunction(0);
    public static final AbstractC5046e GOOD_FAST_HASH_128 = new Murmur3_128HashFunction(Hashing.f30831a);

    /* renamed from: com.google.common.hash.Murmur3_128HashFunction$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Murmur3_128HashFunction$a.class */
    public static final class C7694a extends AbstractC5045d {

        /* renamed from: d */
        public long f30836d;

        /* renamed from: e */
        public long f30837e;

        /* renamed from: f */
        public int f30838f = 0;

        public C7694a(int i) {
            super(16);
            long j = i;
            this.f30836d = j;
            this.f30837e = j;
        }

        /* renamed from: b */
        public static long m7937b(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        /* renamed from: c */
        public static long m7936c(long j) {
            return Long.rotateLeft(j * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        /* renamed from: d */
        public static long m7935d(long j) {
            return Long.rotateLeft(j * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        /* renamed from: a */
        public final void m7938a(long j, long j2) {
            long c = m7936c(j) ^ this.f30836d;
            this.f30836d = c;
            long rotateLeft = Long.rotateLeft(c, 27);
            this.f30836d = rotateLeft;
            long j3 = this.f30837e;
            long j4 = rotateLeft + j3;
            this.f30836d = j4;
            this.f30836d = (j4 * 5) + 1390208809;
            long d = m7935d(j2) ^ j3;
            this.f30837e = d;
            long rotateLeft2 = Long.rotateLeft(d, 31);
            this.f30837e = rotateLeft2;
            long j5 = rotateLeft2 + this.f30836d;
            this.f30837e = j5;
            this.f30837e = (j5 * 5) + 944331445;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5045d
        /* renamed from: b */
        public HashCode mo7925b() {
            long j = this.f30836d;
            int i = this.f30838f;
            long j2 = j ^ i;
            this.f30836d = j2;
            long j3 = this.f30837e ^ i;
            this.f30837e = j3;
            long j4 = j2 + j3;
            this.f30836d = j4;
            this.f30837e = j3 + j4;
            this.f30836d = m7937b(j4);
            long b = m7937b(this.f30837e);
            this.f30837e = b;
            long j5 = this.f30836d + b;
            this.f30836d = j5;
            this.f30837e = b + j5;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f30836d).putLong(this.f30837e).array());
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5045d
        /* renamed from: b */
        public void mo7922b(ByteBuffer byteBuffer) {
            m7938a(byteBuffer.getLong(), byteBuffer.getLong());
            this.f30838f += 16;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5045d
        /* renamed from: c */
        public void mo7921c(ByteBuffer byteBuffer) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            long j6;
            long j7;
            long j8;
            long j9;
            long j10;
            long j11;
            long j12;
            long j13;
            this.f30838f += byteBuffer.remaining();
            long j14 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j2 = 0;
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 2:
                    j3 = 0;
                    j2 = j3 ^ (C5069b.m24560a(byteBuffer.get(1)) << 8);
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 3:
                    j4 = 0;
                    j3 = j4 ^ (C5069b.m24560a(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (C5069b.m24560a(byteBuffer.get(1)) << 8);
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 4:
                    j5 = 0;
                    j4 = j5 ^ (C5069b.m24560a(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (C5069b.m24560a(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (C5069b.m24560a(byteBuffer.get(1)) << 8);
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 5:
                    j6 = 0;
                    j5 = j6 ^ (C5069b.m24560a(byteBuffer.get(4)) << 32);
                    j4 = j5 ^ (C5069b.m24560a(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (C5069b.m24560a(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (C5069b.m24560a(byteBuffer.get(1)) << 8);
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 6:
                    j7 = 0;
                    j6 = j7 ^ (C5069b.m24560a(byteBuffer.get(5)) << 40);
                    j5 = j6 ^ (C5069b.m24560a(byteBuffer.get(4)) << 32);
                    j4 = j5 ^ (C5069b.m24560a(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (C5069b.m24560a(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (C5069b.m24560a(byteBuffer.get(1)) << 8);
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 7:
                    j7 = (C5069b.m24560a(byteBuffer.get(6)) << 48) ^ 0;
                    j6 = j7 ^ (C5069b.m24560a(byteBuffer.get(5)) << 40);
                    j5 = j6 ^ (C5069b.m24560a(byteBuffer.get(4)) << 32);
                    j4 = j5 ^ (C5069b.m24560a(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (C5069b.m24560a(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (C5069b.m24560a(byteBuffer.get(1)) << 8);
                    j = C5069b.m24560a(byteBuffer.get(0)) ^ j2;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 8:
                    j14 = 0;
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 9:
                    j8 = 0;
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 10:
                    j9 = 0;
                    j8 = j9 ^ (C5069b.m24560a(byteBuffer.get(9)) << 8);
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 11:
                    j10 = 0;
                    j9 = j10 ^ (C5069b.m24560a(byteBuffer.get(10)) << 16);
                    j8 = j9 ^ (C5069b.m24560a(byteBuffer.get(9)) << 8);
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 12:
                    j11 = 0;
                    j10 = j11 ^ (C5069b.m24560a(byteBuffer.get(11)) << 24);
                    j9 = j10 ^ (C5069b.m24560a(byteBuffer.get(10)) << 16);
                    j8 = j9 ^ (C5069b.m24560a(byteBuffer.get(9)) << 8);
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 13:
                    j12 = 0;
                    j11 = j12 ^ (C5069b.m24560a(byteBuffer.get(12)) << 32);
                    j10 = j11 ^ (C5069b.m24560a(byteBuffer.get(11)) << 24);
                    j9 = j10 ^ (C5069b.m24560a(byteBuffer.get(10)) << 16);
                    j8 = j9 ^ (C5069b.m24560a(byteBuffer.get(9)) << 8);
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 14:
                    j13 = 0;
                    j12 = j13 ^ (C5069b.m24560a(byteBuffer.get(13)) << 40);
                    j11 = j12 ^ (C5069b.m24560a(byteBuffer.get(12)) << 32);
                    j10 = j11 ^ (C5069b.m24560a(byteBuffer.get(11)) << 24);
                    j9 = j10 ^ (C5069b.m24560a(byteBuffer.get(10)) << 16);
                    j8 = j9 ^ (C5069b.m24560a(byteBuffer.get(9)) << 8);
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                case 15:
                    j13 = (C5069b.m24560a(byteBuffer.get(14)) << 48) ^ 0;
                    j12 = j13 ^ (C5069b.m24560a(byteBuffer.get(13)) << 40);
                    j11 = j12 ^ (C5069b.m24560a(byteBuffer.get(12)) << 32);
                    j10 = j11 ^ (C5069b.m24560a(byteBuffer.get(11)) << 24);
                    j9 = j10 ^ (C5069b.m24560a(byteBuffer.get(10)) << 16);
                    j8 = j9 ^ (C5069b.m24560a(byteBuffer.get(9)) << 8);
                    j14 = j8 ^ C5069b.m24560a(byteBuffer.get(8));
                    j = byteBuffer.getLong() ^ 0;
                    this.f30836d ^= m7936c(j);
                    this.f30837e ^= m7935d(j14);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    public Murmur3_128HashFunction(int i) {
        this.seed = i;
    }

    public int bits() {
        return 128;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Murmur3_128HashFunction) {
            z = false;
            if (this.seed == ((Murmur3_128HashFunction) obj).seed) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return Murmur3_128HashFunction.class.hashCode() ^ this.seed;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5046e
    public AbstractC5047f newHasher() {
        return new C7694a(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.seed + ")";
    }
}
