package p459j.p460a.p582w0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.provider.CallLog;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import me.leolin.shortcutbadger.ShortcutBadger;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
/* renamed from: j.a.w0.h4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/h4.class */
public class C14023h4 {

    /* renamed from: j.a.w0.h4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/h4$a.class */
    public static final class C14024a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ long f31459a;

        /* renamed from: b */
        public final /* synthetic */ long f31460b;

        /* renamed from: c */
        public final /* synthetic */ boolean f31461c;

        public C14024a(long j, long j2, boolean z) {
            this.f31459a = j;
            this.f31460b = j2;
            this.f31461c = z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int b = C14023h4.m2757b(this.f31459a, this.f31460b) + (this.f31461c ? 1 : 0);
            ShortcutBadger.applyCount(MyApplication.m29013o(), b);
            C13915b3.m3048d("last_missing_call_badge_count", b);
        }
    }

    /* renamed from: a */
    public static int m2762a(String str, long j) {
        return C13131j.m4549a(j, str);
    }

    /* renamed from: a */
    public static List<Map<EnumC14329a, String>> m2764a(@NonNull Context context, long j, long j2) {
        return m2763a(context, new int[]{19}, j, j2);
    }

    /* renamed from: a */
    public static List<Map<EnumC14329a, String>> m2763a(@NonNull Context context, int[] iArr, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        List<LogsGroupRealmObject> a = C13131j.m4550a(j, j2, iArr);
        if (a != null) {
            for (LogsGroupRealmObject logsGroupRealmObject : a) {
                HashMap hashMap = new HashMap();
                String number = logsGroupRealmObject.getNumber();
                String l = C14108o4.m2474l(number);
                EnumC14329a aVar = EnumC14329a.NUMBER;
                String str = number;
                if (TextUtils.isEmpty(number)) {
                    str = "";
                }
                hashMap.put(aVar, str);
                EnumC14329a aVar2 = EnumC14329a.E164NUMBER;
                String str2 = l;
                if (TextUtils.isEmpty(l)) {
                    str2 = "";
                }
                hashMap.put(aVar2, str2);
                hashMap.put(EnumC14329a._ID, String.valueOf(logsGroupRealmObject.getId()));
                hashMap.put(EnumC14329a.NAME, logsGroupRealmObject.getDisplayName());
                hashMap.put(EnumC14329a.BODY, logsGroupRealmObject.getContent());
                hashMap.put(EnumC14329a.DATE, String.valueOf(logsGroupRealmObject.getDate()));
                hashMap.put(EnumC14329a.DURATION, String.valueOf(logsGroupRealmObject.getDuration()));
                hashMap.put(EnumC14329a.C_TIME, String.valueOf(logsGroupRealmObject.getCreate_time()));
                hashMap.put(EnumC14329a.U_TIME, String.valueOf(logsGroupRealmObject.getUpdate_time()));
                hashMap.put(EnumC14329a.NEW, String.valueOf(logsGroupRealmObject.isNew()));
                hashMap.put(EnumC14329a.TYPE, String.valueOf(logsGroupRealmObject.getType()));
                arrayList.add(hashMap);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m2759a(boolean z, C11507b.C11508a aVar) {
        if (z) {
            aVar.m9449a("last_missing_call_view_date", System.currentTimeMillis());
        }
        ShortcutBadger.applyCount(MyApplication.m29013o(), 0);
        aVar.m9450a("last_missing_call_badge_count", 0);
        return null;
    }

    /* renamed from: a */
    public static void m2769a() {
        m2761a(false);
    }

    /* renamed from: a */
    public static void m2768a(long j) {
        if (C13915b3.m3065a("last_missing_call_view_date", -1L) < j) {
            m2761a(true);
            m2766a(MyApplication.m29013o());
        }
    }

    /* renamed from: a */
    public static void m2766a(@NonNull Context context) {
        C14188u2.m2281a(context, 9900);
    }

    /* renamed from: a */
    public static void m2765a(@NonNull Context context, int i) {
        if (i == 0) {
            m2766a(context);
            return;
        }
        Intent intent = new Intent(context, MainActivity.class);
        intent.putExtra("goto", "calllog");
        intent.putExtra("from", "missed_call_notification");
        PendingIntent a = C14217x3.m2188a(context, intent, 9900);
        String a2 = C14206w4.m2224a((int) R$string.multiple_notification_title, Integer.valueOf(i));
        String a3 = C14206w4.m2225a((int) R$string.multiple_notification_content);
        NotificationManagerCompat.from(context).notify(9900, C14173t4.m2305a(C14173t4.m2307a(context).setContentTitle(a2).setContentText(a3).setTicker(a2).setContentIntent(a).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(a3)).setPriority(1)));
    }

    /* renamed from: a */
    public static void m2761a(final boolean z) {
        C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.w0.g
            @Override // p626l.p641z.p642c.AbstractC15118l
            public final Object invoke(Object obj) {
                return C14023h4.m2759a(z, (C11507b.C11508a) obj);
            }
        });
    }

    /* renamed from: a */
    public static void m2760a(boolean z, long j) {
        if (C13915b3.m3062a("enable_missing_call_badge", false)) {
            long a = C13915b3.m3065a("last_missing_call_view_date", -1L);
            if (a != -1) {
                new C14024a(a, j, z).start();
            }
        }
    }

    /* renamed from: b */
    public static int m2757b(long j, long j2) {
        return C13131j.m4537b(j, j2);
    }

    /* renamed from: b */
    public static int m2755b(String str, long j) {
        return C13131j.m4536b(j, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v8 */
    @WorkerThread
    /* renamed from: b */
    public static long m2756b(@NonNull Context context) {
        boolean z;
        boolean z2;
        Cursor cursor;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                if (ContextCompat.checkSelfPermission(context, "android.permission.READ_CALL_LOG") != 0) {
                    return -1L;
                }
                cursor = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"number", "date", "new"}, "new = 0", null, "date DESC");
                boolean z3 = true;
                if (cursor != null) {
                    z3 = true;
                    if (cursor.moveToFirst()) {
                        cursor2 = cursor;
                        cursor3 = cursor;
                        z3 = cursor.getLong(cursor.getColumnIndex("date"));
                    }
                }
                boolean z4 = z3 ? 1 : 0;
                boolean z5 = z3 ? 1 : 0;
                z = z4;
                z2 = z3;
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                z = true;
                if (cursor3 != null) {
                    z2 = true;
                    cursor = cursor3;
                }
                long j = z ? 1L : 0L;
                long j2 = z ? 1L : 0L;
                long j3 = z ? 1L : 0L;
                long j4 = z ? 1L : 0L;
                return j;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    /* renamed from: b */
    public static void m2758b() {
        m2760a(false, -1L);
    }
}
