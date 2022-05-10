package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaex.class */
public final class zzaex extends NativeContentAd {

    /* renamed from: a */
    public final zzaew f24070a;

    /* renamed from: c */
    public final zzaef f24072c;

    /* renamed from: b */
    public final List<NativeAd.Image> f24071b = new ArrayList();

    /* renamed from: d */
    public final VideoController f24073d = new VideoController();

    public zzaex(zzaew zzaewVar) {
        zzaef zzaefVar;
        zzaee zzaeeVar;
        IBinder iBinder;
        this.f24070a = zzaewVar;
        try {
            List i = zzaewVar.mo14228i();
            if (i != null) {
                for (Object obj : i) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzaeeVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzaeeVar = queryLocalInterface instanceof zzaee ? (zzaee) queryLocalInterface : new zzaeg(iBinder);
                    }
                    if (zzaeeVar != null) {
                        this.f24071b.add(new zzaef(zzaeeVar));
                    }
                }
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
        try {
            zzaee p0 = this.f24070a.mo14227p0();
            zzaefVar = null;
            if (p0 != null) {
                zzaefVar = new zzaef(p0);
            }
        } catch (RemoteException e2) {
            zzbbq.m15855b("", e2);
            zzaefVar = null;
        }
        this.f24072c = zzaefVar;
        try {
            if (this.f24070a.mo14234d() != null) {
                new zzadx(this.f24070a.mo14234d());
            }
        } catch (RemoteException e3) {
            zzbbq.m15855b("", e3);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: b */
    public final CharSequence mo16817b() {
        try {
            return this.f24070a.mo14238C();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: c */
    public final CharSequence mo16816c() {
        try {
            return this.f24070a.mo14230g();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: d */
    public final CharSequence mo16815d() {
        try {
            return this.f24070a.mo14231f();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: e */
    public final CharSequence mo16814e() {
        try {
            return this.f24070a.mo14233e();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: f */
    public final List<NativeAd.Image> mo16813f() {
        return this.f24071b;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: g */
    public final NativeAd.Image mo16812g() {
        return this.f24072c;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    /* renamed from: h */
    public final VideoController mo16811h() {
        try {
            if (this.f24070a.getVideoController() != null) {
                this.f24073d.m18088a(this.f24070a.getVideoController());
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("Exception occurred while getting video controller", e);
        }
        return this.f24073d;
    }

    /* renamed from: i */
    public final IObjectWrapper mo16818a() {
        try {
            return this.f24070a.mo14226v();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }
}
