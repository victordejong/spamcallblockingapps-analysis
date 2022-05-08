package p081h.p203i.p204a.p224e.p259j.p260a;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.v7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v7.class */
public final class C7434v7 extends NativeAd.Image {

    /* renamed from: a */
    public final AbstractC7398s7 f17498a;

    /* renamed from: b */
    public final Drawable f17499b;

    /* renamed from: c */
    public final Uri f17500c;

    /* renamed from: d */
    public final double f17501d;

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(2:23|3)|(9:5|9|21|10|13|19|14|17|18)|8|9|21|10|13|19|14|17|18) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
        p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b("", r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7434v7(p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7 r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f17498a = r1
            r0 = 0
            r6 = r0
            r0 = r4
            h.i.a.e.j.a.s7 r0 = r0.f17498a     // Catch: RemoteException -> 0x0024
            h.i.a.e.e.b r0 = r0.mo20646y0()     // Catch: RemoteException -> 0x0024
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002b
            r0 = r5
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p252e.BinderC7110d.m21059A(r0)     // Catch: RemoteException -> 0x0024
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: RemoteException -> 0x0024
            r5 = r0
            goto L_0x002d
        L_0x0024:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b(r0, r1)
        L_0x002b:
            r0 = 0
            r5 = r0
        L_0x002d:
            r0 = r4
            r1 = r5
            r0.f17499b = r1
            r0 = r4
            h.i.a.e.j.a.s7 r0 = r0.f17498a     // Catch: RemoteException -> 0x003f
            android.net.Uri r0 = r0.getUri()     // Catch: RemoteException -> 0x003f
            r5 = r0
            goto L_0x0048
        L_0x003f:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b(r0, r1)
            r0 = r6
            r5 = r0
        L_0x0048:
            r0 = r4
            r1 = r5
            r0.f17500c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            h.i.a.e.j.a.s7 r0 = r0.f17498a     // Catch: RemoteException -> 0x005d
            double r0 = r0.getScale()     // Catch: RemoteException -> 0x005d
            r9 = r0
            goto L_0x0067
        L_0x005d:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b(r0, r1)
            r0 = r7
            r9 = r0
        L_0x0067:
            r0 = r4
            r1 = r9
            r0.f17501d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p260a.C7434v7.<init>(h.i.a.e.j.a.s7):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f17499b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.f17501d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.f17500c;
    }
}
