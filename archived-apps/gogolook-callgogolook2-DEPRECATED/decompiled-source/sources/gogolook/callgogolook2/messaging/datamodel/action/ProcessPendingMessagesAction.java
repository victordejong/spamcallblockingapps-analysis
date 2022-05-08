package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.util.ConnectivityUtil;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessPendingMessagesAction.class */
public class ProcessPendingMessagesAction extends Action implements Parcelable {
    public static final Parcelable.Creator<ProcessPendingMessagesAction> CREATOR = new C4632b();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessPendingMessagesAction$a.class */
    public static final class C4631a implements ConnectivityUtil.AbstractC4843c {
        /* renamed from: a */
        public final void m27677a() {
            C12153d0.m6985c("MessagingAppDataModel", "ProcessPendingMessagesAction: Now connected; starting action");
            ProcessPendingMessagesAction.m27686D();
            new ProcessPendingMessagesAction((C4631a) null).m27742x();
        }

        @Override // gogolook.callgogolook2.messaging.util.ConnectivityUtil.AbstractC4843c
        /* renamed from: a */
        public void mo26926a(Context context, int i) {
            if (i == 0) {
                m27677a();
            }
        }

        @Override // gogolook.callgogolook2.messaging.util.ConnectivityUtil.AbstractC4843c
        /* renamed from: a */
        public void mo26925a(Context context, Intent intent) {
            if (C11834j.m8143a(context, intent) == 0 && (!intent.getBooleanExtra("noConnectivity", false))) {
                m27677a();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessPendingMessagesAction$b.class */
    public static final class C4632b implements Parcelable.Creator<ProcessPendingMessagesAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessPendingMessagesAction createFromParcel(Parcel parcel) {
            return new ProcessPendingMessagesAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessPendingMessagesAction[] newArray(int i) {
            return new ProcessPendingMessagesAction[i];
        }
    }

    public ProcessPendingMessagesAction() {
    }

    public ProcessPendingMessagesAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ProcessPendingMessagesAction(Parcel parcel, C4631a aVar) {
        this(parcel);
    }

    public /* synthetic */ ProcessPendingMessagesAction(C4631a aVar) {
        this();
    }

    /* renamed from: A */
    public static boolean m27689A() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        long currentTimeMillis = System.currentTimeMillis();
        return (m27680b(f, currentTimeMillis) == null && m27683a(f, currentTimeMillis) == null) ? false : true;
    }

    /* renamed from: B */
    public static int m27688B() {
        AbstractC12178k b = AbstractC11516a.m9413n().mo9408b();
        int a = b.mo6909a("process_pending_retry", 0) + 1;
        b.mo6905b("process_pending_retry", a);
        return a;
    }

    /* renamed from: C */
    public static void m27687C() {
        m27686D();
        m27685a(0);
        new ProcessPendingMessagesAction().m27742x();
    }

    /* renamed from: D */
    public static void m27686D() {
        AbstractC11528g.m9259k().mo9245e().m26933b();
        new ProcessPendingMessagesAction().m27757a(101, Long.MAX_VALUE);
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            C12153d0.m6983d("MessagingAppDataModel", "ProcessPendingMessagesAction: Unregistering for connectivity changed events and clearing scheduled alarm");
        }
    }

