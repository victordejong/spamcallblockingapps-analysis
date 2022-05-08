package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqi.class */
public final class aqi implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    final /* synthetic */ zzse f8167a;

    /* renamed from: b */
    private final /* synthetic */ zzry f8168b;

    /* renamed from: c */
    private final /* synthetic */ zzazl f8169c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqi(zzse zzseVar, zzry zzryVar, zzazl zzazlVar) {
        this.f8167a = zzseVar;
        this.f8168b = zzryVar;
        this.f8169c = zzazlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        boolean z;
        final zzrz zzrzVar;
        obj = this.f8167a.f15453d;
        synchronized (obj) {
            z = this.f8167a.f15451b;
            if (!z) {
                this.f8167a.f15451b = true;
                zzrzVar = this.f8167a.f15450a;
                if (zzrzVar != null) {
                    zzdhd zzdhdVar = zzazd.zzdwe;
                    final zzry zzryVar = this.f8168b;
                    final zzazl zzazlVar = this.f8169c;
                    final zzdhe<?> zzf = zzdhdVar.zzf(new Runnable(this, zzrzVar, zzryVar, zzazlVar) { // from class: com.google.android.gms.internal.ads.aql

                        /* renamed from: a */
                        private final aqi f8173a;

                        /* renamed from: b */
                        private final zzrz f8174b;

                        /* renamed from: c */
                        private final zzry f8175c;

                        /* renamed from: d */
                        private final zzazl f8176d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8173a = this;
                            this.f8174b = zzrzVar;
                            this.f8175c = zzryVar;
                            this.f8176d = zzazlVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            aqi aqiVar = this.f8173a;
                            zzrz zzrzVar2 = this.f8174b;
                            zzry zzryVar2 = this.f8175c;
                            zzazl zzazlVar2 = this.f8176d;
                            try {
                                zzrx zza = zzrzVar2.zzms().zza(zzryVar2);
                                if (!zza.zzmp()) {
                                    zzazlVar2.setException(new RuntimeException("No entry contents."));
                                    zzse.m3077a(aqiVar.f8167a);
                                    return;
                                }
                                aqn aqnVar = new aqn(aqiVar, zza.zzmq());
                                int read = aqnVar.read();
                                if (read != -1) {
                                    aqnVar.unread(read);
                                    zzazlVar2.set(aqnVar);
                                    return;
                                }
                                throw new IOException("Unable to read from cache.");
                            } catch (RemoteException | IOException e) {
                                zzavs.zzc("Unable to obtain a cache service instance.", e);
                                zzazlVar2.setException(e);
                                zzse.m3077a(aqiVar.f8167a);
                            }
                        }
                    });
                    zzazl zzazlVar2 = this.f8169c;
                    final zzazl zzazlVar3 = this.f8169c;
                    zzazlVar2.addListener(new Runnable(zzazlVar3, zzf) { // from class: com.google.android.gms.internal.ads.aqk

                        /* renamed from: a */
                        private final zzazl f8171a;

                        /* renamed from: b */
                        private final Future f8172b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8171a = zzazlVar3;
                            this.f8172b = zzf;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzazl zzazlVar4 = this.f8171a;
                            Future future = this.f8172b;
                            if (zzazlVar4.isCancelled()) {
                                future.cancel(true);
                            }
                        }
                    }, zzazd.zzdwj);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
