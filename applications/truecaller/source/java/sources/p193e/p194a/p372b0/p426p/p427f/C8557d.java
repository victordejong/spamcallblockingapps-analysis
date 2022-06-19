package p193e.p194a.p372b0.p426p.p427f;

import android.content.Context;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8473c;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8475d;
import p193e.p194a.p372b0.p413i.p415f.C8469a;
/* renamed from: e.a.b0.p.f.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/f/d.class */
public final class C8557d {

    /* renamed from: a */
    public static volatile C8469a f26361a;

    /* renamed from: b */
    public static final AbstractC8473c[] f26362b = {new C8554a(), new C8558e(), new C8555b(), new C8556c()};

    /* renamed from: c */
    public static final AbstractC8475d[] f26363c = new AbstractC8475d[0];

    /* renamed from: a */
    public static C8469a m28392a(Context context) {
        C8469a c8469a;
        synchronized (C8557d.class) {
            try {
                if (f26361a == null) {
                    f26361a = new C8469a(context, "tags.db", 5, f26362b, f26363c, null);
                }
                c8469a = f26361a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c8469a;
    }
}
