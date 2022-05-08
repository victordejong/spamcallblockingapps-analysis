package com.google.firebase.components;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzc.class */
public final /* synthetic */ class zzc implements ComponentFactory {
    private final Object zza;

    private zzc(Object obj) {
        this.zza = obj;
    }

    public static ComponentFactory zza(Object obj) {
        return new zzc(obj);
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return Component.zza(this.zza);
    }
}
