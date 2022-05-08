package com.google.android.gms.analytics.internal;

import com.google.android.gms.analytics.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzz.class */
public class zzz extends zzq<zzaa> {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzz$a.class */
    private static final class a implements zzq.zza<zzaa> {

        /* renamed from: a  reason: collision with root package name */
        private final zzf f3886a;

        /* renamed from: b  reason: collision with root package name */
        private final zzaa f3887b = new zzaa();

        public a(zzf zzfVar) {
            this.f3886a = zzfVar;
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzc(String str, int i) {
            if ("ga_dispatchPeriod".equals(str)) {
                this.f3887b.zzYy = i;
            } else {
                this.f3886a.zzlR().zzd("Int xml configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzg(String str, boolean z) {
            if ("ga_dryRun".equals(str)) {
                this.f3887b.zzYz = z ? 1 : 0;
                return;
            }
            this.f3886a.zzlR().zzd("Bool xml configuration name not recognized", str);
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final /* synthetic */ zzaa zzmV() {
            return this.f3887b;
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzn(String str, String str2) {
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzo(String str, String str2) {
            if ("ga_appName".equals(str)) {
                this.f3887b.zzVd = str2;
            } else if ("ga_appVersion".equals(str)) {
                this.f3887b.zzVe = str2;
            } else if ("ga_logLevel".equals(str)) {
                this.f3887b.zzYx = str2;
            } else {
                this.f3886a.zzlR().zzd("String xml configuration name not recognized", str);
            }
        }
    }

    public zzz(zzf zzfVar) {
        super(zzfVar, new a(zzfVar));
    }
}
