package com.android.contacts.j;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/e.class */
public final class e {
    n c;
    o d;
    private final String e = "SmartDialUnbundle";
    private final char[] f = {'2', '2', '2', '3', '3', '3', '4', '4', '4', '5', '5', '5', '6', '6', '6', '7', '7', '7', '7', '8', '8', '8', '9', '9', '9', '9', '?', '?', '?', '?', '?', '?', '2', '2', '2', '3', '3', '3', '4', '4', '4', '5', '5', '5', '6', '6', '6', '7', '7', '7', '7', '8', '8', '8', '9', '9', '9', '9'};

    /* renamed from: a  reason: collision with root package name */
    public final char[] f1520a = {12549, '1', 12550, '4', 12551, '7', 12552, '*', 12553, '1', 12554, '4', 12555, '7', 12556, '*', 12557, '2', 12558, '5', 12559, '8', 12560, '2', 12561, '5', 12562, '8', 12563, '3', 12564, '6', 12565, '9', 12566, '#', 12567, '3', 12568, '6', 12569, '9', 12570, '1', 12571, '4', 12572, '7', 12573, '*', 12574, '2', 12575, '5', 12576, '8', 12577, '8', 12578, '3', 12579, '6', 12580, '9', 12581, '#', 12582, '3', 12583, '6', 12584, '9', 12585, '#'};

    /* renamed from: b  reason: collision with root package name */
    public final char[] f1521b = {'2', '2', '2', '2', '3', '3', '3', '3', '4', '4', '4', '4', '5', '5', '5', '5', '6', '6', '6', '6', '7', '7', '7', '7', '8', '8', '8', '8', '9', '9', '9', '9', '2', '2', '2', '2', '3', '3', '3', '3', '4', '4', '4', '4', '5', '5', '5', '5', '6', '6', '6', '6', '7', '7', '7', '7', '8', '8', '8', '8', '9', '9', '9', '9'};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f1522a;

        /* renamed from: b  reason: collision with root package name */
        int[] f1523b;

        a() {
        }
    }

    public e(Context context) {
        if (l.a().f1555a == 3) {
            this.c = new n(context);
            this.d = null;
        } else if (l.a().f1555a == 2) {
            this.c = null;
            this.d = new o(context);
        }
    }

    private ArrayList<char[]> a(char c) {
        String[] strArr;
        ArrayList<char[]> arrayList = new ArrayList<>();
        if (c <= 'z' && c >= 'A') {
            arrayList.clear();
            arrayList.add(new char[]{this.f[c - 'A']});
        } else if ((c <= '9' && c >= '0') || c == '+' || c == ',' || c == ';') {
            arrayList.clear();
            arrayList.add(new char[]{c});
        } else if (l.a().f1555a == 1 && c <= 1103 && c >= 1040) {
            arrayList.clear();
            arrayList.add(new char[]{this.f1521b[c - 1040]});
        } else if ((l.a().f1555a == 3 || l.a().f1555a == 2) && c >= 19968 && c <= 40869) {
            if (l.a().f1555a != 3) {
                if (l.a().f1555a == 2) {
                    if (this.d != null) {
                        strArr = this.d.f1564a.get(c);
                    } else {
                        Log.e("SmartDialUnbundle", "unicodeToPinyin is null");
                    }
                }
                strArr = null;
            } else if (this.c != null) {
                strArr = this.c.f1560a.get(c);
            } else {
                Log.e("SmartDialUnbundle", "unicodeToPhonetic is null");
                strArr = null;
            }
            if (strArr == null) {
                arrayList.clear();
                arrayList.add(new char[]{'?'});
            } else {
                arrayList.clear();
                for (String str : strArr) {
                    char[] charArray = str.toCharArray();
                    for (int i = 0; i < charArray.length; i++) {
                        if (l.a().f1555a == 3) {
                            charArray[i] = this.f1520a[((charArray[i] - 12549) * 2) + 1];
                        } else {
                            charArray[i] = this.f[charArray[i] - 'A'];
                        }
                    }
                    arrayList.add(charArray);
                }
            }
        } else {
            arrayList.clear();
            arrayList.add(new char[]{'?'});
        }
        return arrayList;
    }

    private void a(String str, int i, int i2, ArrayList<ArrayList<char[]>> arrayList, char[][] cArr, ArrayList<a> arrayList2) {
        for (int i3 = 0; i3 < arrayList.get(i2).size(); i3++) {
            cArr[i2] = arrayList.get(i2).get(i3);
            if (i2 + 1 < arrayList.size()) {
                a(str, i, i2 + 1, arrayList, cArr, arrayList2);
            } else {
                int i4 = 0;
                int i5 = 0;
                int[] iArr = new int[i];
                StringBuffer stringBuffer = new StringBuffer();
                for (int i6 = 0; i6 < cArr.length; i6++) {
                    char[] cArr2 = cArr[i6];
                    char c = str.toCharArray()[i6];
                    if (c < 19968 || c > 40869) {
                        iArr[i5] = i4;
                        i4 += cArr2.length;
                        stringBuffer.append(cArr2);
                    } else {
                        stringBuffer.append('?').append(cArr2).append('?');
                        iArr[i5] = i4 + 1;
                        i4 += cArr2.length + 2;
                    }
                    i5++;
                }
                a aVar = new a();
                aVar.f1522a = stringBuffer.toString();
                aVar.f1523b = iArr;
                arrayList2.add(aVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [char[], char[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.j.e.a[] a(java.lang.String r9, int r10) {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r11 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r9
            char[] r0 = r0.toCharArray()
            r13 = r0
            r0 = r13
            int r0 = r0.length
            r14 = r0
            r0 = 0
            r15 = r0
        L_0x001f:
            r0 = r15
            r1 = r14
            if (r0 >= r1) goto L_0x003a
            r0 = r11
            r1 = r8
            r2 = r13
            r3 = r15
            char r2 = r2[r3]
            java.util.ArrayList r1 = r1.a(r2)
            boolean r0 = r0.add(r1)
            int r15 = r15 + 1
            goto L_0x001f
        L_0x003a:
            r0 = r11
            int r0 = r0.size()
            char[] r0 = new char[r0]
            r13 = r0
            r0 = r11
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x0056
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = 0
            r4 = r11
            r5 = r13
            r6 = r12
            r0.a(r1, r2, r3, r4, r5, r6)
        L_0x0056:
            r0 = r12
            r1 = 0
            com.android.contacts.j.e$a[] r1 = new com.android.contacts.j.e.a[r1]
            java.lang.Object[] r0 = r0.toArray(r1)
            com.android.contacts.j.e$a[] r0 = (com.android.contacts.j.e.a[]) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.e.a(java.lang.String, int):com.android.contacts.j.e$a[]");
    }
}
