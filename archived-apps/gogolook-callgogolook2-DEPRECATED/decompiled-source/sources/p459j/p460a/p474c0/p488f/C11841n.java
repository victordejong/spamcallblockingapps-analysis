package p459j.p460a.p474c0.p488f;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsManager;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.receiver.SendStatusReceiver;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.f.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/n.class */
public class C11841n {

    /* renamed from: a */
    public static ConcurrentHashMap<Uri, C11842a> f26556a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public static Boolean f26557b = null;

    /* renamed from: j.a.c0.f.n$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/n$a.class */
    public static class C11842a {

        /* renamed from: a */
        public int f26558a;

        /* renamed from: b */
        public int f26559b;

        public C11842a(int i) {
            C12151d.m6999b(i > 0);
            this.f26558a = i;
            this.f26559b = 0;
        }

        /* renamed from: a */
        public int m8056a() {
            return this.f26559b;
        }

        /* renamed from: a */
        public final int m8055a(int i) {
            if (i == -1) {
                return 0;
            }
            if (i == 4) {
                return 1;
            }
            if (i == 1 || i == 2) {
                return 2;
            }
            C12153d0.m6987b("MessagingApp", "SmsSender: Unexpected sent intent resultCode = " + i);
            return 2;
        }

        /* renamed from: b */
        public final void m8053b(int i) {
            int a = m8055a(i);
            if (a > this.f26559b) {
                this.f26559b = a;
            }
        }

        /* renamed from: b */
        public boolean m8054b() {
            return this.f26558a > 0;
        }

        /* renamed from: c */
        public void m8052c(int i) {
            this.f26558a--;
            m8053b(i);
        }

        public String toString() {
            return "SendResult:Pending=" + this.f26558a + ",HighestFailureLevel=" + this.f26559b;
        }
    }

    static {
        new Random();
    }

    /* renamed from: a */
    public static Intent m8058a(Context context, String str, Uri uri, int i, int i2) {
        Intent intent = new Intent(str, uri, context, SendStatusReceiver.class);
        intent.putExtra("partId", i);
        intent.putExtra("subId", i2);
        return intent;
    }

    /* renamed from: a */
    public static C11842a m8060a(Context context, int i, String str, String str2, String str3, boolean z, Uri uri) throws C11838l {
        String str4;
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "SmsSender: sending message. dest=" + str + " message=" + str2 + " serviceCenter=" + str3 + " requireDeliveryReport=" + z + " requestId=" + uri);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(C11828f.m8193a(i).m8190c()) || (!C11832i.m8158b(str) && !C11832i.m8160a(str, i))) {
                str4 = PhoneNumberUtils.stripSeparators(str);
            } else {
                str2 = str + " " + str2;
                str4 = C11828f.m8193a(i).m8190c();
            }
            if (!TextUtils.isEmpty(str4)) {
                ArrayList<String> divideMessage = AbstractC12181l0.m6895b(i).mo6871j().divideMessage(str2);
                if (divideMessage == null || divideMessage.size() < 1) {
                    throw new C11838l("SmsSender: fails to divide message");
                }
                C11842a aVar = new C11842a(divideMessage.size());
                f26556a.put(uri, aVar);
                m8059a(context, i, str4, divideMessage, str3, z, uri);
                synchronized (aVar) {
                    AbstractC12170i.m6941a().mo6918a("bugle_sms_send_timeout", PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    for (long j = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS; aVar.m8054b() && j > 0; j = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS - (SystemClock.elapsedRealtime() - elapsedRealtime)) {
                        try {
                            aVar.wait(j);
                        } catch (InterruptedException e) {
                            C12153d0.m6987b("MessagingApp", "SmsSender: sending wait interrupted");
                        }
                    }
                }
                f26556a.remove(uri);
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "SmsSender: sending completed. dest=" + str4 + " message=" + str2 + " result=" + aVar);
                }
                return aVar;
            }
            throw new C11838l("SmsSender: empty destination address");
        }
        throw new C11838l("SmsSender: empty text message");
    }

    /* renamed from: a */
    public static String m8061a(Context context, int i, int i2) {
        String d = AbstractC12181l0.m6895b(i).mo6876d();
        return TextUtils.isEmpty(d) ? context.getString(R$string.carrier_send_error_unknown_carrier, Integer.valueOf(i2)) : context.getString(R$string.carrier_send_error, d, Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static void m8059a(Context context, int i, String str, ArrayList<String> arrayList, String str2, boolean z, Uri uri) throws C11838l {
        C12151d.m7000b(context);
        SmsManager j = AbstractC12181l0.m6895b(i).mo6871j();
        int size = arrayList.size();
        ArrayList<PendingIntent> arrayList2 = new ArrayList<>(size);
        ArrayList<PendingIntent> arrayList3 = new ArrayList<>(size);
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = size <= 1 ? 0 : i2 + 1;
            if (!z || i2 != size - 1) {
                arrayList2.add(null);
            } else {
                arrayList2.add(PendingIntent.getBroadcast(context, i3, m8058a(context, "gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MESSAGE_DELIVERED", uri, i3, i), 0));
            }
            arrayList3.add(PendingIntent.getBroadcast(context, i3, m8058a(context, "gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MESSAGE_SENT", uri, i3, i), 0));
        }
        if (f26557b == null) {
            f26557b = Boolean.valueOf(C11828f.m8193a(i).m8179n());
        }
        try {
            if (f26557b.booleanValue()) {
                for (int i4 = 0; i4 < size; i4++) {
                    j.sendTextMessage(str, str2, arrayList.get(i4), arrayList3.get(i4), arrayList2.get(i4));
                }
                return;
            }
            j.sendMultipartTextMessage(str, str2, arrayList, arrayList3, arrayList2);
        } catch (Exception e) {
            throw new C11838l("SmsSender: caught exception in sending " + e);
        }
    }

    /* renamed from: a */
    public static void m8057a(Uri uri, int i, int i2, int i3, int i4) {
        if (i != -1) {
            C12153d0.m6987b("MessagingApp", "SmsSender: failure in sending message part.  requestId=" + uri + " partId=" + i3 + " resultCode=" + i + " errorCode=" + i2);
            if (i2 != 0) {
                C12212s0.m6789a(m8061a(AbstractC11516a.m9413n().mo9412a(), i4, i2));
            }
        } else if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "SmsSender: received sent result.  requestId=" + uri + " partId=" + i3 + " resultCode=" + i);
        }
        if (uri != null) {
            C11842a aVar = f26556a.get(uri);
            if (aVar != null) {
                synchronized (aVar) {
                    aVar.m8052c(i);
                    if (!aVar.m8054b()) {
                        aVar.notifyAll();
                    }
                }
                return;
            }
            C12153d0.m6987b("MessagingApp", "SmsSender: ignoring sent result.  requestId=" + uri + " partId=" + i3 + " resultCode=" + i);
        }
    }
}
