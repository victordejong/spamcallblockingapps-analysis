package com.google.common.hash;

import java.io.Serializable;
import java.util.zip.Checksum;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p270d.AbstractC5042a;
import p131c.p161d.p266c.p270d.AbstractC5043b;
import p131c.p161d.p266c.p270d.AbstractC5047f;
import p131c.p161d.p266c.p270d.AbstractC5048g;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/ChecksumHashFunction.class */
public final class ChecksumHashFunction extends AbstractC5043b implements Serializable {
    public static final long serialVersionUID = 0;
    public final int bits;
    public final AbstractC5048g<? extends Checksum> checksumSupplier;
    public final String toString;

    /* renamed from: com.google.common.hash.ChecksumHashFunction$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/ChecksumHashFunction$b.class */
    public final class C7682b extends AbstractC5042a {

        /* renamed from: b */
        public final Checksum f30829b;

        public C7682b(Checksum checksum) {
            C4933n.m24795a(checksum);
            this.f30829b = checksum;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5047f
        /* renamed from: a */
        public HashCode mo7934a() {
            long value = this.f30829b.getValue();
            return ChecksumHashFunction.this.bits == 32 ? HashCode.fromInt((int) value) : HashCode.fromLong(value);
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5042a
        /* renamed from: a */
        public void mo7942a(byte b) {
            this.f30829b.update(b);
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5042a
        /* renamed from: b */
        public void mo7939b(byte[] bArr, int i, int i2) {
            this.f30829b.update(bArr, i, i2);
        }
    }

    public ChecksumHashFunction(AbstractC5048g<? extends Checksum> gVar, int i, String str) {
        C4933n.m24795a(gVar);
        this.checksumSupplier = gVar;
        C4933n.m24787a(i == 32 || i == 64, "bits (%s) must be either 32 or 64", i);
        this.bits = i;
        C4933n.m24795a(str);
        this.toString = str;
    }

    public int bits() {
        return this.bits;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5046e
    public AbstractC5047f newHasher() {
        return new C7682b((Checksum) this.checksumSupplier.get());
    }

    public String toString() {
        return this.toString;
    }
}
