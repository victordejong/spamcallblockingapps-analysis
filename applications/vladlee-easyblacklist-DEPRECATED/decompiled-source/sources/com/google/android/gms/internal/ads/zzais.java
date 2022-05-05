package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzais.class */
public final class zzais {

    /* renamed from: a */
    private final Object f10934a;

    /* renamed from: b */
    private final Context f10935b;

    /* renamed from: c */
    private final String f10936c;

    /* renamed from: d */
    private final zzazb f10937d;

    /* renamed from: e */
    private zzaxh<zzaif> f10938e;

    /* renamed from: f */
    private zzaxh<zzaif> f10939f;

    /* renamed from: g */
    private zzajj f10940g;

    /* renamed from: h */
    private int f10941h;

    public zzais(Context context, zzazb zzazbVar, String str) {
        this.f10934a = new Object();
        this.f10941h = 1;
        this.f10936c = str;
        this.f10935b = context.getApplicationContext();
        this.f10937d = zzazbVar;
        this.f10938e = new zzajg();
        this.f10939f = new zzajg();
    }

    public zzais(Context context, zzazb zzazbVar, String str, zzaxh<zzaif> zzaxhVar, zzaxh<zzaif> zzaxhVar2) {
        this(context, zzazbVar, str);
        this.f10938e = zzaxhVar;
        this.f10939f = zzaxhVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final zzajj m4389a(final zzdq zzdqVar) {
        final zzajj zzajjVar = new zzajj(this.f10939f);
        zzazd.zzdwi.execute(new Runnable(this, zzdqVar, zzajjVar) { // from class: com.google.android.gms.internal.ads.an

            /* renamed from: a */
            private final zzais f7753a;

            /* renamed from: b */
            private final zzdq f7754b;

            /* renamed from: c */
            private final zzajj f7755c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7753a = this;
                this.f7754b = zzdqVar;
                this.f7755c = zzajjVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7753a.m4388a(this.f7754b, this.f7755c);
            }
        });
        zzajjVar.zza(new C1750aw(this, zzajjVar), new C1753az(this, zzajjVar));
        return zzajjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4394a(zzaif zzaifVar) {
        if (zzaifVar.isDestroyed()) {
            this.f10941h = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4390a(zzajj zzajjVar, zzaif zzaifVar) {
        synchronized (this.f10934a) {
            if (!(zzajjVar.getStatus() == -1 || zzajjVar.getStatus() == 1)) {
                zzajjVar.reject();
                zzdhd zzdhdVar = zzazd.zzdwi;
                zzaifVar.getClass();
                zzdhdVar.execute(RunnableC1747at.m4746a(zzaifVar));
                zzavs.zzed("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4388a(zzdq zzdqVar, final zzajj zzajjVar) {
        try {
            Context context = this.f10935b;
            zzazb zzazbVar = this.f10937d;
            final zzaif zzahrVar = zzabl.zzcuw.get().booleanValue() ? new zzahr(context, zzazbVar) : new zzaih(context, zzazbVar, zzdqVar, null);
            zzahrVar.zza(new zzaii(this, zzajjVar, zzahrVar) { // from class: com.google.android.gms.internal.ads.ar

                /* renamed from: a */
                private final zzais f8190a;

                /* renamed from: b */
                private final zzajj f8191b;

                /* renamed from: c */
                private final zzaif f8192c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8190a = this;
                    this.f8191b = zzajjVar;
                    this.f8192c = zzahrVar;
                }

                @Override // com.google.android.gms.internal.ads.zzaii
                public final void zzsa() {
                    final zzais zzaisVar = this.f8190a;
                    final zzajj zzajjVar2 = this.f8191b;
                    final zzaif zzaifVar = this.f8192c;
                    zzawb.zzdsr.postDelayed(new Runnable(zzaisVar, zzajjVar2, zzaifVar) { // from class: com.google.android.gms.internal.ads.aq

                        /* renamed from: a */
                        private final zzais f8157a;

                        /* renamed from: b */
                        private final zzajj f8158b;

                        /* renamed from: c */
                        private final zzaif f8159c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8157a = zzaisVar;
                            this.f8158b = zzajjVar2;
                            this.f8159c = zzaifVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f8157a.m4390a(this.f8158b, this.f8159c);
                        }
                    }, C1752ay.f8278b);
                }
            });
            zzahrVar.zza("/jsLoaded", new C1746as(this, zzajjVar, zzahrVar));
            zzayd zzaydVar = new zzayd();
            C1749av avVar = new C1749av(this, zzdqVar, zzahrVar, zzaydVar);
            zzaydVar.set(avVar);
            zzahrVar.zza("/requestReload", avVar);
            if (this.f10936c.endsWith(".js")) {
                zzahrVar.zzcv(this.f10936c);
            } else if (this.f10936c.startsWith("<html>")) {
                zzahrVar.zzcw(this.f10936c);
            } else {
                zzahrVar.zzcx(this.f10936c);
            }
            zzawb.zzdsr.postDelayed(new RunnableC1748au(this, zzajjVar, zzahrVar), C1752ay.f8277a);
        } catch (Throwable th) {
            zzavs.zzc("Error creating webview.", th);
            zzq.zzku().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzajjVar.reject();
        }
    }

    public final zzajf zzb(zzdq zzdqVar) {
        synchronized (this.f10934a) {
            synchronized (this.f10934a) {
                if (this.f10940g != null && this.f10941h == 0) {
                    this.f10940g.zza(new zzazp(this) { // from class: com.google.android.gms.internal.ads.ap

                        /* renamed from: a */
                        private final zzais f8089a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8089a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzazp
                        public final void zzh(Object obj) {
                            this.f8089a.m4394a((zzaif) obj);
                        }
                    }, C1740ao.f7977a);
                }
            }
            if (!(this.f10940g == null || this.f10940g.getStatus() == -1)) {
                if (this.f10941h == 0) {
                    return this.f10940g.zzsc();
                } else if (this.f10941h == 1) {
                    this.f10941h = 2;
                    m4389a((zzdq) null);
                    return this.f10940g.zzsc();
                } else if (this.f10941h == 2) {
                    return this.f10940g.zzsc();
                } else {
                    return this.f10940g.zzsc();
                }
            }
            this.f10941h = 2;
            this.f10940g = m4389a((zzdq) null);
            return this.f10940g.zzsc();
        }
    }
}
