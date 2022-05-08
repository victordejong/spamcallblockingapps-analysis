package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {
    private final String zzia;
    private T zzib;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException.class */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(String str) {
            super(str);
        }

        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public RemoteCreator(String str) {
        this.zzia = str;
    }

    @KeepForSdk
    protected abstract T getRemoteCreator(IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public final T getRemoteCreatorInstance(Context context) throws RemoteCreatorException {
        if (this.zzib == null) {
            Preconditions.checkNotNull(context);
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.zzib = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.zzia).newInstance());
            } catch (ClassNotFoundException e) {
                throw new RemoteCreatorException("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new RemoteCreatorException("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new RemoteCreatorException("Could not instantiate creator.", e3);
            }
        }
        return this.zzib;
    }
}
