package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzcm;
import com.google.android.gms.internal.icing.zzco;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzco.class */
public abstract class zzco<MessageType extends zzcm<MessageType, BuilderType>, BuilderType extends zzco<MessageType, BuilderType>> implements zzfg {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzfg
    /* renamed from: Y */
    public final /* synthetic */ zzfg mo13756Y(zzfh zzfhVar) {
        if (mo13746a().getClass().isInstance(zzfhVar)) {
            return mo13825c((zzcm) zzfhVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: c */
    protected abstract BuilderType mo13825c(MessageType messagetype);

    /* renamed from: d */
    public abstract BuilderType clone();
}
