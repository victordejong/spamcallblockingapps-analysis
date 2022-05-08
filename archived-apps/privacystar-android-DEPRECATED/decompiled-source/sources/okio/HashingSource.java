package okio;

import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:okio/HashingSource.class */
public final class HashingSource extends ForwardingSource {
    private final Mac mac;
    private final MessageDigest messageDigest;

    private HashingSource(Source source, String str) {
        super(source);
        try {
            this.messageDigest = MessageDigest.getInstance(str);
            this.mac = null;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private HashingSource(Source source, ByteString byteString, String str) {
        super(source);
        try {
            this.mac = Mac.getInstance(str);
            this.mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.messageDigest = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError();
        }
    }

    public static HashingSource hmacSha1(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA1");
    }

    public static HashingSource hmacSha256(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA256");
    }

    public static HashingSource md5(Source source) {
        return new HashingSource(source, "MD5");
    }

    public static HashingSource sha1(Source source) {
        return new HashingSource(source, "SHA-1");
    }

    public static HashingSource sha256(Source source) {
        return new HashingSource(source, "SHA-256");
    }

    public ByteString hash() {
        return ByteString.m231of(this.messageDigest != null ? this.messageDigest.digest() : this.mac.doFinal());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // okio.ForwardingSource, okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(okio.Buffer r7, long r8) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r8
            long r0 = super.read(r1, r2)
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00be
            r0 = r7
            long r0 = r0.size
            r1 = r10
            long r0 = r0 - r1
            r12 = r0
            r0 = r7
            long r0 = r0.size
            r8 = r0
            r0 = r7
            okio.Segment r0 = r0.head
            r14 = r0
        L_0x0025:
            r0 = r12
            r15 = r0
            r0 = r8
            r17 = r0
            r0 = r14
            r19 = r0
            r0 = r8
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0050
            r0 = r14
            okio.Segment r0 = r0.prev
            r14 = r0
            r0 = r8
            r1 = r14
            int r1 = r1.limit
            r2 = r14
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r8 = r0
            goto L_0x0025
        L_0x0050:
            r0 = r17
            r1 = r7
            long r1 = r1.size
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x00be
            r0 = r19
            int r0 = r0.pos
            long r0 = (long) r0
            r1 = r15
            long r0 = r0 + r1
            r1 = r17
            long r0 = r0 - r1
            int r0 = (int) r0
            r20 = r0
            r0 = r6
            java.security.MessageDigest r0 = r0.messageDigest
            if (r0 == 0) goto L_0x0089
            r0 = r6
            java.security.MessageDigest r0 = r0.messageDigest
            r1 = r19
            byte[] r1 = r1.data
            r2 = r20
            r3 = r19
            int r3 = r3.limit
            r4 = r20
            int r3 = r3 - r4
            r0.update(r1, r2, r3)
            goto L_0x009f
        L_0x0089:
            r0 = r6
            javax.crypto.Mac r0 = r0.mac
            r1 = r19
            byte[] r1 = r1.data
            r2 = r20
            r3 = r19
            int r3 = r3.limit
            r4 = r20
            int r3 = r3 - r4
            r0.update(r1, r2, r3)
        L_0x009f:
            r0 = r19
            int r0 = r0.limit
            r1 = r19
            int r1 = r1.pos
            int r0 = r0 - r1
            long r0 = (long) r0
            r1 = r17
            long r0 = r0 + r1
            r15 = r0
            r0 = r19
            okio.Segment r0 = r0.next
            r19 = r0
            r0 = r15
            r17 = r0
            goto L_0x0050
        L_0x00be:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.HashingSource.read(okio.Buffer, long):long");
    }
}
