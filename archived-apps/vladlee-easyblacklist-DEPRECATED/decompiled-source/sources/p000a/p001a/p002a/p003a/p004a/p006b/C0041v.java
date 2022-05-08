package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import java.lang.reflect.Method;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.b.v */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/v.class */
public final class C0041v implements AbstractC0040u {

    /* renamed from: a */
    private final Method f76a;

    /* renamed from: b */
    private final Object f77b;

    private C0041v(Class cls, Object obj) {
        this.f77b = obj;
        this.f76a = cls.getDeclaredMethod("isDataCollectionDefaultEnabled", new Class[0]);
    }

    /* renamed from: a */
    public static AbstractC0040u m10298a(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.google.firebase.FirebaseApp");
            return new C0041v(loadClass, loadClass.getDeclaredMethod("getInstance", new Class[0]).invoke(loadClass, new Object[0]));
        } catch (ClassNotFoundException e) {
            C0137d.m10155c().mo10135a("Fabric", "Could not find class: com.google.firebase.FirebaseApp");
            return null;
        } catch (NoSuchMethodException e2) {
            AbstractC0150o c = C0137d.m10155c();
            c.mo10135a("Fabric", "Could not find method: " + e2.getMessage());
            return null;
        } catch (Exception e3) {
            C0137d.m10155c().mo10134a("Fabric", "Unexpected error loading FirebaseApp instance.", e3);
            return null;
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0040u
    /* renamed from: a */
    public final boolean mo10299a() {
        try {
            return ((Boolean) this.f76a.invoke(this.f77b, new Object[0])).booleanValue();
        } catch (Exception e) {
            C0137d.m10155c().mo10134a("Fabric", "Cannot check isDataCollectionDefaultEnabled on FirebaseApp.", e);
            return false;
        }
    }
}
