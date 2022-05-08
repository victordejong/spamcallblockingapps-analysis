package p081h.p203i.p204a.p224e.p252e;

import android.os.IBinder;
import android.os.IInterface;
import p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a;
import p081h.p203i.p204a.p224e.p259j.p267h.C7742b;
/* renamed from: h.i.a.e.e.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/e/b.class */
public interface AbstractC7106b extends IInterface {

    /* renamed from: h.i.a.e.e.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/e/b$a.class */
    public static class BinderC7107a extends BinderC7741a implements AbstractC7106b {

        /* renamed from: h.i.a.e.e.b$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/e/b$a$a.class */
        public static final class C7108a extends C7742b implements AbstractC7106b {
            public C7108a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public BinderC7107a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        /* renamed from: a */
        public static AbstractC7106b m21060a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof AbstractC7106b ? (AbstractC7106b) queryLocalInterface : new C7108a(iBinder);
        }
    }
}
