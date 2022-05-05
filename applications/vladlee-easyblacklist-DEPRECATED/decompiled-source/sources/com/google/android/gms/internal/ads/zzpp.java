package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.WeakHashMap;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpp.class */
public final class zzpp {

    /* renamed from: a */
    private final Object f15337a = new Object();

    /* renamed from: b */
    private final WeakHashMap<Object, Object> f15338b = new WeakHashMap<>();

    /* renamed from: c */
    private final ArrayList<Object> f15339c = new ArrayList<>();

    /* renamed from: d */
    private final Context f15340d;

    /* renamed from: e */
    private final zzazb f15341e;

    /* renamed from: f */
    private final zzais f15342f;

    public zzpp(Context context, zzazb zzazbVar) {
        this.f15340d = context.getApplicationContext();
        this.f15341e = zzazbVar;
        this.f15342f = new zzais(context.getApplicationContext(), zzazbVar, (String) zzve.zzoy().zzd(zzzn.zzcgi));
    }
}
