package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.bg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bg.class */
public final class C1761bg implements zzazp<zzaif> {

    /* renamed from: a */
    final /* synthetic */ zzajj f8292a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1761bg(zzajj zzajjVar) {
        this.f8292a = zzajjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazp
    public final /* synthetic */ void zzh(zzaif zzaifVar) {
        final zzaif zzaifVar2 = zzaifVar;
        zzazd.zzdwi.execute(new Runnable(this, zzaifVar2) { // from class: com.google.android.gms.internal.ads.bf

            /* renamed from: a */
            private final C1761bg f8290a;

            /* renamed from: b */
            private final zzaif f8291b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8290a = this;
                this.f8291b = zzaifVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaxh zzaxhVar;
                C1761bg bgVar = this.f8290a;
                zzaif zzaifVar3 = this.f8291b;
                zzaxhVar = bgVar.f8292a.f10951b;
                zzaxhVar.zzh(zzaifVar3);
                zzaifVar3.destroy();
            }
        });
    }
}
