package com.android.contacts.j;

import android.content.Context;
import android.os.Process;
import android.telephony.PhoneNumberUtils;
import android.util.Log;
import android.util.LongSparseArray;
import com.android.contacts.j.i;
import com.asus.updatesdk.BuildConfig;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/k.class */
public final class k extends Thread {

    /* renamed from: a  reason: collision with root package name */
    boolean f1553a;
    int c;
    private Context e;
    private final String d = "SmartDialUnbundle";
    private boolean j = false;
    private boolean k = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f1554b = false;
    private int l = 0;
    private LongSparseArray<String> f = new LongSparseArray<>();
    private LongSparseArray<Long[]> g = new LongSparseArray<>();
    private LongSparseArray<String[]> h = new LongSparseArray<>();
    private LinkedList<i.b> i = new LinkedList<>();
    private LongSparseArray<Integer> m = new LongSparseArray<>();

    public k(Context context) {
        this.f1553a = false;
        this.c = 1;
        this.e = context;
        this.c = 1;
        this.f1553a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x057f A[Catch: IOException -> 0x058f, TRY_ENTER, TryCatch #7 {IOException -> 0x058f, blocks: (B:188:0x0575, B:191:0x057f, B:194:0x0588), top: B:223:0x0575 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0588 A[Catch: IOException -> 0x058f, TRY_ENTER, TryCatch #7 {IOException -> 0x058f, blocks: (B:188:0x0575, B:191:0x057f, B:194:0x0588), top: B:223:0x0575 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0575 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 1536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.k.a(java.lang.String):void");
    }

    private static String[] b(String str) {
        String[] split = str.replaceAll("\\[", BuildConfig.FLAVOR).replaceAll("\\]", BuildConfig.FLAVOR).split(",");
        String[] strArr = new String[split.length - 1];
        for (int i = 1; i < split.length; i++) {
            strArr[i - 1] = split[i].trim();
        }
        return strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x03dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c() {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.k.c():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0237: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:95:0x0237 */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0244  */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d() {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.k.d():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019e  */
    /* JADX WARN: Type inference failed for: r0v75, types: [android.util.LongSparseArray<java.lang.String[]>, android.util.LongSparseArray] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.k.e():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x035f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f() {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.k.f():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01d8 A[LOOP:2: B:42:0x01cb->B:44:0x01d8, LOOP_END] */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4, types: [long] */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g() {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.k.g():void");
    }

    private void h() {
        boolean z;
        i.b bVar;
        Log.d("SmartDialUnbundle", "LoadContactsTask start loadAllCallLogData");
        long currentTimeMillis = System.currentTimeMillis();
        c();
        if (!this.j) {
            ArrayList arrayList = new ArrayList();
            int c = j.a().c() - 1;
            while (true) {
                if (c < 0) {
                    z = false;
                    break;
                } else if (this.j) {
                    z = true;
                    break;
                } else {
                    i a2 = j.a().a(c, false);
                    if (a2 == null) {
                        z = true;
                        break;
                    }
                    if (a2.g == 0) {
                        arrayList.add(Integer.valueOf(c));
                    } else {
                        a2.h = false;
                        a2.f.clear();
                        for (int i = 1; i < a2.f1546b.length; i++) {
                            String str = a2.f1546b[i];
                            Iterator<i.b> it = this.i.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    bVar = null;
                                    break;
                                }
                                i.b next = it.next();
                                if (PhoneNumberUtils.compare(str, next.f1549a)) {
                                    int i2 = 0;
                                    while (true) {
                                        bVar = next;
                                        if (i2 >= next.f1550b.size()) {
                                            break;
                                        }
                                        a2.f.add(new i.a((int) next.f1550b.keyAt(i2), next.f1550b.valueAt(i2)));
                                        i2++;
                                    }
                                }
                            }
                            if (bVar != null) {
                                this.i.remove(bVar);
                            }
                        }
                        if (a2.f.size() > 0) {
                            a2.h = true;
                        }
                    }
                    c--;
                }
            }
            if (!z) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    j.a().b(((Integer) it2.next()).intValue());
                }
            }
            if (!z) {
                Iterator<i.b> it3 = this.i.iterator();
                while (it3.hasNext()) {
                    i.b next2 = it3.next();
                    String str2 = next2.f1549a;
                    ArrayList arrayList2 = new ArrayList();
                    for (int i3 = 0; i3 < next2.f1550b.size(); i3++) {
                        arrayList2.add(new i.a((int) next2.f1550b.keyAt(i3), next2.f1550b.valueAt(i3)));
                    }
                    j.a().a(new i(0, 0L, 0L, null, new String[]{BuildConfig.FLAVOR, str2}, null, arrayList2));
                }
            }
        }
        this.k = false;
        this.f1554b = false;
        j.a().f();
        j.a().b();
        Log.d("SmartDialUnbundle", "[Time] LoadContactsTask done. #Updated Data(Raw Contacts+Unknown Call logs)=" + j.a().c() + ". Spent=" + (System.currentTimeMillis() - currentTimeMillis) + " ms.");
    }

