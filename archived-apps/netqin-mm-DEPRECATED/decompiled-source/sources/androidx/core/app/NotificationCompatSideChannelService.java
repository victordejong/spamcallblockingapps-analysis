package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import p000a.p001a.p003b.p004a.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatSideChannelService.class */
public abstract class NotificationCompatSideChannelService extends Service {

    /* renamed from: androidx.core.app.NotificationCompatSideChannelService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatSideChannelService$a.class */
    public class BinderC0201a extends AbstractC0007a.AbstractBinderC0008a {
        public BinderC0201a() {
        }

        @Override // p000a.p001a.p003b.p004a.AbstractC0007a
        /* renamed from: a */
        public void mo38585a(String str, int i, String str2) throws RemoteException {
            NotificationCompatSideChannelService.this.m38589a(Binder.getCallingUid(), str);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.m38587a(str, i, str2);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // p000a.p001a.p003b.p004a.AbstractC0007a
        /* renamed from: a */
        public void mo38584a(String str, int i, String str2, Notification notification) throws RemoteException {
            NotificationCompatSideChannelService.this.m38589a(Binder.getCallingUid(), str);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.m38586a(str, i, str2, notification);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // p000a.p001a.p003b.p004a.AbstractC0007a
        /* renamed from: m */
        public void mo38583m(String str) {
            NotificationCompatSideChannelService.this.m38589a(Binder.getCallingUid(), str);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.m38588a(str);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* renamed from: a */
    public void m38589a(int i, String str) {
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return;
            }
        }
        throw new SecurityException("NotificationSideChannelService: Uid " + i + " is not authorized for package " + str);
    }

    /* renamed from: a */
    public abstract void m38588a(String str);

    /* renamed from: a */
    public abstract void m38587a(String str, int i, String str2);

    /* renamed from: a */
    public abstract void m38586a(String str, int i, String str2, Notification notification);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!intent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL") || Build.VERSION.SDK_INT > 19) {
            return null;
        }
        return new BinderC0201a();
    }
}
