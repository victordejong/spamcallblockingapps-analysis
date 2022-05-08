package com.android.contacts.j;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.j.e;
import com.android.contacts.j.q;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/c.class */
public final class c {
    static e d;
    private final String f = "SmartDialUnbundle";

    /* renamed from: a  reason: collision with root package name */
    q f1514a = new q();

    /* renamed from: b  reason: collision with root package name */
    ArrayList<a> f1515b = new ArrayList<>();
    ArrayList<a> c = new ArrayList<>();
    long e = 0;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final i f1516a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1517b;
        public final int c;
        public final ArrayList<int[]> d = new ArrayList<>();
        public final ArrayList<p> e = new ArrayList<>();

        public a(i iVar, int i, int i2, int i3) {
            e.a[] a2;
            int i4;
            this.f1516a = iVar;
            this.f1517b = i;
            this.c = i3;
            if (c.d != null && this.f1516a.f1546b[this.f1517b] != null) {
                String a3 = this.f1517b == 0 ? this.f1516a.f1546b[this.f1517b] : h.a(this.f1516a.f1546b[this.f1517b]);
                try {
                    for (e.a aVar : c.d.a(a3, a3.length())) {
                        p pVar = new p(i2, this.c, aVar.f1522a);
                        int[] iArr = new int[aVar.f1522a.length()];
                        int i5 = 1;
                        int i6 = 0;
                        while (true) {
                            if (i5 < aVar.f1523b.length) {
                                while (i6 < aVar.f1523b[i5]) {
                                    iArr[i6] = i5 - 1;
                                    i6++;
                                }
                                i5++;
                            }
                        }
                        for (i4 = i6; i4 < iArr.length; i4++) {
                            iArr[i4] = aVar.f1523b.length - 1;
                        }
                        this.e.add(pVar);
                        this.d.add(iArr);
                    }
                } catch (NullPointerException e) {
                    Log.e("SmartDialUnbundle", "NullPointerException occurred in ContactWordsInfo, msg: " + e.getMessage());
                }
            }
        }
    }

    public c(Context context) {
        if (d == null) {
            d = new e(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.contacts.j.a a(com.android.contacts.j.r r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0008
        L_0x0006:
            r0 = r7
            return r0
        L_0x0008:
            r0 = r6
            int r0 = r0.c
            if (r0 != 0) goto L_0x007f
            r0 = r5
            java.util.ArrayList<com.android.contacts.j.c$a> r0 = r0.f1515b
            if (r0 == 0) goto L_0x0006
            r0 = r5
            java.util.ArrayList<com.android.contacts.j.c$a> r0 = r0.f1515b
            r1 = r6
            com.android.contacts.j.p r1 = r1.f1576a
            int r1 = r1.f1568a
            java.lang.Object r0 = r0.get(r1)
            com.android.contacts.j.c$a r0 = (com.android.contacts.j.c.a) r0
            r7 = r0
        L_0x0028:
            com.android.contacts.j.a r0 = new com.android.contacts.j.a
            r1 = r0
            r2 = r7
            com.android.contacts.j.i r2 = r2.f1516a
            r3 = r7
            int r3 = r3.f1517b
            r1.<init>(r2, r3)
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x003b:
            r0 = r9
            r1 = r6
            boolean[] r1 = r1.f1577b
            int r1 = r1.length
            if (r0 >= r1) goto L_0x009b
            r0 = r6
            boolean[] r0 = r0.f1577b
            r1 = r9
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0079
            r0 = r8
            boolean[] r0 = r0.c
            r10 = r0
            r0 = r7
            java.util.ArrayList<int[]> r0 = r0.d
            r11 = r0
            r0 = r6
            com.android.contacts.j.p r0 = r0.f1576a
            r12 = r0
            r0 = r10
            r1 = r11
            r2 = r7
            java.util.ArrayList<com.android.contacts.j.p> r2 = r2.e
            r3 = r12
            int r2 = r2.indexOf(r3)
            java.lang.Object r1 = r1.get(r2)
            int[] r1 = (int[]) r1
            r2 = r9
            r1 = r1[r2]
            r2 = 1
            r0[r1] = r2
        L_0x0079:
            int r9 = r9 + 1
            goto L_0x003b
        L_0x007f:
            r0 = r5
            java.util.ArrayList<com.android.contacts.j.c$a> r0 = r0.c
            if (r0 == 0) goto L_0x0006
            r0 = r5
            java.util.ArrayList<com.android.contacts.j.c$a> r0 = r0.c
            r1 = r6
            com.android.contacts.j.p r1 = r1.f1576a
            int r1 = r1.f1568a
            java.lang.Object r0 = r0.get(r1)
            com.android.contacts.j.c$a r0 = (com.android.contacts.j.c.a) r0
            r7 = r0
            goto L_0x0028
        L_0x009b:
            r0 = r8
            r7 = r0
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.c.a(com.android.contacts.j.r):com.android.contacts.j.a");
    }

    private com.android.contacts.j.a[] a(String str) {
        com.android.contacts.j.a[] aVarArr;
        int i = 0;
        int i2 = 0;
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = new String(BuildConfig.FLAVOR);
            }
            if (this.f1514a != null) {
                if (!((str2 == null || str2.toString() == null || !str2.toString().matches("^[0-9 * # + , ;]*$")) ? false : true)) {
                    com.android.contacts.j.a[] b2 = b(str2);
                    com.android.contacts.j.a[] aVarArr2 = new com.android.contacts.j.a[b2.length];
                    while (true) {
                        aVarArr = aVarArr2;
                        if (i >= b2.length) {
                            break;
                        }
                        aVarArr2[i] = b2[i];
                        i++;
                    }
                } else {
                    l.a();
                    r[] a2 = this.f1514a.a(str2);
                    com.android.contacts.j.a[] aVarArr3 = new com.android.contacts.j.a[a2.length];
                    while (true) {
                        aVarArr = aVarArr3;
                        if (i2 >= a2.length) {
                            break;
                        }
                        aVarArr3[i2] = a(a2[i2]);
                        i2++;
                    }
                }
            } else {
                aVarArr = new com.android.contacts.j.a[0];
            }
        }
        return aVarArr;
    }

    private com.android.contacts.j.a[] b(String str) {
        com.android.contacts.j.a[] aVarArr;
        char charAt;
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            aVarArr = new com.android.contacts.j.a[0];
        } else {
            ArrayList arrayList = new ArrayList();
            if (str != null && (charAt = str.charAt(0)) >= 19968 && charAt <= 40891) {
                Iterator<a> it = this.f1515b.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (next.f1516a.f1546b[0] == null) {
                        Log.w("SmartDialUnbundle", "[stringMatching] contactInfo.raw_values[0] is null, do nothing...");
                    } else if (next.c == 0 && next.f1516a.f1546b[0].contains(str)) {
                        com.android.contacts.j.a aVar = new com.android.contacts.j.a(next.f1516a, next.f1517b);
                        int indexOf = next.f1516a.f1546b[0].indexOf(str);
                        for (int i2 = indexOf; i2 < str.length() + indexOf; i2++) {
                            aVar.c[i2] = true;
                        }
                        arrayList.add(aVar);
                    }
                }
                Iterator<a> it2 = this.c.iterator();
                while (it2.hasNext()) {
                    a next2 = it2.next();
                    if (next2.f1516a.f1546b[0] == null) {
                        Log.w("SmartDialUnbundle", "[stringMatching] contactInfo.raw_values[0] is null, do nothing...");
                    } else if (next2.c == 0 && next2.f1516a.f1546b[0].contains(str)) {
                        com.android.contacts.j.a aVar2 = new com.android.contacts.j.a(next2.f1516a, next2.f1517b);
                        int indexOf2 = next2.f1516a.f1546b[0].indexOf(str);
                        for (int i3 = indexOf2; i3 < str.length() + indexOf2; i3++) {
                            aVar2.c[i3] = true;
                        }
                        arrayList.add(aVar2);
                    }
                }
            } else {
                Iterator<a> it3 = this.f1515b.iterator();
                while (it3.hasNext()) {
                    a next3 = it3.next();
                    if (next3.f1516a.f1546b[0] == null) {
                        Log.w("SmartDialUnbundle", "[stringMatching] contactInfo.raw_values[0] is null, do nothing...");
                    } else if (next3.c == 0 && next3.f1516a.f1546b[0].toUpperCase().startsWith(str.toUpperCase())) {
                        com.android.contacts.j.a aVar3 = new com.android.contacts.j.a(next3.f1516a, next3.f1517b);
                        for (int i4 = 0; i4 < str.length(); i4++) {
                            aVar3.c[i4] = true;
                        }
                        arrayList.add(aVar3);
                    }
                }
                Iterator<a> it4 = this.c.iterator();
                while (it4.hasNext()) {
                    a next4 = it4.next();
                    if (next4.f1516a.f1546b[0] == null) {
                        Log.w("SmartDialUnbundle", "[stringMatching] contactInfo.raw_values[0] is null, do nothing...");
                    } else if (next4.c == 0 && next4.f1516a.f1546b[0].toUpperCase().startsWith(str.toUpperCase())) {
                        com.android.contacts.j.a aVar4 = new com.android.contacts.j.a(next4.f1516a, next4.f1517b);
                        for (int i5 = 0; i5 < str.length(); i5++) {
                            aVar4.c[i5] = true;
                        }
                        arrayList.add(aVar4);
                    }
                }
            }
            aVarArr = new com.android.contacts.j.a[arrayList.size()];
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                aVarArr[i] = (com.android.contacts.j.a) it5.next();
                i++;
            }
        }
        return aVarArr;
    }

    public final void a() {
        synchronized (this) {
            if (this.f1515b != null) {
                this.f1515b.clear();
                this.f1515b.trimToSize();
            }
            if (this.c != null) {
                this.c.clear();
                this.c.trimToSize();
            }
            if (this.f1514a != null) {
                q qVar = this.f1514a;
                if (qVar.f1571b != null) {
                    qVar.f1571b.clear();
                }
                if (qVar.c != null) {
                    qVar.c.clear();
                }
                qVar.a();
            }
        }
    }

    public final void a(i iVar) {
        synchronized (this) {
            if (this.f1515b != null) {
                int size = this.f1515b.size();
                int i = 0;
                while (i < iVar.f1546b.length) {
                    if (i == 0 && iVar.g == 0) {
                        size--;
                    } else {
                        a aVar = new a(iVar, i, size + i, i == 0 ? 0 : 1);
                        if (this.f1515b != null) {
                            this.f1515b.add(aVar);
                        }
                        if (this.f1514a != null) {
                            Iterator<p> it = aVar.e.iterator();
                            while (it.hasNext()) {
                                p next = it.next();
                                q qVar = this.f1514a;
                                qVar.a();
                                qVar.f1571b.add(new q.b(next));
                            }
                        }
                    }
                    i++;
                }
            }
        }
    }

    public final com.android.contacts.j.a[] a(String str, int i) {
        com.android.contacts.j.a[] aVarArr;
        int i2 = 0;
        int i3 = 0;
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = new String(BuildConfig.FLAVOR);
            }
            if (this.f1514a != null) {
                if (i != 0) {
                    if (i != 2) {
                        com.android.contacts.j.a[] b2 = b(str2);
                        com.android.contacts.j.a[] aVarArr2 = new com.android.contacts.j.a[b2.length];
                        while (true) {
                            aVarArr = aVarArr2;
                            if (i2 >= b2.length) {
                                break;
                            }
                            aVarArr2[i2] = b2[i2];
                            i2++;
                        }
                    } else {
                        l.a();
                        r[] a2 = this.f1514a.a(str2);
                        com.android.contacts.j.a[] aVarArr3 = new com.android.contacts.j.a[a2.length];
                        while (true) {
                            aVarArr = aVarArr3;
                            if (i3 >= a2.length) {
                                break;
                            }
                            aVarArr3[i3] = a(a2[i3]);
                            i3++;
                        }
                    }
                } else {
                    aVarArr = a(str2);
                }
            } else {
                aVarArr = new com.android.contacts.j.a[0];
            }
        }
        return aVarArr;
    }

    public final void b() {
        if (this.f1515b != null) {
            this.f1515b = null;
        }
        if (this.c != null) {
            this.c = null;
        }
        if (this.f1514a != null) {
            this.f1514a = null;
        }
        if (d != null) {
            e eVar = d;
            if (eVar.c != null) {
                eVar.c.f1560a.clear();
                eVar.c = null;
            }
            if (eVar.d != null) {
                eVar.d.f1564a.clear();
                eVar.d = null;
            }
            d = null;
        }
    }

    public final void b(i iVar) {
        synchronized (this) {
            if (this.c != null) {
                int size = this.c.size();
                int i = 0;
                while (i < iVar.f1546b.length) {
                    if (i == 0 && iVar.g == 0) {
                        size--;
                    } else {
                        a aVar = new a(iVar, i, size + i, i == 0 ? 0 : 1);
                        if (this.c != null) {
                            this.c.add(aVar);
                        }
                        l.a();
                        if (this.f1514a != null) {
                            Iterator<p> it = aVar.e.iterator();
                            while (it.hasNext()) {
                                p next = it.next();
                                q qVar = this.f1514a;
                                qVar.a();
                                qVar.c.add(new q.b(next));
                            }
                        }
                    }
                    i++;
                }
            }
        }
    }

    public final void c() {
        synchronized (this) {
            if (this.f1515b != null) {
                this.f1515b.clear();
            }
            if (this.f1514a != null) {
                q qVar = this.f1514a;
                if (qVar.f1571b != null) {
                    qVar.f1571b.clear();
                }
                qVar.a();
            }
        }
    }

    public final int d() {
        int i;
        int i2 = -1;
        synchronized (this) {
            int size = this.f1515b != null ? this.f1515b.size() : -1;
            if (this.c != null) {
                i2 = this.c.size();
            }
            i = (size < 0 || i2 < 0) ? 0 : i2 + size;
        }
        return i;
    }

    public final i[] e() {
        i[] iVarArr;
        synchronized (this) {
            LinkedList linkedList = new LinkedList();
            i iVar = null;
            if (this.f1515b != null) {
                Iterator<a> it = this.f1515b.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (iVar != next.f1516a) {
                        linkedList.add(next.f1516a);
                        iVar = next.f1516a;
                    }
                }
            }
            iVarArr = (i[]) linkedList.toArray(new i[0]);
        }
        return iVarArr;
    }
}
