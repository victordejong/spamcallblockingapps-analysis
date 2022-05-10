package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zay.class */
public final class zay extends RemoteCreator<zak> {

    /* renamed from: c */
    public static final zay f23486c = new zay();

    public zay() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    /* renamed from: b */
    public static View m17172b(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        return f23486c.m17173a(context, i, i2);
    }

    /* renamed from: a */
    public final View m17173a(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        try {
            zaw zawVar = new zaw(i, i2, null);
            return (View) ObjectWrapper.m17021Q(m17019a(context).mo17180a(ObjectWrapper.m17020a(context), zawVar));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i);
            sb.append(" and color ");
            sb.append(i2);
            throw new RemoteCreator.RemoteCreatorException(sb.toString(), e);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zak mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof zak ? (zak) queryLocalInterface : new zam(iBinder);
    }
}
