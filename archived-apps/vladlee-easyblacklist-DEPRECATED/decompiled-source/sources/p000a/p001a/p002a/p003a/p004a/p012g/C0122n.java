package p000a.p001a.p002a.p003a.p004a.p012g;

import android.content.Context;
import android.graphics.BitmapFactory;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* renamed from: a.a.a.a.a.g.n */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/n.class */
public final class C0122n {

    /* renamed from: a */
    public final String f257a;

    /* renamed from: b */
    public final int f258b;

    /* renamed from: c */
    public final int f259c;

    /* renamed from: d */
    public final int f260d;

    private C0122n(String str, int i, int i2, int i3) {
        this.f257a = str;
        this.f258b = i;
        this.f259c = i2;
        this.f260d = i3;
    }

    /* renamed from: a */
    public static C0122n m10179a(Context context, String str) {
        C0122n nVar;
        if (str != null) {
            try {
                int j = C0026j.m10319j(context);
                C0137d.m10155c().mo10135a("Fabric", "App icon resource ID is ".concat(String.valueOf(j)));
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), j, options);
                nVar = new C0122n(str, j, options.outWidth, options.outHeight);
            } catch (Exception e) {
                C0137d.m10155c().mo10130c("Fabric", "Failed to load icon", e);
            }
            return nVar;
        }
        nVar = null;
        return nVar;
    }
}
