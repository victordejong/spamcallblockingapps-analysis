package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper.class */
public interface IFragmentWrapper extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub.class */
    public static abstract class Stub extends zzb implements IFragmentWrapper {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements IFragmentWrapper {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IFragmentWrapper");
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final Bundle getArguments() {
                Parcel a = m2930a(3, m2931a());
                Bundle bundle = (Bundle) zzc.zza(a, Bundle.CREATOR);
                a.recycle();
                return bundle;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final int getId() {
                Parcel a = m2930a(4, m2931a());
                int readInt = a.readInt();
                a.recycle();
                return readInt;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean getRetainInstance() {
                Parcel a = m2930a(7, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final String getTag() {
                Parcel a = m2930a(8, m2931a());
                String readString = a.readString();
                a.recycle();
                return readString;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final int getTargetRequestCode() {
                Parcel a = m2930a(10, m2931a());
                int readInt = a.readInt();
                a.recycle();
                return readInt;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean getUserVisibleHint() {
                Parcel a = m2930a(11, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isAdded() {
                Parcel a = m2930a(13, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isDetached() {
                Parcel a = m2930a(14, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isHidden() {
                Parcel a = m2930a(15, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isInLayout() {
                Parcel a = m2930a(16, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isRemoving() {
                Parcel a = m2930a(17, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isResumed() {
                Parcel a = m2930a(18, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isVisible() {
                Parcel a = m2930a(19, m2931a());
                boolean zza = zzc.zza(a);
                a.recycle();
                return zza;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void setHasOptionsMenu(boolean z) {
                Parcel a = m2931a();
                zzc.writeBoolean(a, z);
                m2928b(21, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void setMenuVisibility(boolean z) {
                Parcel a = m2931a();
                zzc.writeBoolean(a, z);
                m2928b(22, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void setRetainInstance(boolean z) {
                Parcel a = m2931a();
                zzc.writeBoolean(a, z);
                m2928b(23, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void setUserVisibleHint(boolean z) {
                Parcel a = m2931a();
                zzc.writeBoolean(a, z);
                m2928b(24, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void startActivity(Intent intent) {
                Parcel a = m2931a();
                zzc.zza(a, intent);
                m2928b(25, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void startActivityForResult(Intent intent, int i) {
                Parcel a = m2931a();
                zzc.zza(a, intent);
                a.writeInt(i);
                m2928b(26, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void zza(IObjectWrapper iObjectWrapper) {
                Parcel a = m2931a();
                zzc.zza(a, iObjectWrapper);
                m2928b(20, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IObjectWrapper zzae() {
                Parcel a = m2930a(2, m2931a());
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
                a.recycle();
                return asInterface;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IFragmentWrapper zzaf() {
                Parcel a = m2930a(5, m2931a());
                IFragmentWrapper asInterface = Stub.asInterface(a.readStrongBinder());
                a.recycle();
                return asInterface;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IObjectWrapper zzag() {
                Parcel a = m2930a(6, m2931a());
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
                a.recycle();
                return asInterface;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IFragmentWrapper zzah() {
                Parcel a = m2930a(9, m2931a());
                IFragmentWrapper asInterface = Stub.asInterface(a.readStrongBinder());
                a.recycle();
                return asInterface;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IObjectWrapper zzai() {
                Parcel a = m2930a(12, m2931a());
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
                a.recycle();
                return asInterface;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void zzb(IObjectWrapper iObjectWrapper) {
                Parcel a = m2931a();
                zzc.zza(a, iObjectWrapper);
                m2928b(27, a);
            }
        }

        public Stub() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        public static IFragmentWrapper asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
            return queryLocalInterface instanceof IFragmentWrapper ? (IFragmentWrapper) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        /* renamed from: a */
        protected final boolean mo2927a(int i, Parcel parcel, Parcel parcel2) {
            IInterface iInterface;
            int i2;
            boolean z;
            switch (i) {
                case 2:
                    iInterface = zzae();
                    parcel2.writeNoException();
                    zzc.zza(parcel2, iInterface);
                    return true;
                case 3:
                    Bundle arguments = getArguments();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, arguments);
                    return true;
                case 4:
                    i2 = getId();
                    parcel2.writeNoException();
                    parcel2.writeInt(i2);
                    return true;
                case 5:
                    iInterface = zzaf();
                    parcel2.writeNoException();
                    zzc.zza(parcel2, iInterface);
                    return true;
                case 6:
                    iInterface = zzag();
                    parcel2.writeNoException();
                    zzc.zza(parcel2, iInterface);
                    return true;
                case 7:
                    z = getRetainInstance();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 8:
                    String tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeString(tag);
                    return true;
                case 9:
                    iInterface = zzah();
                    parcel2.writeNoException();
                    zzc.zza(parcel2, iInterface);
                    return true;
                case 10:
                    i2 = getTargetRequestCode();
                    parcel2.writeNoException();
                    parcel2.writeInt(i2);
                    return true;
                case 11:
                    z = getUserVisibleHint();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 12:
                    iInterface = zzai();
                    parcel2.writeNoException();
                    zzc.zza(parcel2, iInterface);
                    return true;
                case 13:
                    z = isAdded();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 14:
                    z = isDetached();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 15:
                    z = isHidden();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 16:
                    z = isInLayout();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 17:
                    z = isRemoving();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 18:
                    z = isResumed();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 19:
                    z = isVisible();
                    parcel2.writeNoException();
                    zzc.writeBoolean(parcel2, z);
                    return true;
                case 20:
                    zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    setHasOptionsMenu(zzc.zza(parcel));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    setMenuVisibility(zzc.zza(parcel));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    setRetainInstance(zzc.zza(parcel));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    setUserVisibleHint(zzc.zza(parcel));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    startActivity((Intent) zzc.zza(parcel, Intent.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    startActivityForResult((Intent) zzc.zza(parcel, Intent.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    Bundle getArguments();

    int getId();

    boolean getRetainInstance();

    String getTag();

    int getTargetRequestCode();

    boolean getUserVisibleHint();

    boolean isAdded();

    boolean isDetached();

    boolean isHidden();

    boolean isInLayout();

    boolean isRemoving();

    boolean isResumed();

    boolean isVisible();

    void setHasOptionsMenu(boolean z);

    void setMenuVisibility(boolean z);

    void setRetainInstance(boolean z);

    void setUserVisibleHint(boolean z);

    void startActivity(Intent intent);

    void startActivityForResult(Intent intent, int i);

    void zza(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzae();

    IFragmentWrapper zzaf();

    IObjectWrapper zzag();

    IFragmentWrapper zzah();

    IObjectWrapper zzai();

    void zzb(IObjectWrapper iObjectWrapper);
}
