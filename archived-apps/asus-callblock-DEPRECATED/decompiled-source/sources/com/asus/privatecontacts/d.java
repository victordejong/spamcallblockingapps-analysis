package com.asus.privatecontacts;

import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.asus.privatecontacts.b.b;
import com.asus.privatecontacts.provider.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/d.class */
public class d extends PhoneStateListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3011a = d.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static int f3012b = 3;
    private static HashMap<Long, Integer> e = new HashMap<>();
    private Context c;
    private long d;

    public d(Context context, long j) {
        super((int) j);
        this.c = context;
        this.d = j;
        if (!e.containsKey(Long.valueOf(this.d))) {
            e.put(Long.valueOf(this.d), 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c7 A[ADDED_TO_REGION, EDGE_INSN: B:59:0x00c7->B:22:0x00c7 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.d.a(java.lang.String, boolean):void");
    }

    public static boolean a() {
        boolean z;
        Iterator<Long> it = e.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (e.get(it.next()).intValue() != 0) {
                z = false;
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(java.lang.String r8) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x00b1
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00b1
            r0 = r7
            android.content.Context r0 = r0.c     // Catch: Exception -> 0x0081, all -> 0x009a
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0081, all -> 0x009a
            android.net.Uri r1 = com.asus.privatecontacts.provider.a.c.f3063a     // Catch: Exception -> 0x0081, all -> 0x009a
            r2 = r8
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)     // Catch: Exception -> 0x0081, all -> 0x009a
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0081, all -> 0x009a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x004c
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.getCount()     // Catch: all -> 0x00a9, Exception -> 0x00ad
            r11 = r0
            r0 = r11
            if (r0 <= 0) goto L_0x004c
            r0 = 1
            r12 = r0
        L_0x0037:
            r0 = r12
            r13 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0049
            r0 = r9
            r0.close()
            r0 = r12
            r13 = r0
        L_0x0049:
            r0 = r13
            return r0
        L_0x004c:
            r0 = r9
            if (r0 == 0) goto L_0x007b
            r0 = r9
            r10 = r0
            java.lang.String r0 = com.asus.privatecontacts.d.f3011a     // Catch: all -> 0x00a9, Exception -> 0x00ad
            r14 = r0
            r0 = r9
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a9, Exception -> 0x00ad
            r15 = r0
            r0 = r9
            r10 = r0
            r0 = r15
            java.lang.String r1 = "No matche data in phone_lookup table for number: "
            r0.<init>(r1)     // Catch: all -> 0x00a9, Exception -> 0x00ad
            r0 = r9
            r10 = r0
            r0 = r14
            r1 = r15
            r2 = r8
            java.lang.String r2 = com.asus.privatecontacts.b.b.b(r2)     // Catch: all -> 0x00a9, Exception -> 0x00ad
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00a9, Exception -> 0x00ad
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a9, Exception -> 0x00ad
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x00a9, Exception -> 0x00ad
        L_0x007b:
            r0 = 0
            r12 = r0
            goto L_0x0037
        L_0x0081:
            r8 = move-exception
            r0 = 0
            r9 = r0
        L_0x0084:
            r0 = r9
            r10 = r0
            r0 = r8
            r0.printStackTrace()     // Catch: all -> 0x00a9
            r0 = r9
            if (r0 == 0) goto L_0x00b1
            r0 = r9
            r0.close()
            r0 = 0
            r13 = r0
            goto L_0x0049
        L_0x009a:
            r8 = move-exception
            r0 = 0
            r10 = r0
        L_0x009d:
            r0 = r10
            if (r0 == 0) goto L_0x00a7
            r0 = r10
            r0.close()
        L_0x00a7:
            r0 = r8
            throw r0
        L_0x00a9:
            r8 = move-exception
            goto L_0x009d
        L_0x00ad:
            r8 = move-exception
            goto L_0x0084
        L_0x00b1:
            r0 = 0
            r13 = r0
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.d.a(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.d.b(java.lang.String):boolean");
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        Integer num = e.get(Long.valueOf(this.d));
        if (num == null) {
            Log.d(f3011a, "lastState is null... SubId: " + this.d);
            return;
        }
        Log.d(f3011a, "SubId: " + this.d + ", state: " + i + ", previous state: " + num.intValue() + ", incomingNumber: " + b.b(str));
        switch (i) {
            case 0:
                if (num.intValue() != 0) {
                    ArrayList<String> d = c.d(this.c);
                    ArrayList<String> arrayList = new ArrayList<>();
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    Log.d(f3011a, "callList size: " + d.size());
                    Iterator<String> it = d.iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        if (a(next)) {
                            Log.d(f3011a, "Number: " + b.b(next) + " was added to privaye call list...");
                            arrayList.add(next);
                        } else if (b(next)) {
                            Log.d(f3011a, "Number: " + b.b(next) + " was added to privaye sip list...");
                            arrayList2.add(next);
                        } else {
                            Log.d(f3011a, "Number: " + b.b(next) + " doesn't belong to any private contact.");
                        }
                    }
                    if (arrayList.size() > 0 || arrayList2.size() > 0) {
                        Log.d(f3011a, "privateList size: " + arrayList.size() + ", privateSipList size: " + arrayList2.size());
                        Iterator<String> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            a(it2.next(), false);
                        }
                        Iterator<String> it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            a(it3.next(), true);
                        }
                        Log.d(f3011a, "Start copying call logs to private database...");
                        Intent intent = new Intent(this.c, PrivateContactsManager.class);
                        intent.setAction("new_private_call_logs");
                        intent.putStringArrayListExtra("phone_numbers", arrayList);
                        intent.putStringArrayListExtra("sip_numbers", arrayList2);
                        this.c.startService(intent);
                    } else {
                        Log.d(f3011a, "privateList or privateSipList is empty");
                    }
                    Log.d(f3011a, "<<< onCallStateChanged");
                }
                e.put(Long.valueOf(this.d), 0);
                break;
            case 1:
                e.put(Long.valueOf(this.d), 1);
                break;
            case 2:
                e.put(Long.valueOf(this.d), 2);
                break;
        }
        Log.d("PrivatePhoneStateListener", "Unregister phone state listener!");
        ((TelephonyManager) this.c.getSystemService("phone")).listen(this, 0);
        super.onCallStateChanged(i, str);
    }
}
