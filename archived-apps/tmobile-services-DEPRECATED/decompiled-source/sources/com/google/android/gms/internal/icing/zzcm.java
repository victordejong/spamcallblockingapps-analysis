package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzcm;
import com.google.android.gms.internal.icing.zzco;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcm.class */
public abstract class zzcm<MessageType extends zzcm<MessageType, BuilderType>, BuilderType extends zzco<MessageType, BuilderType>> implements zzfh {
    protected int zzga = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int mo13836c() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void mo13835d(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.icing.zzfh
    /* renamed from: r */
    public final zzct mo13754r() {
        try {
            zzdb t = zzct.m13974t(mo13753s());
            mo13751u(t.m13968b());
            return t.m13969a();
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
