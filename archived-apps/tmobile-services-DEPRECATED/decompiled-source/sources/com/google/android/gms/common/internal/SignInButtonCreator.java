package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonCreator.class */
public final class SignInButtonCreator extends RemoteCreator<ISignInButtonCreator> {

    /* renamed from: c */
    private static final SignInButtonCreator f7529c = new SignInButtonCreator();

    private SignInButtonCreator() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    /* renamed from: c */
    public static View m14508c(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        return f7529c.m14506e(context, i, i2);
    }

    /* renamed from: e */
    private final View m14506e(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2, null);
            return (View) ObjectWrapper.m14258c(m14255b(context).mo14434S(ObjectWrapper.m14257f(context), signInButtonConfig));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i);
            sb.append(" and color ");
            sb.append(i2);
            throw new RemoteCreator.RemoteCreatorException(sb.toString(), e);
        }
    }

    /* renamed from: d */
    public final ISignInButtonCreator mo14256a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof ISignInButtonCreator ? (ISignInButtonCreator) queryLocalInterface : new zah(iBinder);
    }
}
