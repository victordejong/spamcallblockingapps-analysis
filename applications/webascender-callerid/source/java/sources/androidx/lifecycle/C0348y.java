package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.y */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/y.class */
public final class C0348y {

    /* renamed from: e */
    private static final Class[] f1721e;

    /* renamed from: a */
    final Map<String, Object> f1722a;

    /* renamed from: b */
    final Map<String, SavedStateRegistry.AbstractC0440b> f1723b;

    /* renamed from: c */
    private final Map<String, Object<?>> f1724c;

    /* renamed from: d */
    private final SavedStateRegistry.AbstractC0440b f1725d;

    static {
        Class cls = Boolean.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        Class cls4 = Long.TYPE;
        Class cls5 = Byte.TYPE;
        Class cls6 = Character.TYPE;
        Class cls7 = Float.TYPE;
        Class cls8 = Short.TYPE;
        int i = Build.VERSION.SDK_INT;
        Class cls9 = i >= 21 ? Size.class : cls3;
        Class cls10 = cls3;
        if (i >= 21) {
            cls10 = SizeF.class;
        }
        f1721e = new Class[]{cls, boolean[].class, cls2, double[].class, cls3, int[].class, cls4, long[].class, String.class, String[].class, Binder.class, Bundle.class, cls5, byte[].class, cls6, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, cls7, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, cls8, short[].class, SparseArray.class, cls9, cls10};
    }

    public C0348y() {
        this.f1723b = new HashMap();
        this.f1724c = new HashMap();
        this.f1725d = new a(this);
        this.f1722a = new HashMap();
    }

    public C0348y(Map<String, Object> map) {
        this.f1723b = new HashMap();
        this.f1724c = new HashMap();
        this.f1725d = new a(this);
        this.f1722a = new HashMap(map);
    }

    /* renamed from: a */
    static C0348y m5409a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new C0348y();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new C0348y(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new C0348y(hashMap);
    }

    /* renamed from: d */
    private static void m5406d(Object obj) {
        if (obj == null) {
            return;
        }
        for (Class cls : f1721e) {
            if (cls.isInstance(obj)) {
                return;
            }
        }
        throw new IllegalArgumentException("Can't put value with type " + obj.getClass() + " into saved state");
    }

    /* renamed from: b */
    SavedStateRegistry.AbstractC0440b m5408b() {
        return this.f1725d;
    }

    /* renamed from: c */
    public <T> void m5407c(String str, T t) {
        m5406d(t);
        t tVar = this.f1724c.get(str);
        if (tVar != null) {
            tVar.n(t);
        } else {
            this.f1722a.put(str, t);
        }
    }
}
