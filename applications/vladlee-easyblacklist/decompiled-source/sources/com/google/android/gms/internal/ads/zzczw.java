package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczw.class */
public final class zzczw {

    /* renamed from: a */
    private zzug f14091a;

    /* renamed from: b */
    private zzuj f14092b;

    /* renamed from: c */
    private zzwi f14093c;

    /* renamed from: d */
    private String f14094d;

    /* renamed from: e */
    private zzyw f14095e;

    /* renamed from: f */
    private boolean f14096f;

    /* renamed from: g */
    private ArrayList<String> f14097g;

    /* renamed from: h */
    private ArrayList<String> f14098h;

    /* renamed from: i */
    private zzaby f14099i;

    /* renamed from: j */
    private zzuo f14100j;

    /* renamed from: k */
    private PublisherAdViewOptions f14101k;

    /* renamed from: l */
    private zzwc f14102l;

    /* renamed from: n */
    private zzagz f14104n;

    /* renamed from: m */
    private int f14103m = 1;
    public final Set<String> zzgms = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzuj m3645a(zzczw zzczwVar) {
        return zzczwVar.f14092b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ String m3644b(zzczw zzczwVar) {
        return zzczwVar.f14094d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ zzwi m3643c(zzczw zzczwVar) {
        return zzczwVar.f14093c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ ArrayList m3642d(zzczw zzczwVar) {
        return zzczwVar.f14097g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ ArrayList m3641e(zzczw zzczwVar) {
        return zzczwVar.f14098h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ zzuo m3640f(zzczw zzczwVar) {
        return zzczwVar.f14100j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ int m3639g(zzczw zzczwVar) {
        return zzczwVar.f14103m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ PublisherAdViewOptions m3638h(zzczw zzczwVar) {
        return zzczwVar.f14101k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ zzwc m3637i(zzczw zzczwVar) {
        return zzczwVar.f14102l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static /* synthetic */ zzagz m3636j(zzczw zzczwVar) {
        return zzczwVar.f14104n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static /* synthetic */ zzug m3635k(zzczw zzczwVar) {
        return zzczwVar.f14091a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ boolean m3634l(zzczw zzczwVar) {
        return zzczwVar.f14096f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static /* synthetic */ zzyw m3633m(zzczw zzczwVar) {
        return zzczwVar.f14095e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static /* synthetic */ zzaby m3632n(zzczw zzczwVar) {
        return zzczwVar.f14099i;
    }

    public final zzug zzaoq() {
        return this.f14091a;
    }

    public final String zzaor() {
        return this.f14094d;
    }

    public final zzczu zzaos() {
        Preconditions.checkNotNull(this.f14094d, "ad unit must not be null");
        Preconditions.checkNotNull(this.f14092b, "ad size must not be null");
        Preconditions.checkNotNull(this.f14091a, "ad request must not be null");
        return new zzczu(this, (byte) 0);
    }

    public final zzczw zzb(PublisherAdViewOptions publisherAdViewOptions) {
        this.f14101k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.f14096f = publisherAdViewOptions.getManualImpressionsEnabled();
            this.f14102l = publisherAdViewOptions.zzjm();
        }
        return this;
    }

    public final zzczw zzb(zzaby zzabyVar) {
        this.f14099i = zzabyVar;
        return this;
    }

    public final zzczw zzb(zzagz zzagzVar) {
        this.f14104n = zzagzVar;
        this.f14095e = new zzyw(false, true, false);
        return this;
    }

    public final zzczw zzb(zzuo zzuoVar) {
        this.f14100j = zzuoVar;
        return this;
    }

    public final zzczw zzb(ArrayList<String> arrayList) {
        this.f14097g = arrayList;
        return this;
    }

    public final zzczw zzbm(boolean z) {
        this.f14096f = z;
        return this;
    }

    public final zzczw zzc(zzwi zzwiVar) {
        this.f14093c = zzwiVar;
        return this;
    }

    public final zzczw zzc(zzyw zzywVar) {
        this.f14095e = zzywVar;
        return this;
    }

    public final zzczw zzc(ArrayList<String> arrayList) {
        this.f14098h = arrayList;
        return this;
    }

    public final zzczw zzd(zzuj zzujVar) {
        this.f14092b = zzujVar;
        return this;
    }

    public final zzczw zzdl(int i) {
        this.f14103m = i;
        return this;
    }

    public final zzczw zzg(zzug zzugVar) {
        this.f14091a = zzugVar;
        return this;
    }

    public final zzczw zzgk(String str) {
        this.f14094d = str;
        return this;
    }

    public final zzuj zzjz() {
        return this.f14092b;
    }
}
