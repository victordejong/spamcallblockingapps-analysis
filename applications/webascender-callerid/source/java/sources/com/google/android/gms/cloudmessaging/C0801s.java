package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* renamed from: com.google.android.gms.cloudmessaging.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/s.class */
final class C0801s {

    /* renamed from: a */
    private final Messenger f3310a;

    /* renamed from: b */
    private final C0787e f3311b;

    public C0801s(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f3310a = new Messenger(iBinder);
            this.f3311b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f3311b = new C0787e(iBinder);
            this.f3310a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    public final void m3707a(Message message) throws RemoteException {
        Messenger messenger = this.f3310a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        C0787e c0787e = this.f3311b;
        if (c0787e == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        c0787e.m3722b(message);
    }
}
