package p131c.p161d.p170b.p224d.p238d;

import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.d.k */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/k.class */
public abstract class AbstractBinderC3319k extends AbstractBinderC3317i {

    /* renamed from: c */
    public static final WeakReference<byte[]> f12043c = new WeakReference<>(null);

    /* renamed from: b */
    public WeakReference<byte[]> f12044b = f12043c;

    public AbstractBinderC3319k(byte[] bArr) {
        super(bArr);
    }

    @Override // p131c.p161d.p170b.p224d.p238d.AbstractBinderC3317i
    public final byte[] zza() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f12044b.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = zzd();
                this.f12044b = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    public abstract byte[] zzd();
}
