package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aju.class */
final class aju extends aka {

    /* renamed from: a */
    private final /* synthetic */ ajp f7507a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private aju(ajp ajpVar) {
        super(ajpVar, (byte) 0);
        this.f7507a = ajpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ aju(ajp ajpVar, byte b) {
        this(ajpVar);
    }

    @Override // com.google.android.gms.internal.ads.aka, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new ajr(this.f7507a, (byte) 0);
    }
}
