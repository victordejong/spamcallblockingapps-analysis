package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzk.class */
public final /* synthetic */ class zzk implements Provider {
    private final ComponentFactory zza;
    private final ComponentContainer zzb;

    private zzk(ComponentFactory componentFactory, ComponentContainer componentContainer) {
        this.zza = componentFactory;
        this.zzb = componentContainer;
    }

    public static Provider zza(ComponentFactory componentFactory, ComponentContainer componentContainer) {
        return new zzk(componentFactory, componentContainer);
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        Object create;
        create = this.zza.create(this.zzb);
        return create;
    }
}
