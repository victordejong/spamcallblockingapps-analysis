package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdzv;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* renamed from: c.d.b.d.g.a.h60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h60.class */
public abstract class h60 implements zzdzv {

    /* renamed from: a */
    public final f60 f13241a;

    /* renamed from: b */
    public final f60 f13242b;

    public h60(byte[] bArr) throws InvalidKeyException {
        this.f13241a = mo12545a(bArr, 1);
        this.f13242b = mo12545a(bArr, 0);
    }

    /* renamed from: a */
    public abstract f60 mo12545a(byte[] bArr, int i) throws InvalidKeyException;

    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: a */
    public byte[] mo12560a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - this.f13241a.mo26690a()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.f13241a.mo26690a() + 16);
            if (allocate.remaining() >= bArr.length + this.f13241a.mo26690a() + 16) {
                int position = allocate.position();
                this.f13241a.m27020a(allocate, bArr);
                allocate.position(position);
                byte[] bArr3 = new byte[this.f13241a.mo26690a()];
                allocate.get(bArr3);
                allocate.limit(allocate.limit() - 16);
                byte[] bArr4 = bArr2;
                if (bArr2 == null) {
                    bArr4 = new byte[0];
                }
                ByteBuffer a = this.f13242b.m27019a(bArr3, 0);
                byte[] bArr5 = new byte[32];
                a.get(bArr5);
                int length = bArr4.length % 16 == 0 ? bArr4.length : (bArr4.length + 16) - (bArr4.length % 16);
                int remaining = allocate.remaining();
                int i = remaining % 16;
                int i2 = (i == 0 ? remaining : (remaining + 16) - i) + length;
                ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr4);
                order.position(length);
                order.put(allocate);
                order.position(i2);
                order.putLong(bArr4.length);
                order.putLong(remaining);
                byte[] a2 = j60.m26796a(bArr5, order.array());
                allocate.limit(allocate.limit() + 16);
                allocate.put(a2);
                return allocate.array();
            }
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
