package p193e.p194a.p712e4.p714f0;

import android.content.Context;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: e.a.e4.f0.a */
/* loaded from: classes11-dex2jar.jar:e/a/e4/f0/a.class */
public class C13487a {

    /* renamed from: a */
    public Context f39131a;

    public C13487a(Context context) {
        this.f39131a = context;
    }

    /* renamed from: a */
    public boolean m21765a(String... strArr) {
        try {
            for (String str : strArr) {
                if (C26467a.m1801a(this.f39131a, str) == -1) {
                    return false;
                }
            }
            return true;
        } catch (RuntimeException e) {
            return false;
        }
    }
}
