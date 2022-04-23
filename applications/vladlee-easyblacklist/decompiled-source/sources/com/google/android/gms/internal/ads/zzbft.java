package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbft.class */
public abstract class zzbft extends zzgb implements zzbfq {
    public zzbft() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        switch (i) {
            case 1:
                performAction((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle performActionWithResponse = performActionWithResponse((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzge.zzb(parcel2, performActionWithResponse);
                return true;
            case 3:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                zza(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map userProperties = getUserProperties(parcel.readString(), parcel.readString(), zzge.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(userProperties);
                return true;
            case 6:
                int maxUserProperties = getMaxUserProperties(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(maxUserProperties);
                return true;
            case 7:
                setConditionalUserProperty((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List conditionalUserProperties = getConditionalUserProperties(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(conditionalUserProperties);
                return true;
            case 10:
                str = getAppInstanceId();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 11:
                str = getGmpAppId();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 12:
                long generateEventId = generateEventId();
                parcel2.writeNoException();
                parcel2.writeLong(generateEventId);
                return true;
            case 13:
                beginAdUnitExposure(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                endAdUnitExposure(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                str = getCurrentScreenName();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 17:
                str = getCurrentScreenClass();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 18:
                str = getAppIdOrigin();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
