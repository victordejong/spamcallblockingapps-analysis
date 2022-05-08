package com.android.contacts.asuscallerid;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.contacts.floatingwindow.FloatingWindowService;
import com.asus.privatecontacts.b.f;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static String f594a = c.class.getSimpleName();
    public static int e;
    public static String f;
    private static c j;

    /* renamed from: b  reason: collision with root package name */
    a.c f595b;
    private a.c[] k;
    private List<a.e> l;
    private String m;
    HashMap<String, String> c = new HashMap<>();
    private Bitmap n = null;
    Uri d = null;
    private String o = null;
    int g = -1;
    boolean h = false;
    boolean i = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/c$a.class */
    public final class a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f596a;

        /* renamed from: b  reason: collision with root package name */
        String f597b;
        String c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context, String str, String str2) {
            Log.d(c.f594a, "in HandleCallTask");
            this.f596a = context;
            this.f597b = str;
            this.c = str2;
        }

        private Boolean a() {
            try {
                c cVar = c.this;
                Context context = this.f596a;
                String str = this.f597b;
                String str2 = this.c;
                if (str != null && context != null && !com.asus.a.c.a(str) && !com.asus.a.c.a(context, str) && !f.a(context, str)) {
                    if (com.asus.a.a.d(context)) {
                        if (com.asus.a.a.h(context)) {
                            c.f = "asus_callguard";
                            c.a(context, 1, str2);
                        }
                        cVar.h = com.asus.a.c.o(context);
                        String a2 = com.asus.a.a.a(str);
                        cVar.c.put(a2, str2);
                        if (!a2.equals(cVar.b())) {
                            if (cVar.f595b == null || !a2.equals(cVar.f595b.f2355a)) {
                                cVar.a(a2);
                                new b(context, str2, c.e, c.f).execute(a2);
                            } else {
                                cVar.a(context, str2, cVar.f595b.l, a2);
                            }
                        }
                    } else if (com.asus.a.a.c(context)) {
                        c.a(context, 0, str2);
                    } else {
                        c.a(context, -1, str2);
                    }
                }
            } catch (Exception e) {
                Log.d(c.f594a, "exception in HandleCallTask:" + e.toString());
            }
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/c$b.class */
    public final class b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f598a;

        /* renamed from: b  reason: collision with root package name */
        String f599b;
        String c;
        int d;
        String e;
        boolean f = false;

        b(Context context, String str, int i, String str2) {
            Log.d(c.f594a, "in queryAsusEngineTask:" + i);
            this.f598a = context;
            this.f599b = str;
            this.d = i;
            this.e = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            boolean z;
            c a2 = c.a();
            a2.g = c.b(this.f598a);
            Log.d(c.f594a, "updateCallsID:" + a2.g);
            this.c = strArr[0];
            if (com.asus.a.c.a(this.f598a, this.c) || f.a(this.f598a, this.c)) {
                z = false;
            } else {
                c.this.f595b = com.asus.a.a.a(this.f598a, strArr[0], this.d == 2 ? "1" : "0");
                if (c.this.f595b == null) {
                    z = false;
                } else {
                    Log.d(c.f594a, "in queryAsusEngineTask mCallerInfo get:" + c.this.f595b.f2356b + ", " + c.this.f595b.d + ", " + c.this.f595b.l);
                    if ("touchpal".equals(this.e) && c.this.f595b.l == 4) {
                        c.this.l = com.asus.a.a.b(this.f598a, this.c);
                        if (c.this.f595b != null) {
                            c.this.n = com.asus.a.a.a(this.f598a, c.this.f595b);
                        }
                        if (c.this.n != null) {
                            c cVar = c.this;
                            String str = this.c;
                            Bitmap bitmap = c.this.n;
                            File file = new File("sdcard/ASUS/Callguard/" + str + ".png");
                            if (!file.exists() && bitmap != null) {
                                try {
                                    Log.d(c.f594a, "[moveCompanyLogo] companylogo is not exist but Bitmap != null");
                                    File file2 = new File("sdcard/ASUS/Callguard/");
                                    if (!file2.exists()) {
                                        file2.mkdirs();
                                    }
                                    FileOutputStream fileOutputStream = new FileOutputStream("sdcard/ASUS/Callguard/" + str + ".png");
                                    bitmap.compress(Bitmap.CompressFormat.PNG, 85, fileOutputStream);
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (Exception e) {
                                    Log.d(c.f594a, "[moveCompanyLogo] Fail to save bitmap,Exception : " + e.toString());
                                }
                            }
                            if (file.exists()) {
                                cVar.d = Uri.fromFile(file);
                                Log.d(c.f594a, "[moveCompanyLogo] exist:" + cVar.d.toString());
                            }
                        }
                    } else if ("asus_callguard".equals(this.e)) {
                        if (com.asus.a.c.e()) {
                            c.this.k = com.asus.a.a.i(this.f598a, strArr[0]);
                        } else if (c.this.f595b.l == 4) {
                            c.this.k = null;
                        } else if ("block".equals(c.this.f595b.c)) {
                            c.this.k = new a.c[]{c.this.f595b};
                        } else {
                            c.this.k = null;
                        }
                    }
                    c.this.a((String) null);
                    if (!TextUtils.isEmpty(com.asus.a.c.b("debug.send_status_interval")) && PhoneCapabilityTester.isDebug()) {
                        SystemClock.sleep(Long.parseLong(com.asus.a.c.b("debug.send_status_interval")));
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue() && c.this.f595b != null && !TextUtils.isEmpty(c.this.f595b.f2355a)) {
                if (this.f599b == null) {
                    this.f599b = (String) c.this.c.get(c.this.f595b.f2355a);
                }
                if (!c.this.h) {
                    c.this.a(this.f598a, this.f599b, c.this.f595b.l, this.c);
                } else if (this.f599b != null || CompatUtils.isMarshmallowCompatible()) {
                    c.this.a(this.f598a, this.f599b, c.this.f595b.l, this.c);
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public static c a() {
        if (j == null) {
            j = new c();
        }
        return j;
    }

    public static void a(Context context, int i, String str) {
        Log.d(f594a, "sendStatusInfo, status:" + i + ", callId:" + str);
        Intent intent = new Intent("com.asus.asuscallguard.Status");
        intent.putExtra("ASUS_CALLER_QUERY_STATUS", i);
        intent.putExtra("ASUS_CALLER_CALL_ID", str);
        context.sendBroadcast(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.asuscallerid.c.b(android.content.Context):int");
    }

    public final void a(Context context) {
        if (!this.h && this.i) {
            Log.d(f594a, "closeFloadingWindow stopService");
            try {
                context.stopService(new Intent(context, FloatingWindowService.class));
                this.i = false;
            } catch (Exception e2) {
                Log.e(f594a, "fail to stop FloatingWindowService due to:" + e2.toString());
            }
        }
    }

    public final void a(Context context, String str, int i, int i2) {
        Log.d(f594a, "checkCall: " + com.asus.a.a.c(str) + ", numberInQuerying:" + this.m);
        if (str != null && context != null && !com.asus.a.c.a(str)) {
            this.h = com.asus.a.c.o(context);
            e = i2;
            String a2 = com.asus.a.a.a(str);
            if (i == 1 && com.asus.a.c.l(context) && !a2.equals(b())) {
                a(a2);
                new b(context, null, i2, f).execute(a2);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:10|11|25|(2:27|(2:29|(6:31|(4:66|67|68|69)(1:35)|36|(1:38)(2:105|(2:110|(2:115|(1:117))(1:114))(1:109))|39|(11:41|(1:43)(1:118)|44|(1:46)(1:119)|47|48|(1:50)(1:120)|51|(5:121|133|122|(1:129)(1:126)|132)(1:57)|58|135))))|130|48|(0)(0)|51|(1:53)|55|121|133|122|(1:124)|129|132|58|135) */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x05d4, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x05d5, code lost:
        android.util.Log.d(com.android.contacts.asuscallerid.c.f594a, "fail to start FloatingWindowService due to:" + r6.toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r6, java.lang.String r7, int r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 1557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.asuscallerid.c.a(android.content.Context, java.lang.String, int, java.lang.String):void");
    }

    public final void a(String str) {
        synchronized (this) {
            this.m = str;
        }
    }

    public final String b() {
        String str;
        synchronized (this) {
            str = this.m;
        }
        return str;
    }

    public final void c() {
        Log.d(f594a, "clearInfo");
        this.c.clear();
        this.f595b = null;
        this.k = null;
        this.n = null;
        this.d = null;
        this.o = null;
    }
}
