package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* renamed from: com.google.firebase.iid.j */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/j.class */
final class C3219j {

    /* renamed from: a */
    private final Messenger f19119a;

    /* renamed from: b */
    private final zzm f19120b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3219j(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f19119a = new Messenger(iBinder);
            this.f19120b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f19120b = new zzm(iBinder);
            this.f19119a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m472a(Message message) {
        Messenger messenger = this.f19119a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzm zzmVar = this.f19120b;
        if (zzmVar != null) {
            zzmVar.m425a(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
