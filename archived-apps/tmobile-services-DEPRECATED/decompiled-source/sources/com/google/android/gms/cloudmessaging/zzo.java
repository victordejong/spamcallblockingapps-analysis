package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzo.class */
final class zzo {
    @Nullable

    /* renamed from: a */
    private final Messenger f6944a;
    @Nullable

    /* renamed from: b */
    private final zza f6945b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f6944a = new Messenger(iBinder);
            this.f6945b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f6945b = new zza(iBinder);
            this.f6944a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m15103a(Message message) throws RemoteException {
        Messenger messenger = this.f6944a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zza zzaVar = this.f6945b;
        if (zzaVar != null) {
            zzaVar.m15118b(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
