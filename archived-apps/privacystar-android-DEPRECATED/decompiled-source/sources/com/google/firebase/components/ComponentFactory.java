package com.google.firebase.components;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/ComponentFactory.class */
public interface ComponentFactory<T> {
    @KeepForSdk
    T create(ComponentContainer componentContainer);
}
