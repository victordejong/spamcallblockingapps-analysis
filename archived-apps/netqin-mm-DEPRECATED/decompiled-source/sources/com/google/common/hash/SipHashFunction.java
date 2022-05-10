package com.google.common.hash;

import java.io.Serializable;
import java.nio.ByteBuffer;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p270d.AbstractC5043b;
import p131c.p161d.p266c.p270d.AbstractC5045d;
import p131c.p161d.p266c.p270d.AbstractC5046e;
import p131c.p161d.p266c.p270d.AbstractC5047f;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/SipHashFunction.class */
public final class SipHashFunction extends AbstractC5043b implements Serializable {
    public static final AbstractC5046e SIP_HASH_24 = new SipHashFunction(2, 4, 506097522914230528L, 1084818905618843912L);
    public static final long serialVersionUID = 0;

    /* renamed from: c */
    public final int f30846c;

    /* renamed from: d */
    public final int f30847d;

    /* renamed from: k0 */
    public final long f30848k0;

    /* renamed from: k1 */
    public final long f30849k1;

    /* renamed from: com.google.common.hash.SipHashFunction$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/SipHashFunction$a.class */
    public static final class C7696a extends AbstractC5045d {

        /* renamed from: d */
        public final int f30850d;

        /* renamed from: e */
        public final int f30851e;

        /* renamed from: f */
        public long f30852f;

        /* renamed from: g */
        public long f30853g;

        /* renamed from: h */
        public long f30854h;

        /* renamed from: i */
        public long f30855i;

        /* renamed from: j */
        public long f30856j = 0;

        /* renamed from: k */
        public long f30857k = 0;

        public C7696a(int i, int i2, long j, long j2) {
            super(8);
            this.f30852f = 8317987319222330741L;
            this.f30853g = 7237128888997146477L;
            this.f30854h = 7816392313619706465L;
            this.f30855i = 8387220255154660723L;
            this.f30850d = i;
            this.f30851e = i2;
            this.f30852f = 8317987319222330741L ^ j;
            this.f30853g = 7237128888997146477L ^ j2;
            this.f30854h = 7816392313619706465L ^ j;
            this.f30855i = 8387220255154660723L ^ j2;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5045d
        /* renamed from: b */
        public HashCode mo7925b() {
            long j = this.f30857k ^ (this.f30856j << 56);
            this.f30857k = j;
            m7923b(j);
            this.f30854h ^= 255;
            m7924b(this.f30851e);
            return HashCode.fromLong(((this.f30852f ^ this.f30853g) ^ this.f30854h) ^ this.f30855i);
        }

        /* renamed from: b */
        public final void m7924b(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.f30852f;
                long j2 = this.f30853g;
                this.f30852f = j + j2;
                this.f30854h += this.f30855i;
                this.f30853g = Long.rotateLeft(j2, 13);
                long rotateLeft = Long.rotateLeft(this.f30855i, 16);
                this.f30855i = rotateLeft;
                long j3 = this.f30853g;
                long j4 = this.f30852f;
                this.f30853g = j3 ^ j4;
                this.f30855i = rotateLeft ^ this.f30854h;
                long rotateLeft2 = Long.rotateLeft(j4, 32);
                this.f30852f = rotateLeft2;
                long j5 = this.f30854h;
                long j6 = this.f30853g;
                this.f30854h = j5 + j6;
                this.f30852f = rotateLeft2 + this.f30855i;
                this.f30853g = Long.rotateLeft(j6, 17);
                long rotateLeft3 = Long.rotateLeft(this.f30855i, 21);
                this.f30855i = rotateLeft3;
                long j7 = this.f30853g;
                long j8 = this.f30854h;
                this.f30853g = j7 ^ j8;
                this.f30855i = rotateLeft3 ^ this.f30852f;
                this.f30854h = Long.rotateLeft(j8, 32);
            }
        }

        /* renamed from: b */
        public final void m7923b(long j) {
            this.f30855i ^= j;
            m7924b(this.f30850d);
            this.f30852f = j ^ this.f30852f;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5045d
        /* renamed from: b */
        public void mo7922b(ByteBuffer byteBuffer) {
            this.f30856j += 8;
            m7923b(byteBuffer.getLong());
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5045d
        /* renamed from: c */
        public void mo7921c(ByteBuffer byteBuffer) {
            this.f30856j += byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.f30857k ^= (byteBuffer.get() & 255) << i;
                i += 8;
            }
        }
    }

    public SipHashFunction(int i, int i2, long j, long j2) {
        boolean z = true;
        C4933n.m24787a(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i);
        if (i2 <= 0) {
            z = false;
        }
        C4933n.m24787a(z, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i2);
        this.f30846c = i;
        this.f30847d = i2;
        this.f30848k0 = j;
        this.f30849k1 = j2;
    }

    public int bits() {
        return 64;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof SipHashFunction) {
            SipHashFunction sipHashFunction = (SipHashFunction) obj;
            z = false;
            if (this.f30846c == sipHashFunction.f30846c) {
                z = false;
                if (this.f30847d == sipHashFunction.f30847d) {
                    z = false;
                    if (this.f30848k0 == sipHashFunction.f30848k0) {
                        z = false;
                        if (this.f30849k1 == sipHashFunction.f30849k1) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (int) ((((SipHashFunction.class.hashCode() ^ this.f30846c) ^ this.f30847d) ^ this.f30848k0) ^ this.f30849k1);
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5046e
    public AbstractC5047f newHasher() {
        return new C7696a(this.f30846c, this.f30847d, this.f30848k0, this.f30849k1);
    }

    public String toString() {
        return "Hashing.sipHash" + this.f30846c + "" + this.f30847d + "(" + this.f30848k0 + ", " + this.f30849k1 + ")";
    }
}
