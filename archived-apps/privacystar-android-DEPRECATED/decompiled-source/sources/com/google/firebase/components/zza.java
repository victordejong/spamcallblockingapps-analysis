package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zza.class */
abstract class zza implements ComponentContainer {
    @Override // com.google.firebase.components.ComponentContainer
    public <T> T get(Class<T> cls) {
        Provider<T> provider = getProvider(cls);
        if (provider == null) {
            return null;
        }
        return provider.get();
    }
}
