package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacb.class */
public final class zzacb extends NativeAd.AdChoicesInfo {

    /* renamed from: a */
    private final zzaca f10846a;

    /* renamed from: b */
    private final List<NativeAd.Image> f10847b = new ArrayList();

    /* renamed from: c */
    private String f10848c;

    public zzacb(zzaca zzacaVar) {
        zzaci zzaciVar;
        IBinder iBinder;
        this.f10846a = zzacaVar;
        try {
            this.f10848c = this.f10846a.getText();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            this.f10848c = "";
        }
        try {
            for (zzaci zzaciVar2 : zzacaVar.zzqx()) {
                if (!(zzaciVar2 instanceof IBinder) || (iBinder = (IBinder) zzaciVar2) == null) {
                    zzaciVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzaciVar = queryLocalInterface instanceof zzaci ? (zzaci) queryLocalInterface : new zzack(iBinder);
                }
                if (zzaciVar != null) {
                    this.f10847b.add(new zzacj(zzaciVar));
                }
            }
        } catch (RemoteException e2) {
            zzayu.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.f10847b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f10848c;
    }
}
