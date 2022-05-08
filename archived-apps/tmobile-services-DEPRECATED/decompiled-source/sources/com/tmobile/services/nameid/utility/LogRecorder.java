package com.tmobile.services.nameid.utility;

import android.util.Log;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.exceptions.RealmError;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/LogRecorder.class */
public class LogRecorder {

    /* renamed from: a */
    private static LogRecorder f14325a;

    /* renamed from: b */
    private static StringBuffer f14326b;

    /* renamed from: c */
    private static int f14327c = 0;

    /* renamed from: d */
    private static boolean f14328d = false;

    private LogRecorder() {
    }

    /* renamed from: a */
    private static void m5668a() {
        Log.d("LogRecorder#", "Flushing log buffer to Realm. logCount = " + f14327c);
        long currentTimeMillis = System.currentTimeMillis();
        try {
            Realm G0 = Realm.m3064G0();
            try {
                final LogItem logItem = new LogItem();
                logItem.setDate(new Date(currentTimeMillis));
                logItem.setLog(f14326b.toString());
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.a0
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        realm.m3046u0(LogItem.this, new ImportFlag[0]);
                    }
                });
                f14326b = new StringBuffer(3750);
                f14327c = 0;
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (RealmError | Exception e) {
            Log.e("LogRecorder#", "Error while flushing log buffer to Realm. Will try again upon next log.", e);
        }
    }

    /* renamed from: b */
    public static void m5667b() {
        if (f14328d) {
            m5668a();
            f14327c = 0;
        }
    }

    /* renamed from: c */
    public static boolean m5666c() {
        return f14328d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m5664e(RealmResults realmResults, Realm realm) {
        if (realmResults.size() <= 0 || !realmResults.m3099d()) {
            LogUtil.m5643d("LogRecorder#purge", "Could not remove any items from realm");
        } else {
            LogUtil.m5643d("LogRecorder#purge", "Removed items from realm");
        }
    }

    /* renamed from: f */
    private static void m5663f() {
        LogUtil.m5643d("LogRecorder#purge", "removing old records from table");
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(LogItem.class);
            Q0.m2907P("date", new Date(System.currentTimeMillis() - 259200000));
            final RealmResults E = Q0.m2918E();
            LogUtil.m5643d("LogRecorder#purge", "Found " + E.size() + " rows over 72 hours old.");
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.z
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    LogRecorder.m5664e(RealmResults.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: g */
    public static void m5662g(int i, String str, String str2) {
        if (f14328d) {
            String str3 = i == 1 ? " D/" : i == 2 ? " I/" : i == 0 ? " V/" : i == 3 ? " W/" : i == 4 ? " E/" : "";
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", new Locale("en", "US"));
            StringBuffer stringBuffer = f14326b;
            stringBuffer.append(simpleDateFormat.format(new Date()));
            stringBuffer.append(str3);
            stringBuffer.append(str);
            stringBuffer.append(": ");
            stringBuffer.append(str2);
            int i2 = f14327c + 1;
            f14327c = i2;
            if (i2 >= 25) {
                m5668a();
            } else {
                f14326b.append("\n");
            }
        }
    }

    /* renamed from: h */
    public static void m5661h() {
        f14328d = true;
        if (f14325a == null) {
            f14325a = new LogRecorder();
        }
        f14326b = new StringBuffer(3750);
        m5663f();
    }
}
