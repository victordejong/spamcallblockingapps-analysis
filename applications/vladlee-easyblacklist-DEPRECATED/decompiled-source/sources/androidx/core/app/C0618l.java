package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.C0612j;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.l */
/* loaded from: classes-dex2jar.jar:androidx/core/app/l.class */
public final class C0618l {

    /* renamed from: b */
    private static Field f2869b;

    /* renamed from: c */
    private static boolean f2870c;

    /* renamed from: a */
    private static final Object f2868a = new Object();

    /* renamed from: d */
    private static final Object f2871d = new Object();

    /* renamed from: a */
    public static Bundle m8709a(Notification.Builder builder, C0612j.C0613a aVar) {
        builder.addAction(aVar.f2807c, aVar.f2808d, aVar.f2809e);
        Bundle bundle = new Bundle(aVar.f2805a);
        if (aVar.m8735b() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m8705a(aVar.m8735b()));
        }
        if (aVar.m8733d() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m8705a(aVar.m8733d()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.m8736a());
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m8708a(Notification notification) {
        synchronized (f2868a) {
            if (f2870c) {
                return null;
            }
            try {
                if (f2869b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f2870c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f2869b = declaredField;
                }
                Bundle bundle = (Bundle) f2869b.get(notification);
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    f2869b.set(notification, bundle2);
                }
                return bundle2;
            } catch (IllegalAccessException | NoSuchFieldException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f2870c = true;
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Bundle m8707a(C0612j.C0613a aVar) {
        Bundle bundle = new Bundle();
        bundle.putInt("icon", aVar.f2807c);
        bundle.putCharSequence("title", aVar.f2808d);
        bundle.putParcelable("actionIntent", aVar.f2809e);
        Bundle bundle2 = aVar.f2805a != null ? new Bundle(aVar.f2805a) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.m8736a());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", m8705a(aVar.m8735b()));
        bundle.putBoolean("showsUserInterface", aVar.f2806b);
        bundle.putInt("semanticAction", aVar.m8734c());
        return bundle;
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m8706a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
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

    /* renamed from: a */
    private static Bundle[] m8705a(C0619m[] mVarArr) {
        if (mVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            C0619m mVar = mVarArr[i];
            Bundle bundle = new Bundle();
            bundle.putString("resultKey", mVar.m8704a());
            bundle.putCharSequence("label", mVar.m8702b());
            bundle.putCharSequenceArray("choices", mVar.m8701c());
            bundle.putBoolean("allowFreeFormInput", mVar.m8699e());
            bundle.putBundle("extras", mVar.m8698f());
            Set<String> d = mVar.m8700d();
            if (d != null && !d.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(d.size());
                for (String str : d) {
                    arrayList.add(str);
                }
                bundle.putStringArrayList("allowedDataTypes", arrayList);
            }
            bundleArr[i] = bundle;
        }
        return bundleArr;
    }
}
