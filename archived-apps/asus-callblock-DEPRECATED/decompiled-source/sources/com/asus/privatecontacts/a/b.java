package com.asus.privatecontacts.a;

import android.content.Context;
import com.android.contacts.model.e;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/b.class */
public class b {
    private static final String e = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public f f2990a;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<d> f2991b;
    public int c;
    public final Exception d;
    private final ArrayList<e.a> f;
    private Context g;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/b$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f2992a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f2993b = 2;
        public static final int c = 3;
        private static final /* synthetic */ int[] d = {f2992a, f2993b, c};
    }

    private b(int i, Exception exc) {
        this.f = new ArrayList<>();
        if (i == a.f2993b && exc == null) {
            throw new IllegalArgumentException("ERROR result must have exception");
        }
        this.g = null;
        this.c = i;
        this.d = exc;
        this.f2990a = null;
        this.f2991b = null;
    }

    private b(Context context) {
        this.f = new ArrayList<>();
        this.g = context;
        this.f2990a = null;
        this.f2991b = new ArrayList<>();
        this.c = a.c;
        this.d = null;
    }

    public static b a() {
        return new b(a.c, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.asus.privatecontacts.a.b a(android.content.Context r6, android.database.Cursor r7, android.database.Cursor r8) {
        /*
            r0 = 1
            r9 = r0
            com.asus.privatecontacts.a.b r0 = new com.asus.privatecontacts.a.b
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0020
            r0 = r7
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L_0x0020
            r0 = r6
            r1 = r7
            com.asus.privatecontacts.a.f r1 = com.asus.privatecontacts.a.f.a(r1)
            r0.f2990a = r1
        L_0x0020:
            r0 = r6
            com.asus.privatecontacts.a.f r0 = r0.f2990a
            if (r0 == 0) goto L_0x0086
            r0 = 1
            r10 = r0
        L_0x002a:
            r0 = r8
            if (r0 == 0) goto L_0x006a
            r0 = r8
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L_0x006a
        L_0x0037:
            r0 = r8
            com.asus.privatecontacts.a.c r0 = com.asus.privatecontacts.a.c.a(r0)
            r7 = r0
            r0 = r6
            com.asus.privatecontacts.a.f r0 = r0.f2990a
            if (r0 == 0) goto L_0x0061
            r0 = r7
            if (r0 == 0) goto L_0x0061
            com.asus.privatecontacts.a.d r0 = new com.asus.privatecontacts.a.d
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.g
            r3 = r6
            com.asus.privatecontacts.a.f r3 = r3.f2990a
            r4 = r7
            r1.<init>(r2, r3, r4)
            r7 = r0
            r0 = r6
            java.util.ArrayList<com.asus.privatecontacts.a.d> r0 = r0.f2991b
            r1 = r7
            boolean r0 = r0.add(r1)
        L_0x0061:
            r0 = r8
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L_0x0037
        L_0x006a:
            r0 = r6
            java.util.ArrayList<com.asus.privatecontacts.a.d> r0 = r0.f2991b
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x008c
        L_0x0074:
            r0 = r10
            if (r0 == 0) goto L_0x0091
            r0 = r9
            if (r0 == 0) goto L_0x0091
            r0 = r6
            int r1 = com.asus.privatecontacts.a.b.a.f2992a
            r0.c = r1
        L_0x0084:
            r0 = r6
            return r0
        L_0x0086:
            r0 = 0
            r10 = r0
            goto L_0x002a
        L_0x008c:
            r0 = 0
            r9 = r0
            goto L_0x0074
        L_0x0091:
            r0 = r10
            if (r0 == 0) goto L_0x00a9
            r0 = r6
            int r1 = com.asus.privatecontacts.a.b.a.f2992a
            r0.c = r1
            java.lang.String r0 = com.asus.privatecontacts.a.b.e
            java.lang.String r1 = "ERROR loading private data !"
            int r0 = android.util.Log.e(r0, r1)
            goto L_0x0084
        L_0x00a9:
            r0 = r6
            int r1 = com.asus.privatecontacts.a.b.a.f2993b
            r0.c = r1
            java.lang.String r0 = com.asus.privatecontacts.a.b.e
            java.lang.String r1 = "ERROR loading private contact and data !"
            int r0 = android.util.Log.e(r0, r1)
            goto L_0x0084
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.a.b.a(android.content.Context, android.database.Cursor, android.database.Cursor):com.asus.privatecontacts.a.b");
    }

    public static b a(Exception exc) {
        return new b(a.f2993b, exc);
    }
}
