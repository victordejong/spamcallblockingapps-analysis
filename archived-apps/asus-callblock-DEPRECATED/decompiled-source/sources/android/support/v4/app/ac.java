package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.aa;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/ac.class */
public final class ac {

    /* renamed from: b  reason: collision with root package name */
    private static Field f46b;
    private static boolean c;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f45a = new Object();
    private static final Object d = new Object();

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ac$a.class */
    public static final class a implements v, w {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f47a;

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f48b;
        private List<Bundle> c = new ArrayList();

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, int i4, CharSequence charSequence4, boolean z3, Bundle bundle, String str, boolean z4, String str2) {
            this.f47a = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z2).setPriority(i4).setProgress(i2, i3, z);
            this.f48b = new Bundle();
            if (bundle != null) {
                this.f48b.putAll(bundle);
            }
            if (z3) {
                this.f48b.putBoolean("android.support.localOnly", true);
            }
            if (str != null) {
                this.f48b.putString("android.support.groupKey", str);
                if (z4) {
                    this.f48b.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.f48b.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (str2 != null) {
                this.f48b.putString("android.support.sortKey", str2);
            }
        }

        @Override // android.support.v4.app.w
        public final Notification.Builder a() {
            return this.f47a;
        }

        @Override // android.support.v4.app.v
        public final void a(aa.a aVar) {
            this.c.add(ac.a(this.f47a, aVar));
        }

        @Override // android.support.v4.app.w
        public final Notification b() {
            Notification build = this.f47a.build();
            Bundle a2 = ac.a(build);
            Bundle bundle = new Bundle(this.f48b);
            for (String str : this.f48b.keySet()) {
                if (a2.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a2.putAll(bundle);
            SparseArray<Bundle> a3 = ac.a(this.c);
            if (a3 != null) {
                ac.a(build).putSparseParcelableArray("android.support.actionExtras", a3);
            }
            return build;
        }
    }

    public static Bundle a(Notification.Builder builder, aa.a aVar) {
        builder.addAction(aVar.a(), aVar.b(), aVar.c());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.e() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", ah.a(aVar.e()));
        }
        return bundle;
    }

    public static Bundle a(Notification notification) {
        Bundle bundle;
        synchronized (f45a) {
            if (c) {
                bundle = null;
            } else {
                try {
                    if (f46b == null) {
                        Field declaredField = Notification.class.getDeclaredField("extras");
                        if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                            Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                            c = true;
                            bundle = null;
                        } else {
                            declaredField.setAccessible(true);
                            f46b = declaredField;
                        }
                    }
                    Bundle bundle2 = (Bundle) f46b.get(notification);
                    bundle = bundle2;
                    if (bundle2 == null) {
                        bundle = new Bundle();
                        f46b.set(notification, bundle);
                    }
                } catch (IllegalAccessException e) {
                    Log.e("NotificationCompat", "Unable to access notification extras", e);
                    c = true;
                    bundle = null;
                    return bundle;
                } catch (NoSuchFieldException e2) {
                    Log.e("NotificationCompat", "Unable to access notification extras", e2);
                    c = true;
                    bundle = null;
                    return bundle;
                }
            }
        }
        return bundle;
    }

    public static SparseArray<Bundle> a(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            sparseArray = sparseArray;
            if (bundle != null) {
                sparseArray = sparseArray;
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static void a(w wVar, CharSequence charSequence, boolean z, CharSequence charSequence2, Bitmap bitmap, Bitmap bitmap2, boolean z2) {
        Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(wVar.a()).setBigContentTitle(charSequence).bigPicture(bitmap);
        if (z2) {
            bigPicture.bigLargeIcon(bitmap2);
        }
        if (z) {
            bigPicture.setSummaryText(charSequence2);
        }
    }

    public static void a(w wVar, CharSequence charSequence, boolean z, CharSequence charSequence2, CharSequence charSequence3) {
        Notification.BigTextStyle bigText = new Notification.BigTextStyle(wVar.a()).setBigContentTitle(charSequence).bigText(charSequence3);
        if (z) {
            bigText.setSummaryText(charSequence2);
        }
    }

    public static void a(w wVar, CharSequence charSequence, boolean z, CharSequence charSequence2, ArrayList<CharSequence> arrayList) {
        Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(wVar.a()).setBigContentTitle(charSequence);
        if (z) {
            bigContentTitle.setSummaryText(charSequence2);
        }
        Iterator<CharSequence> it = arrayList.iterator();
        while (it.hasNext()) {
            bigContentTitle.addLine(it.next());
        }
    }
}
