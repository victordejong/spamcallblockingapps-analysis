package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0187j;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.core.app.l */
/* loaded from: classes-dex2jar.jar:androidx/core/app/l.class */
public class C0192l {

    /* renamed from: a */
    private static final Object f1282a = new Object();

    /* renamed from: b */
    private static Field f1283b;

    /* renamed from: c */
    private static boolean f1284c;

    /* renamed from: a */
    public static SparseArray<Bundle> m6115a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        int i = 0;
        while (i < size) {
            Bundle bundle = list.get(i);
            SparseArray<Bundle> sparseArray2 = sparseArray;
            if (bundle != null) {
                sparseArray2 = sparseArray;
                if (sparseArray == null) {
                    sparseArray2 = new SparseArray<>();
                }
                sparseArray2.put(i, bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        return sparseArray;
    }

    /* renamed from: b */
    static Bundle m6114b(C0187j.C0188a c0188a) {
        Bundle bundle = new Bundle();
        IconCompat m6161e = c0188a.m6161e();
        bundle.putInt("icon", m6161e != null ? m6161e.c() : 0);
        bundle.putCharSequence("title", c0188a.m6157i());
        bundle.putParcelable("actionIntent", c0188a.m6165a());
        Bundle bundle2 = c0188a.m6162d() != null ? new Bundle(c0188a.m6162d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", c0188a.m6164b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m6111e(c0188a.m6160f()));
        bundle.putBoolean("showsUserInterface", c0188a.m6158h());
        bundle.putInt("semanticAction", c0188a.m6159g());
        return bundle;
    }

    /* renamed from: c */
    public static Bundle m6113c(Notification notification) {
        synchronized (f1282a) {
            if (f1284c) {
                return null;
            }
            try {
                if (f1283b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f1284c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f1283b = declaredField;
                }
                Bundle bundle = (Bundle) f1283b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f1283b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f1284c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f1284c = true;
                return null;
            }
        }
    }

    /* renamed from: d */
    private static Bundle m6112d(C0198n c0198n) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", c0198n.m6081i());
        bundle.putCharSequence("label", c0198n.m6082h());
        bundle.putCharSequenceArray("choices", c0198n.m6085e());
        bundle.putBoolean("allowFreeFormInput", c0198n.m6087c());
        bundle.putBundle("extras", c0198n.m6083g());
        Set<String> m6086d = c0198n.m6086d();
        if (m6086d != null && !m6086d.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(m6086d.size());
            for (String str : m6086d) {
                arrayList.add(str);
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    /* renamed from: e */
    private static Bundle[] m6111e(C0198n[] c0198nArr) {
        if (c0198nArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c0198nArr.length];
        for (int i = 0; i < c0198nArr.length; i++) {
            bundleArr[i] = m6112d(c0198nArr[i]);
        }
        return bundleArr;
    }

    /* renamed from: f */
    public static Bundle m6110f(Notification.Builder builder, C0187j.C0188a c0188a) {
        IconCompat m6161e = c0188a.m6161e();
        builder.addAction(m6161e != null ? m6161e.c() : 0, c0188a.m6157i(), c0188a.m6165a());
        Bundle bundle = new Bundle(c0188a.m6162d());
        if (c0188a.m6160f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m6111e(c0188a.m6160f()));
        }
        if (c0188a.m6163c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m6111e(c0188a.m6163c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c0188a.m6164b());
        return bundle;
    }
}
