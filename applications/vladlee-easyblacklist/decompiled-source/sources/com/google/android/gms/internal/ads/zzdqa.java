package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdpz;
import com.google.android.gms.internal.ads.zzdqa;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqa.class */
public abstract class zzdqa<MessageType extends zzdqa<MessageType, BuilderType>, BuilderType extends zzdpz<MessageType, BuilderType>> implements zzdte {
    protected int zzhhk = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo3377a(int i) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int mo3362b() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzazu()];
            zzdrb zzw = zzdrb.zzw(bArr);
            zzb(zzw);
            zzw.zzazd();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final zzdqk zzaxk() {
        try {
            ahm b = zzdqk.m3398b(zzazu());
            zzb(b.m5402b());
            return b.m5403a();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
