package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ea */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ea.class */
final class C2573ea extends C2579eg {

    /* renamed from: a */
    private final /* synthetic */ C2571dz f16025a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C2573ea(C2571dz dzVar) {
        super(dzVar, (byte) 0);
        this.f16025a = dzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2573ea(C2571dz dzVar, byte b) {
        this(dzVar);
    }

    @Override // com.google.android.gms.internal.measurement.C2579eg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C2574eb(this.f16025a, (byte) 0);
    }
}
