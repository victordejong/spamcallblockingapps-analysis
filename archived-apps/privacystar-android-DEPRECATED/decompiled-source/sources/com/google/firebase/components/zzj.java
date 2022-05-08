package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzj.class */
final class zzj<T> implements Provider<T> {
    private static final Object zza = new Object();
    private volatile Object zzb = zza;
    private volatile Provider<T> zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(ComponentFactory<T> componentFactory, ComponentContainer componentContainer) {
        this.zzc = zzk.zza(componentFactory, componentContainer);
    }

    @Override // com.google.firebase.inject.Provider
    public final T get() {
        Object obj = this.zzb;
        T t = (T) obj;
        if (obj == zza) {
            synchronized (this) {
                Object obj2 = this.zzb;
                t = obj2;
                if (obj2 == zza) {
                    t = this.zzc.get();
                    this.zzb = t;
                    this.zzc = null;
                }
            }
        }
        return t;
    }
}
