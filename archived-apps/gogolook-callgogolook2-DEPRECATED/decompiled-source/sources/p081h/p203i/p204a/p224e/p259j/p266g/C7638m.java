package p081h.p203i.p204a.p224e.p259j.p266g;

import android.content.SharedPreferences;
import android.util.Log;
/* renamed from: h.i.a.e.j.g.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m.class */
public final class C7638m extends AbstractC7581f<T> {

    /* renamed from: k */
    public final Object f17911k = new Object();

    /* renamed from: l */
    public String f17912l;

    /* renamed from: m */
    public T f17913m;

    /* renamed from: n */
    public final /* synthetic */ AbstractC7657o f17914n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7638m(C7664p pVar, String str, Object obj, AbstractC7657o oVar) {
        super(pVar, str, obj, null);
        this.f17914n = oVar;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.Object] */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7581f
    /* renamed from: a */
    public final T mo20071a(SharedPreferences sharedPreferences) {
        try {
            return mo20070a(sharedPreferences.getString(this.f17829b, ""));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f17829b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid byte[] value in SharedPreferences for ".concat(valueOf) : new String("Invalid byte[] value in SharedPreferences for "), e);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7581f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T mo20070a(java.lang.String r6) {
        /*
            r5 = this;
            r0 = r5
            java.lang.Object r0 = r0.f17911k     // Catch: IOException | IllegalArgumentException -> 0x0039
            r7 = r0
            r0 = r7
            monitor-enter(r0)     // Catch: IOException | IllegalArgumentException -> 0x0039
            r0 = r6
            r1 = r5
            java.lang.String r1 = r1.f17912l     // Catch: all -> 0x0034
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x0034
            if (r0 != 0) goto L_0x002b
            r0 = r5
            h.i.a.e.j.g.o r0 = r0.f17914n     // Catch: all -> 0x0034
            r1 = r6
            r2 = 3
            byte[] r1 = android.util.Base64.decode(r1, r2)     // Catch: all -> 0x0034
            java.lang.Object r0 = r0.mo19692a(r1)     // Catch: all -> 0x0034
            r8 = r0
            r0 = r5
            r1 = r6
            r0.f17912l = r1     // Catch: all -> 0x0034
            r0 = r5
            r1 = r8
            r0.f17913m = r1     // Catch: all -> 0x0034
        L_0x002b:
            r0 = r5
            T r0 = r0.f17913m     // Catch: all -> 0x0034
            r8 = r0
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x0034
            r0 = r8
            return r0
        L_0x0034:
            r8 = move-exception
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x0034
            r0 = r8
            throw r0     // Catch: IOException | IllegalArgumentException -> 0x0039
        L_0x0039:
            r7 = move-exception
            r0 = r5
            java.lang.String r0 = r0.f17829b
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r7
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 27
            int r2 = r2 + r3
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Invalid byte[] value for "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = ": "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "PhenotypeFlag"
            r1 = r8
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.e(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7638m.mo20070a(java.lang.String):java.lang.Object");
    }
}