    private void i() {
        long currentTimeMillis = System.currentTimeMillis();
        int i = 0;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.e.getFilesDir(), "calllog.data"));
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, Charset.forName("UTF-16"));
            BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(this.e.getFilesDir(), "contact.data"));
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(fileOutputStream2, Charset.forName("UTF-16"));
            BufferedWriter bufferedWriter2 = new BufferedWriter(outputStreamWriter2);
            while (true) {
                i a2 = j.a().a(i, false);
                if (a2 == null) {
                    break;
                }
                i++;
                if (a2.h) {
                    bufferedWriter.write(a2.c + "\n");
                    bufferedWriter.write(a2.f1545a + "\n");
                    bufferedWriter.write(a2.f1546b[0] + "\n");
                    bufferedWriter.write(a2.e[0] + "\n");
                    bufferedWriter.write(a2.d + "\n");
                    bufferedWriter.write(a2.e[1] + "\n");
                    bufferedWriter.write(a2.e[2] + "\n");
                    bufferedWriter.write(a2.e[3] + "\n");
                    bufferedWriter.write(a2.e[4] + "\n");
                    bufferedWriter.write(a2.e[5] + "\n");
                    bufferedWriter.write(String.valueOf(a2.f1546b.length - 1) + "\n");
                    for (int i2 = 1; i2 < a2.f1546b.length; i2++) {
                        bufferedWriter.write(a2.f1546b[i2] + "\n");
                    }
                    bufferedWriter.write(String.valueOf(a2.f.size()) + "\n");
                    for (int i3 = 0; i3 < a2.f.size(); i3++) {
                        bufferedWriter.write(a2.f.get(i3).a() + "\n");
                    }
                } else {
                    bufferedWriter2.write(a2.c + "\n");
                    bufferedWriter2.write(a2.f1545a + "\n");
                    bufferedWriter2.write(a2.f1546b[0] + "\n");
                    bufferedWriter2.write(a2.e[0] + "\n");
                    bufferedWriter2.write(a2.d + "\n");
                    bufferedWriter2.write(a2.e[1] + "\n");
                    bufferedWriter2.write(a2.e[2] + "\n");
                    bufferedWriter2.write(a2.e[3] + "\n");
                    bufferedWriter2.write(a2.e[4] + "\n");
                    bufferedWriter2.write(a2.e[5] + "\n");
                    bufferedWriter2.write(String.valueOf(a2.f1546b.length - 1) + "\n");
                    for (int i4 = 1; i4 < a2.f1546b.length; i4++) {
                        bufferedWriter2.write(a2.f1546b[i4] + "\n");
                    }
                    bufferedWriter2.write(String.valueOf(a2.f.size()) + "\n");
                    for (int i5 = 0; i5 < a2.f.size(); i5++) {
                        bufferedWriter2.write(a2.f.get(i5).a() + "\n");
                    }
                }
            }
            this.e.getSharedPreferences("smart_dial_task_data", 0).edit().putInt("pref_file_version", 1).apply();
            bufferedWriter2.close();
            outputStreamWriter2.close();
            fileOutputStream2.close();
            bufferedWriter.close();
            outputStreamWriter.close();
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            Log.e("SmartDialUnbundle", "Fail to save contact to local file due to: " + e.toString());
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e("SmartDialUnbundle", "Fail to save contact to local file due to: " + e2.toString());
            e2.printStackTrace();
        }
        Log.d("SmartDialUnbundle", "SmartDialDataTask saveAllContactDataToFile finished, spent time= " + (System.currentTimeMillis() - currentTimeMillis));
    }

    public final void a() {
        Log.d("SmartDialUnbundle", "LoadContactsTask cancel");
        this.j = true;
    }

    public final boolean a(int i) {
        String str;
        if (i == 2) {
            new File(this.e.getFilesDir(), "calllog.data");
            new File(this.e.getFilesDir(), "contact.data");
            this.c = 1;
        } else {
            this.c = i;
        }
        StringBuilder sb = new StringBuilder("SmartDialDataTask loadContactDataTask type: ");
        switch (this.c) {
            case 0:
                str = new String("LOAD CALLS DATA FROM DB");
                break;
            case 1:
                str = new String("LOAD ALL DATA FROM DB");
                break;
            case 2:
                str = new String("LOAD ALL DATA FROM FILE");
                break;
            default:
                str = new String("Type Not Supported");
                break;
        }
        Log.d("SmartDialUnbundle", sb.append(str).toString());
        return this.c == 2;
    }

    public final boolean b() {
        return this.k || this.f1553a;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Log.d("SmartDialUnbundle", "SmartDialDataTask run");
        this.k = true;
        this.f1553a = false;
        switch (this.c) {
            case 0:
                this.f1554b = true;
                h();
                if (!this.j) {
                    i();
                    break;
                }
                break;
            case 1:
                Log.d("SmartDialUnbundle", "LoadContactsTask start loadAllContactData");
                long currentTimeMillis = System.currentTimeMillis();
                Process.setThreadPriority(10);
                j.a().d();
                c();
                d();
                e();
                f();
                g();
                this.k = false;
                j.a().f();
                j.a().b();
                Log.d("SmartDialUnbundle", "[Time] LoadContactsTask done. #Data(Raw Contacts+Unknown Call logs)=" + j.a().c() + ". Spent=" + (System.currentTimeMillis() - currentTimeMillis) + " ms.");
                this.i.clear();
                this.i = null;
                this.f.clear();
                this.f = null;
                this.g.clear();
                this.g = null;
                this.h.clear();
                this.h = null;
                if (!this.j) {
                    i();
                    break;
                }
                break;
            case 2:
                if (this.e.getSharedPreferences("smart_dial_task_data", 0).getInt("pref_file_version", 0) == 1) {
                    Log.d("SmartDialUnbundle", "SmartDialDataTask loadAllContactDataFromFile");
                    long currentTimeMillis2 = System.currentTimeMillis();
                    j.a().d();
                    a("calllog.data");
                    a("contact.data");
                    this.k = false;
                    j.a().f();
                    j.a().b();
                    Log.d("SmartDialUnbundle", "SmartDialDataTask loadAllContactDataFromFile finished, #Data=" + j.a().c() + ", spent time= " + (System.currentTimeMillis() - currentTimeMillis2) + "ms");
                    break;
                }
                break;
            default:
                Log.e("SmartDialUnbundle", "LoadContactsTask TaskType Not Support!");
                break;
        }
        this.k = false;
        Log.d("SmartDialUnbundle", "SmartDialDataTask finish");
    }
}
