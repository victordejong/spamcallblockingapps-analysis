package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.p001v4.app.AbstractC0001a;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class C0193m {

    /* renamed from: d */
    private static String f1286d;

    /* renamed from: g */
    private static ServiceConnectionC0195d f1289g;

    /* renamed from: a */
    private final Context f1290a;

    /* renamed from: b */
    private final NotificationManager f1291b;

    /* renamed from: c */
    private static final Object f1285c = new Object();

    /* renamed from: e */
    private static Set<String> f1287e = new HashSet();

    /* renamed from: f */
    private static final Object f1288f = new Object();

    /* renamed from: androidx.core.app.m$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$c.class */
    private static class C0194c {

        /* renamed from: a */
        final ComponentName f1292a;

        /* renamed from: b */
        final IBinder f1293b;

        C0194c(ComponentName componentName, IBinder iBinder) {
            this.f1292a = componentName;
            this.f1293b = iBinder;
        }
    }

    /* renamed from: androidx.core.app.m$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$d.class */
    public static class ServiceConnectionC0195d implements Handler.Callback, ServiceConnection {

        /* renamed from: a */
        private final Context f1294a;

        /* renamed from: b */
        private final HandlerThread f1295b;

        /* renamed from: c */
        private final Handler f1296c;

        /* renamed from: d */
        private final Map<ComponentName, C0196a> f1297d = new HashMap();

        /* renamed from: e */
        private Set<String> f1298e = new HashSet();

        /* renamed from: androidx.core.app.m$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/m$d$a.class */
        public static class C0196a {

            /* renamed from: a */
            final ComponentName f1299a;

            /* renamed from: c */
            AbstractC0001a f1301c;

            /* renamed from: b */
            boolean f1300b = false;

            /* renamed from: d */
            ArrayDeque<AbstractC0197e> f1302d = new ArrayDeque<>();

            /* renamed from: e */
            int f1303e = 0;

            C0196a(ComponentName componentName) {
                this.f1299a = componentName;
            }
        }

        ServiceConnectionC0195d(Context context) {
            this.f1294a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f1295b = handlerThread;
            handlerThread.start();
            this.f1296c = new Handler(handlerThread.getLooper(), this);
        }

        /* renamed from: a */
        private boolean m6100a(C0196a c0196a) {
            if (c0196a.f1300b) {
                return true;
            }
            boolean bindService = this.f1294a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(c0196a.f1299a), this, 33);
            c0196a.f1300b = bindService;
            if (bindService) {
                c0196a.f1303e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + c0196a.f1299a);
                this.f1294a.unbindService(this);
            }
            return c0196a.f1300b;
        }

        /* renamed from: b */
        private void m6099b(C0196a c0196a) {
            if (c0196a.f1300b) {
                this.f1294a.unbindService(this);
                c0196a.f1300b = false;
            }
            c0196a.f1301c = null;
        }

        /* renamed from: c */
        private void m6098c(AbstractC0197e abstractC0197e) {
            m6091j();
            for (C0196a c0196a : this.f1297d.values()) {
                c0196a.f1302d.add(abstractC0197e);
                m6094g(c0196a);
            }
        }

        /* renamed from: d */
        private void m6097d(ComponentName componentName) {
            C0196a c0196a = this.f1297d.get(componentName);
            if (c0196a != null) {
                m6094g(c0196a);
            }
        }

        /* renamed from: e */
        private void m6096e(ComponentName componentName, IBinder iBinder) {
            C0196a c0196a = this.f1297d.get(componentName);
            if (c0196a != null) {
                c0196a.f1301c = AbstractC0001a.a.q(iBinder);
                c0196a.f1303e = 0;
                m6094g(c0196a);
            }
        }

        /* renamed from: f */
        private void m6095f(ComponentName componentName) {
            C0196a c0196a = this.f1297d.get(componentName);
            if (c0196a != null) {
                m6099b(c0196a);
            }
        }

        /* renamed from: g */
        private void m6094g(C0196a c0196a) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + c0196a.f1299a + ", " + c0196a.f1302d.size() + " queued tasks");
            }
            if (c0196a.f1302d.isEmpty()) {
                return;
            }
            if (!m6100a(c0196a) || c0196a.f1301c == null) {
                m6092i(c0196a);
                return;
            }
            while (true) {
                AbstractC0197e peek = c0196a.f1302d.peek();
                if (peek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + peek);
                    }
                    peek.m6090a(c0196a.f1301c);
                    c0196a.f1302d.remove();
                } catch (DeadObjectException e) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + c0196a.f1299a);
                    }
                } catch (RemoteException e2) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + c0196a.f1299a, e2);
                }
            }
            if (c0196a.f1302d.isEmpty()) {
                return;
            }
            m6092i(c0196a);
        }

        /* renamed from: i */
        private void m6092i(C0196a c0196a) {
            if (this.f1296c.hasMessages(3, c0196a.f1299a)) {
                return;
            }
            int i = c0196a.f1303e + 1;
            c0196a.f1303e = i;
            if (i <= 6) {
                int i2 = (1 << (i - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i2 + " ms");
                }
                this.f1296c.sendMessageDelayed(this.f1296c.obtainMessage(3, c0196a.f1299a), i2);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + c0196a.f1302d.size() + " tasks to " + c0196a.f1299a + " after " + c0196a.f1303e + " retries");
            c0196a.f1302d.clear();
        }

        /* renamed from: j */
        private void m6091j() {
            Set<String> m6105e = C0193m.m6105e(this.f1294a);
            if (m6105e.equals(this.f1298e)) {
                return;
            }
            this.f1298e = m6105e;
            List<ResolveInfo> queryIntentServices = this.f1294a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (m6105e.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f1297d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f1297d.put(componentName2, new C0196a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, C0196a>> it = this.f1297d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, C0196a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    m6099b(next.getValue());
                    it.remove();
                }
            }
        }

        /* renamed from: h */
        public void m6093h(AbstractC0197e abstractC0197e) {
            this.f1296c.obtainMessage(0, abstractC0197e).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m6098c((AbstractC0197e) message.obj);
                return true;
            } else if (i == 1) {
                C0194c c0194c = (C0194c) message.obj;
                m6096e(c0194c.f1292a, c0194c.f1293b);
                return true;
            } else if (i == 2) {
                m6095f((ComponentName) message.obj);
                return true;
            } else if (i != 3) {
                return false;
            } else {
                m6097d((ComponentName) message.obj);
                return true;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f1296c.obtainMessage(1, new C0194c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f1296c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* renamed from: androidx.core.app.m$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$e.class */
    public interface AbstractC0197e {
        /* renamed from: a */
        void m6090a(AbstractC0001a abstractC0001a) throws RemoteException;
    }

    private C0193m(Context context) {
        this.f1290a = context;
        this.f1291b = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: d */
    public static C0193m m6106d(Context context) {
        return new C0193m(context);
    }

    /* renamed from: e */
    public static Set<String> m6105e(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f1285c) {
            if (string != null) {
                if (!string.equals(f1286d)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f1287e = hashSet;
                    f1286d = string;
                }
            }
            set = f1287e;
        }
        return set;
    }

    /* renamed from: h */
    private void m6102h(AbstractC0197e abstractC0197e) {
        synchronized (f1288f) {
            if (f1289g == null) {
                f1289g = new ServiceConnectionC0195d(this.f1290a.getApplicationContext());
            }
            f1289g.m6093h(abstractC0197e);
        }
    }

    /* renamed from: i */
    private static boolean m6101i(Notification notification) {
        Bundle m6166a = C0187j.m6166a(notification);
        return m6166a != null && m6166a.getBoolean("android.support.useSideChannel");
    }

    /* renamed from: a */
    public boolean m6109a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return this.f1291b.areNotificationsEnabled();
        }
        boolean z = true;
        if (i >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) this.f1290a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f1290a.getApplicationInfo();
            String packageName = this.f1290a.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                z = ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m6108b(int i) {
        m6107c(null, i);
    }

    /* renamed from: c */
    public void m6107c(String str, int i) {
        this.f1291b.cancel(str, i);
        if (Build.VERSION.SDK_INT <= 19) {
            m6102h(new a(this.f1290a.getPackageName(), i, str));
        }
    }

    /* renamed from: f */
    public void m6104f(int i, Notification notification) {
        m6103g(null, i, notification);
    }

    /* renamed from: g */
    public void m6103g(String str, int i, Notification notification) {
        if (!m6101i(notification)) {
            this.f1291b.notify(str, i, notification);
            return;
        }
        m6102h(new b(this.f1290a.getPackageName(), i, str, notification));
        this.f1291b.cancel(str, i);
    }
}
