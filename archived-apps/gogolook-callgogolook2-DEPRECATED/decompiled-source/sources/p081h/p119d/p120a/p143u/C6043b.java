package p081h.p119d.p120a.p143u;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.d.a.u.b */
/* loaded from: classes-dex2jar.jar:h/d/a/u/b.class */
public final class C6043b {

    /* renamed from: a */
    public final Context f15040a;

    public C6043b(Context context) {
        this.f15040a = context;
    }

    /* renamed from: a */
    public static AbstractC6042a m23977a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object newInstance = cls.newInstance();
                if (newInstance instanceof AbstractC6042a) {
                    return (AbstractC6042a) newInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + newInstance);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e3);
        }
    }

    /* renamed from: a */
    public List<AbstractC6042a> m23978a() {
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f15040a.getPackageManager().getApplicationInfo(this.f15040a.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(m23977a(str));
                    }
                }
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
