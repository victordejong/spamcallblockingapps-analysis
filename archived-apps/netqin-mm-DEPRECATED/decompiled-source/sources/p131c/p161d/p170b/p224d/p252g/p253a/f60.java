package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzegl;
import com.google.android.gms.internal.ads.zzehl;
import com.google.android.gms.internal.ads.zzehs;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* renamed from: c.d.b.d.g.a.f60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f60.class */
public abstract class f60 implements zzehl {

    /* renamed from: c */
    public static final int[] f12882c = m27015b(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a */
    public int[] f12883a;

    /* renamed from: b */
    public final int f12884b;

    public f60(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.f12883a = m27015b(bArr);
            this.f12884b = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    /* renamed from: a */
    public static int m27021a(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: a */
    public static void m27018a(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m27017a(iArr, 0, 4, 8, 12);
            m27017a(iArr, 1, 5, 9, 13);
            m27017a(iArr, 2, 6, 10, 14);
            m27017a(iArr, 3, 7, 11, 15);
            m27017a(iArr, 0, 5, 10, 15);
            m27017a(iArr, 1, 6, 11, 12);
            m27017a(iArr, 2, 7, 8, 13);
            m27017a(iArr, 3, 4, 9, 14);
        }
    }

    /* renamed from: a */
    public static void m27017a(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m27021a(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m27021a(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m27021a(iArr[i] ^ iArr[i4], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m27021a(iArr[i2] ^ iArr[i3], 7);
    }

    /* renamed from: a */
    public static void m27016a(int[] iArr, int[] iArr2) {
        int[] iArr3 = f12882c;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, f12882c.length, 8);
    }

    /* renamed from: b */
    public static int[] m27015b(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* renamed from: a */
    public abstract int mo26690a();

    /* renamed from: a */
    public final ByteBuffer m27019a(byte[] bArr, int i) {
        int[] a = mo26689a(m27015b(bArr), i);
        int[] iArr = (int[]) a.clone();
        m27018a(iArr);
        for (int i2 = 0; i2 < a.length; i2++) {
            a[i2] = a[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(a, 0, 16);
        return order;
    }

    /* renamed from: a */
    public final void m27020a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - mo26690a() >= bArr.length) {
            byte[] a = zzehs.m12550a(mo26690a());
            byteBuffer.put(a);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer a2 = m27019a(a, this.f12884b + i2);
                if (i2 == i - 1) {
                    zzegl.m12578a(byteBuffer, wrap, a2, remaining % 64);
                } else {
                    zzegl.m12578a(byteBuffer, wrap, a2, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    @Override // com.google.android.gms.internal.ads.zzehl
    /* renamed from: a */
    public final byte[] mo12558a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length <= MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - mo26690a()) {
            ByteBuffer allocate = ByteBuffer.allocate(mo26690a() + bArr.length);
            m27020a(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: a */
    public abstract int[] mo26689a(int[] iArr, int i);
}