    /* renamed from: a */
    public static String m27683a(C11534l lVar, long j) {
        Throwable th;
        lVar.m9227a();
        Cursor cursor = null;
        try {
            try {
                int b = (int) lVar.m9213b(NotificationCompat.CarExtender.KEY_MESSAGES, "message_status IN (?, ?)", new String[]{Integer.toString(105), Integer.toString(103)});
                Cursor a = lVar.m9216a(NotificationCompat.CarExtender.KEY_MESSAGES, MessageData.m27631O(), "message_status =? OR message_status =?", new String[]{Integer.toString(104), Integer.toString(102)}, null, null, "received_timestamp ASC");
                try {
                    int count = a.getCount();
                    String str = null;
                    if (b == 0) {
                        str = null;
                        if (a.moveToNext()) {
                            MessageData messageData = new MessageData();
                            messageData.m27626a(a);
                            str = messageData.m27589w();
                        }
                    }
                    lVar.m9210e();
                    lVar.m9214b();
                    if (a != null) {
                        a.close();
                    }
                    if (C12153d0.m6992a("MessagingAppDataModel", 3)) {
                        C12153d0.m6991a("MessagingAppDataModel", "ProcessPendingMessagesAction: " + b + " messages already downloading, " + count + " messages to download");
                    }
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = a;
                    lVar.m9214b();
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: a */
    public static void m27685a(int i) {
        AbstractC11516a.m9413n().mo9408b().mo6905b("process_pending_retry", i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m27684a(gogolook.callgogolook2.messaging.util.ConnectivityUtil.AbstractC4843c r5, int r6) {
        /*
            j.a.c0.c.g r0 = p459j.p460a.p474c0.p475c.AbstractC11528g.m9259k()
            gogolook.callgogolook2.messaging.util.ConnectivityUtil r0 = r0.mo9245e()
            r1 = r5
            r0.m26937a(r1)
            gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction r0 = new gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction
            r1 = r0
            r1.<init>()
            r5 = r0
            j.a.c0.h.i r0 = p459j.p460a.p474c0.p499h.AbstractC12170i.m6941a()
            r7 = r0
            r0 = 5000(0x1388, double:2.4703E-320)
            r8 = r0
            r0 = r7
            java.lang.String r1 = "bugle_resend_delay_in_millis"
            r2 = 5000(0x1388, double:2.4703E-320)
            long r0 = r0.mo6918a(r1, r2)
            j.a.c0.h.i r0 = p459j.p460a.p474c0.p499h.AbstractC12170i.m6941a()
            java.lang.String r1 = "bugle_max_resend_delay_in_millis"
            r2 = 7200000(0x6ddd00, double:3.5572727E-317)
            long r0 = r0.mo6918a(r1, r2)
            r0 = r6
            r10 = r0
        L_0x0033:
            int r10 = r10 + (-1)
            r0 = 2
            r1 = r8
            long r0 = r0 * r1
            r11 = r0
            r0 = r10
            if (r0 <= 0) goto L_0x0054
            r0 = r11
            r1 = 7200000(0x6ddd00, double:3.5572727E-317)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x004e
            goto L_0x0054
        L_0x004e:
            r0 = r11
            r8 = r0
            goto L_0x0033
        L_0x0054:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "ProcessPendingMessagesAction: Registering for retry #"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " in "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " ms"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "MessagingAppDataModel"
            r1 = r7
            java.lang.String r1 = r1.toString()
            p459j.p460a.p474c0.p499h.C12153d0.m6985c(r0, r1)
            r0 = r5
            r1 = 101(0x65, float:1.42E-43)
            r2 = r8
            r0.m27757a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction.m27684a(gogolook.callgogolook2.messaging.util.ConnectivityUtil$c, int):void");
    }

    /* renamed from: a */
    public static void m27682a(boolean z, Action action) {
        boolean z2;
        StringBuilder sb = new StringBuilder();
        sb.append("ProcessPendingMessagesAction: Scheduling pending messages");
        sb.append(z ? "(message failed)" : "");
        C12153d0.m6985c("MessagingAppDataModel", sb.toString());
        m27686D();
        boolean m = AbstractC12181l0.m6886t().m6891m();
        if (z || !m) {
            z2 = false;
        } else {
            m27685a(0);
            if (!new ProcessPendingMessagesAction().m27681b(action)) {
                z2 = true;
                C12153d0.m6981e("MessagingAppDataModel", "ProcessPendingMessagesAction: Action failed to queue; retrying");
            } else if (!C12153d0.m6992a("MessagingAppDataModel", 2)) {
                return;
            } else {
                if (action.m27749c()) {
                    C12153d0.m6983d("MessagingAppDataModel", "ProcessPendingMessagesAction: Action queued");
                    return;
                } else {
                    C12153d0.m6983d("MessagingAppDataModel", "ProcessPendingMessagesAction: No actions to queue");
                    return;
                }
            }
        }
        if (m27689A() || z2) {
            m27684a(new C4631a(), m27688B());
            return;
        }
        m27685a(0);
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            C12153d0.m6983d("MessagingAppDataModel", "ProcessPendingMessagesAction: No more pending messages");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d0, code lost:
        if (r0.m27555C() == false) goto L_0x00d3;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m27680b(p459j.p460a.p474c0.p475c.C11534l r9, long r10) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction.m27680b(j.a.c0.c.l, long):java.lang.String");
    }

    /* renamed from: b */
    public static void m27679b(String str) {
        MessagingContentProvider.m27766f(str);
        MessagingContentProvider.m27769e();
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        m27686D();
        if (AbstractC12181l0.m6886t().m6891m()) {
            m27681b(this);
            return null;
        }
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            C12153d0.m6983d("MessagingAppDataModel", "ProcessPendingMessagesAction: Not default SMS app; rescheduling");
        }
        m27682a(true, (Action) this);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0090  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m27681b(gogolook.callgogolook2.messaging.datamodel.action.Action r5) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction.m27681b(gogolook.callgogolook2.messaging.datamodel.action.Action):boolean");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
