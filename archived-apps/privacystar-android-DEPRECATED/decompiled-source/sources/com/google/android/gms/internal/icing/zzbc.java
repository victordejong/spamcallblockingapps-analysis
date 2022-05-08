package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzbb;
import com.google.android.gms.internal.icing.zzbc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbc.class */
public abstract class zzbc<MessageType extends zzbb<MessageType, BuilderType>, BuilderType extends zzbc<MessageType, BuilderType>> implements zzds {
    protected abstract BuilderType zza(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzds
    public final /* synthetic */ zzds zza(zzdr zzdrVar) {
        if (zzba().getClass().isInstance(zzdrVar)) {
            return zza((zzbc<MessageType, BuilderType>) ((zzbb) zzdrVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: zzn */
    public abstract BuilderType clone();
}
