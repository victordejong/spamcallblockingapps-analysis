package androidx.core.p034d;

import java.util.Comparator;
/* renamed from: androidx.core.d.f */
/* loaded from: classes-dex2jar.jar:androidx/core/d/f.class */
final class C0656f implements Comparator<byte[]> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        byte[] bArr3 = bArr;
        byte[] bArr4 = bArr2;
        if (bArr3.length != bArr4.length) {
            i2 = bArr3.length;
            i = bArr4.length;
        } else {
            for (int i3 = 0; i3 < bArr3.length; i3++) {
                if (bArr3[i3] != bArr4[i3]) {
                    i2 = bArr3[i3];
                    i = bArr4[i3];
                }
            }
            return 0;
        }
        return i2 - i;
    }
}
