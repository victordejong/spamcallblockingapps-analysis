package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import androidx.p026b.C0529a;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.aa */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/aa.class */
public final class C3187aa {

    /* renamed from: a */
    private int f19056a = 0;

    /* renamed from: b */
    private final Map<Integer, TaskCompletionSource<Void>> f19057b = new C0529a();

    /* renamed from: c */
    private final C3232w f19058c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3187aa(C3232w wVar) {
        this.f19058c = wVar;
    }

    /* renamed from: a */
    private static boolean m533a(FirebaseInstanceId firebaseInstanceId, String str) {
        String str2;
        String[] split = str.split("!");
        if (split.length != 2) {
            return true;
        }
        String str3 = split[0];
        String str4 = split[1];
        char c = 65535;
        try {
            int hashCode = str3.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && str3.equals("U")) {
                    c = 1;
                }
            } else if (str3.equals("S")) {
                c = 0;
            }
            if (c == 0) {
                firebaseInstanceId.m561a(str4);
                if (!FirebaseInstanceId.m549f()) {
                    return true;
                }
                str2 = "subscribe operation succeeded";
            } else if (c != 1) {
                return true;
            } else {
                firebaseInstanceId.m554b(str4);
                if (!FirebaseInstanceId.m549f()) {
                    return true;
                }
                str2 = "unsubscribe operation succeeded";
            }
            Log.d("FirebaseInstanceId", str2);
            return true;
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.e("FirebaseInstanceId", valueOf.length() != 0 ? "Topic sync failed: ".concat(valueOf) : new String("Topic sync failed: "));
            return false;
        }
    }

    /* renamed from: a */
    private final boolean m532a(String str) {
        synchronized (this) {
            synchronized (this.f19058c) {
                String a = this.f19058c.m449a();
                String valueOf = String.valueOf(str);
                if (!a.startsWith(valueOf.length() != 0 ? ",".concat(valueOf) : new String(","))) {
                    return false;
                }
                String valueOf2 = String.valueOf(str);
                this.f19058c.m448a(a.substring((valueOf2.length() != 0 ? ",".concat(valueOf2) : new String(",")).length()));
                return true;
            }
        }
    }

    /* renamed from: b */
    private final String m531b() {
        String a;
        synchronized (this.f19058c) {
            a = this.f19058c.m449a();
        }
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        String[] split = a.split(",");
        if (split.length <= 1 || TextUtils.isEmpty(split[1])) {
            return null;
        }
        return split[1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m535a() {
        boolean z;
        synchronized (this) {
            z = m531b() != null;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (com.google.firebase.iid.FirebaseInstanceId.m549f() == false) goto L_0x0019;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
        android.util.Log.d("FirebaseInstanceId", "topic sync succeeded");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m534a(com.google.firebase.iid.FirebaseInstanceId r5) {
        /*
            r4 = this;
        L_0x0000:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            java.lang.String r0 = r0.m531b()     // Catch: all -> 0x0062
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x001d
            boolean r0 = com.google.firebase.iid.FirebaseInstanceId.m549f()     // Catch: all -> 0x0062
            if (r0 == 0) goto L_0x0019
            java.lang.String r0 = "FirebaseInstanceId"
            java.lang.String r1 = "topic sync succeeded"
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x0062
        L_0x0019:
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x0062
            r0 = 1
            return r0
        L_0x001d:
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x0062
            r0 = r5
            r1 = r6
            boolean r0 = m533a(r0, r1)
            if (r0 != 0) goto L_0x0029
            r0 = 0
            return r0
        L_0x0029:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            java.util.Map<java.lang.Integer, com.google.android.gms.tasks.TaskCompletionSource<java.lang.Void>> r0 = r0.f19057b     // Catch: all -> 0x005d
            r1 = r4
            int r1 = r1.f19056a     // Catch: all -> 0x005d
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: all -> 0x005d
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x005d
            com.google.android.gms.tasks.TaskCompletionSource r0 = (com.google.android.gms.tasks.TaskCompletionSource) r0     // Catch: all -> 0x005d
            r7 = r0
            r0 = r4
            r1 = r6
            boolean r0 = r0.m532a(r1)     // Catch: all -> 0x005d
            r0 = r4
            r1 = r4
            int r1 = r1.f19056a     // Catch: all -> 0x005d
            r2 = 1
            int r1 = r1 + r2
            r0.f19056a = r1     // Catch: all -> 0x005d
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x005d
            r0 = r7
            if (r0 == 0) goto L_0x0000
            r0 = r7
            r1 = 0
            r0.setResult(r1)
            goto L_0x0000
        L_0x005d:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x005d
            r0 = r5
            throw r0
        L_0x0062:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x0062
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.C3187aa.m534a(com.google.firebase.iid.FirebaseInstanceId):boolean");
    }
}
