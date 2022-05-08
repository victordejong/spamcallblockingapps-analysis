package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpu.class */
public final class zzcpu implements zzcub<zzcpv> {

    /* renamed from: a */
    private final zzdhd f13705a;

    /* renamed from: b */
    private final Context f13706b;

    /* renamed from: c */
    private final zzczu f13707c;

    /* renamed from: d */
    private final View f13708d;

    public zzcpu(zzdhd zzdhdVar, Context context, zzczu zzczuVar, ViewGroup viewGroup) {
        this.f13705a = zzdhdVar;
        this.f13706b = context;
        this.f13707c = zzczuVar;
        this.f13708d = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcpv m3706a() {
        ViewParent parent;
        Context context = this.f13706b;
        zzuj zzujVar = this.f13707c.zzblm;
        ArrayList arrayList = new ArrayList();
        View view = this.f13708d;
        while (view != null && (parent = view.getParent()) != null) {
            int i = -1;
            if (parent instanceof ViewGroup) {
                i = ((ViewGroup) parent).indexOfChild(view);
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", i);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zzcpv(context, zzujVar, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcpv> zzanc() {
        return this.f13705a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.vk

            /* renamed from: a */
            private final zzcpu f10624a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10624a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10624a.m3706a();
            }
        });
    }
}
