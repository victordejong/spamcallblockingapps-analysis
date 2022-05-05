package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.util.Clock;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrm.class */
public class zzbrm {

    /* renamed from: a */
    private final Set<zzbsu<zzty>> f12275a;

    /* renamed from: b */
    private final Set<zzbsu<zzbov>> f12276b;

    /* renamed from: c */
    private final Set<zzbsu<zzbpe>> f12277c;

    /* renamed from: d */
    private final Set<zzbsu<zzbqg>> f12278d;

    /* renamed from: e */
    private final Set<zzbsu<zzbqb>> f12279e;

    /* renamed from: f */
    private final Set<zzbsu<zzbow>> f12280f;

    /* renamed from: g */
    private final Set<zzbsu<zzbpa>> f12281g;

    /* renamed from: h */
    private final Set<zzbsu<AdMetadataListener>> f12282h;

    /* renamed from: i */
    private final Set<zzbsu<AppEventListener>> f12283i;

    /* renamed from: j */
    private final zzcxq f12284j;

    /* renamed from: k */
    private zzbou f12285k;

    /* renamed from: l */
    private zzclp f12286l;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrm$zza.class */
    public static final class zza {

        /* renamed from: a */
        private Set<zzbsu<zzty>> f12287a = new HashSet();

        /* renamed from: b */
        private Set<zzbsu<zzbov>> f12288b = new HashSet();

        /* renamed from: c */
        private Set<zzbsu<zzbpe>> f12289c = new HashSet();

        /* renamed from: d */
        private Set<zzbsu<zzbqg>> f12290d = new HashSet();

        /* renamed from: e */
        private Set<zzbsu<zzbqb>> f12291e = new HashSet();

        /* renamed from: f */
        private Set<zzbsu<zzbow>> f12292f = new HashSet();

        /* renamed from: g */
        private Set<zzbsu<AdMetadataListener>> f12293g = new HashSet();

        /* renamed from: h */
        private Set<zzbsu<AppEventListener>> f12294h = new HashSet();

        /* renamed from: i */
        private Set<zzbsu<zzbpa>> f12295i = new HashSet();

        /* renamed from: j */
        private zzcxq f12296j;

        public final zza zza(AppEventListener appEventListener, Executor executor) {
            this.f12294h.add(new zzbsu<>(appEventListener, executor));
            return this;
        }

        public final zza zza(AdMetadataListener adMetadataListener, Executor executor) {
            this.f12293g.add(new zzbsu<>(adMetadataListener, executor));
            return this;
        }

        public final zza zza(zzbov zzbovVar, Executor executor) {
            this.f12288b.add(new zzbsu<>(zzbovVar, executor));
            return this;
        }

        public final zza zza(zzbow zzbowVar, Executor executor) {
            this.f12292f.add(new zzbsu<>(zzbowVar, executor));
            return this;
        }

        public final zza zza(zzbpa zzbpaVar, Executor executor) {
            this.f12295i.add(new zzbsu<>(zzbpaVar, executor));
            return this;
        }

        public final zza zza(zzbpe zzbpeVar, Executor executor) {
            this.f12289c.add(new zzbsu<>(zzbpeVar, executor));
            return this;
        }

        public final zza zza(zzbqb zzbqbVar, Executor executor) {
            this.f12291e.add(new zzbsu<>(zzbqbVar, executor));
            return this;
        }

        public final zza zza(zzbqg zzbqgVar, Executor executor) {
            this.f12290d.add(new zzbsu<>(zzbqgVar, executor));
            return this;
        }

        public final zza zza(zzcxq zzcxqVar) {
            this.f12296j = zzcxqVar;
            return this;
        }

        public final zza zza(zzty zztyVar, Executor executor) {
            this.f12287a.add(new zzbsu<>(zztyVar, executor));
            return this;
        }

        public final zza zza(zzwc zzwcVar, Executor executor) {
            if (this.f12294h != null) {
                zzcos zzcosVar = new zzcos();
                zzcosVar.zzb(zzwcVar);
                this.f12294h.add(new zzbsu<>(zzcosVar, executor));
            }
            return this;
        }

        public final zzbrm zzahw() {
            return new zzbrm(this, (byte) 0);
        }
    }

    private zzbrm(zza zzaVar) {
        this.f12275a = zzaVar.f12287a;
        this.f12277c = zzaVar.f12289c;
        this.f12278d = zzaVar.f12290d;
        this.f12276b = zzaVar.f12288b;
        this.f12279e = zzaVar.f12291e;
        this.f12280f = zzaVar.f12292f;
        this.f12281g = zzaVar.f12295i;
        this.f12282h = zzaVar.f12293g;
        this.f12283i = zzaVar.f12294h;
        this.f12284j = zzaVar.f12296j;
    }

    /* synthetic */ zzbrm(zza zzaVar, byte b) {
        this(zzaVar);
    }

    public final zzclp zza(Clock clock) {
        if (this.f12286l == null) {
            this.f12286l = new zzclp(clock);
        }
        return this.f12286l;
    }

    public final Set<zzbsu<zzbov>> zzahm() {
        return this.f12276b;
    }

    public final Set<zzbsu<zzbqb>> zzahn() {
        return this.f12279e;
    }

    public final Set<zzbsu<zzbow>> zzaho() {
        return this.f12280f;
    }

    public final Set<zzbsu<zzbpa>> zzahp() {
        return this.f12281g;
    }

    public final Set<zzbsu<AdMetadataListener>> zzahq() {
        return this.f12282h;
    }

    public final Set<zzbsu<AppEventListener>> zzahr() {
        return this.f12283i;
    }

    public final Set<zzbsu<zzty>> zzahs() {
        return this.f12275a;
    }

    public final Set<zzbsu<zzbpe>> zzaht() {
        return this.f12277c;
    }

    public final Set<zzbsu<zzbqg>> zzahu() {
        return this.f12278d;
    }

    public final zzcxq zzahv() {
        return this.f12284j;
    }

    public final zzbou zzc(Set<zzbsu<zzbow>> set) {
        if (this.f12285k == null) {
            this.f12285k = new zzbou(set);
        }
        return this.f12285k;
    }
}
