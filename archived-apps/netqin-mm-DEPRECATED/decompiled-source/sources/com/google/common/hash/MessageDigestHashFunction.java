package com.google.common.hash;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p270d.AbstractC5042a;
import p131c.p161d.p266c.p270d.AbstractC5043b;
import p131c.p161d.p266c.p270d.AbstractC5047f;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/MessageDigestHashFunction.class */
public final class MessageDigestHashFunction extends AbstractC5043b implements Serializable {
    public final int bytes;
    public final MessageDigest prototype;
    public final boolean supportsClone;
    public final String toString;

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/MessageDigestHashFunction$SerializedForm.class */
    public static final class SerializedForm implements Serializable {
        public static final long serialVersionUID = 0;
        public final String algorithmName;
        public final int bytes;
        public final String toString;

        public SerializedForm(String str, int i, String str2) {
            this.algorithmName = str;
            this.bytes = i;
            this.toString = str2;
        }

        private Object readResolve() {
            return new MessageDigestHashFunction(this.algorithmName, this.bytes, this.toString);
        }
    }

    /* renamed from: com.google.common.hash.MessageDigestHashFunction$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/MessageDigestHashFunction$b.class */
    public static final class C7693b extends AbstractC5042a {

        /* renamed from: b */
        public final MessageDigest f30833b;

        /* renamed from: c */
        public final int f30834c;

        /* renamed from: d */
        public boolean f30835d;

        public C7693b(MessageDigest messageDigest, int i) {
            this.f30833b = messageDigest;
            this.f30834c = i;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5047f
        /* renamed from: a */
        public HashCode mo7934a() {
            m7941b();
            this.f30835d = true;
            return this.f30834c == this.f30833b.getDigestLength() ? HashCode.fromBytesNoCopy(this.f30833b.digest()) : HashCode.fromBytesNoCopy(Arrays.copyOf(this.f30833b.digest(), this.f30834c));
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5042a
        /* renamed from: a */
        public void mo7942a(byte b) {
            m7941b();
            this.f30833b.update(b);
        }

        /* renamed from: b */
        public final void m7941b() {
            C4933n.m24775b(!this.f30835d, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5042a
        /* renamed from: b */
        public void mo7940b(ByteBuffer byteBuffer) {
            m7941b();
            this.f30833b.update(byteBuffer);
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5042a
        /* renamed from: b */
        public void mo7939b(byte[] bArr, int i, int i2) {
            m7941b();
            this.f30833b.update(bArr, i, i2);
        }
    }

    public MessageDigestHashFunction(String str, int i, String str2) {
        C4933n.m24795a(str2);
        this.toString = str2;
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        int digestLength = messageDigest.getDigestLength();
        C4933n.m24786a(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", i, digestLength);
        this.bytes = i;
        this.supportsClone = supportsClone(this.prototype);
    }

    public MessageDigestHashFunction(String str, String str2) {
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        this.bytes = messageDigest.getDigestLength();
        C4933n.m24795a(str2);
        this.toString = str2;
        this.supportsClone = supportsClone(this.prototype);
    }

    public static MessageDigest getMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static boolean supportsClone(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException e) {
            return false;
        }
    }

    public int bits() {
        return this.bytes * 8;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5046e
    public AbstractC5047f newHasher() {
        if (this.supportsClone) {
            try {
                return new C7693b((MessageDigest) this.prototype.clone(), this.bytes);
            } catch (CloneNotSupportedException e) {
            }
        }
        return new C7693b(getMessageDigest(this.prototype.getAlgorithm()), this.bytes);
    }

    public String toString() {
        return this.toString;
    }

    public Object writeReplace() {
        return new SerializedForm(this.prototype.getAlgorithm(), this.bytes, this.toString);
    }
}
