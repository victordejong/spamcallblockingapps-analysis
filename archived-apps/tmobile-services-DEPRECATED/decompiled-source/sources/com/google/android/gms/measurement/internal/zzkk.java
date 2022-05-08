package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkk.class */
public final class zzkk implements zzew {

    /* renamed from: a */
    private final /* synthetic */ String f9687a;

    /* renamed from: b */
    private final /* synthetic */ zzki f9688b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkk(zzki zzkiVar, String str) {
        this.f9688b = zzkiVar;
        this.f9687a = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzew
    /* renamed from: a */
    public final void mo11036a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f9688b.m11061m(i, th, bArr, this.f9687a);
    }
}
