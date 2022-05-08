package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.ia */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ia.class */
public abstract class AbstractBinderC7278ia extends BinderC7453x2 implements AbstractC7265ha {
    public AbstractBinderC7278ia() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7291ja jaVar = null;
        AbstractC7291ja jaVar2 = null;
        AbstractC7291ja jaVar3 = null;
        AbstractC7291ja jaVar4 = null;
        AbstractC7291ja jaVar5 = null;
        switch (i) {
            case 1:
                AbstractC7106b a = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                zzjo zzjoVar = (zzjo) C7465y2.m20509a(parcel, zzjo.CREATOR);
                zzjk zzjkVar = (zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    jaVar4 = queryLocalInterface instanceof AbstractC7291ja ? (AbstractC7291ja) queryLocalInterface : new C7316la(readStrongBinder);
                }
                mo20436a(a, zzjoVar, zzjkVar, readString, jaVar4);
                parcel2.writeNoException();
                return true;
            case 2:
                AbstractC7106b F0 = mo20444F0();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, F0);
                return true;
            case 3:
                AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                zzjk zzjkVar2 = (zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    jaVar3 = queryLocalInterface2 instanceof AbstractC7291ja ? (AbstractC7291ja) queryLocalInterface2 : new C7316la(readStrongBinder2);
                }
                mo20439a(a2, zzjkVar2, readString2, jaVar3);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                AbstractC7106b a3 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                zzjo zzjoVar2 = (zzjo) C7465y2.m20509a(parcel, zzjo.CREATOR);
                zzjk zzjkVar3 = (zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    jaVar2 = queryLocalInterface3 instanceof AbstractC7291ja ? (AbstractC7291ja) queryLocalInterface3 : new C7316la(readStrongBinder3);
                }
                mo20435a(a3, zzjoVar2, zzjkVar3, readString3, readString4, jaVar2);
                parcel2.writeNoException();
                return true;
            case 7:
                AbstractC7106b a4 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                zzjk zzjkVar4 = (zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    jaVar = queryLocalInterface4 instanceof AbstractC7291ja ? (AbstractC7291ja) queryLocalInterface4 : new C7316la(readStrongBinder4);
                }
                mo20438a(a4, zzjkVar4, readString5, readString6, jaVar);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                mo20440a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), (zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR), parcel.readString(), AbstractBinderC7269i1.m20900a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo20442a((zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean isInitialized = isInitialized();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, isInitialized);
                return true;
            case 14:
                AbstractC7106b a5 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                zzjk zzjkVar5 = (zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    jaVar5 = queryLocalInterface5 instanceof AbstractC7291ja ? (AbstractC7291ja) queryLocalInterface5 : new C7316la(readStrongBinder5);
                }
                mo20437a(a5, zzjkVar5, readString7, readString8, jaVar5, (zzpy) C7465y2.m20509a(parcel, zzpy.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                AbstractC7328ma B0 = mo20445B0();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, B0);
                return true;
            case 16:
                AbstractC7352oa w0 = mo20428w0();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, w0);
                return true;
            case 17:
                Bundle zzoa = zzoa();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, zzoa);
                return true;
            case 18:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, interstitialAdapterInfo);
                return true;
            case 19:
                Bundle j0 = mo20429j0();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, j0);
                return true;
            case 20:
                mo20441a((zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                mo20427z(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean i0 = mo20430i0();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, i0);
                return true;
            case 23:
                mo20434a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractBinderC7269i1.m20900a(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                AbstractC7326m8 b0 = mo20432b0();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, b0);
                return true;
            case 25:
                setImmersiveMode(C7465y2.m20511a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                AbstractC7359p5 videoController = getVideoController();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, videoController);
                return true;
            case 27:
                AbstractC7377qa W = mo20443W();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, W);
                return true;
            default:
                return false;
        }
    }
}
