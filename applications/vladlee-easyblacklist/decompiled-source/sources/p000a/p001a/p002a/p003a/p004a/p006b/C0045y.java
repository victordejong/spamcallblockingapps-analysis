package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p005a.AbstractC0006d;
import p000a.p001a.p002a.p003a.p004a.p005a.C0004b;
/* renamed from: a.a.a.a.a.b.y */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/y.class */
public final class C0045y {

    /* renamed from: a */
    private final AbstractC0006d<String> f101a = new C0046z(this);

    /* renamed from: b */
    private final C0004b<String> f102b = new C0004b<>();

    /* renamed from: a */
    public final String m10284a(Context context) {
        try {
            String a = this.f102b.mo10404a(context, this.f101a);
            if ("".equals(a)) {
                return null;
            }
            return a;
        } catch (Exception e) {
            C0137d.m10155c().mo10130c("Fabric", "Failed to determine installer package name", e);
            return null;
        }
    }
}
