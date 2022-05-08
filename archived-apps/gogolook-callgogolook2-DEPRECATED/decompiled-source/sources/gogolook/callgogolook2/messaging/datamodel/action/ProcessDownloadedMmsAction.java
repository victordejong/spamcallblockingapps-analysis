package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.provider.FontsContractCompat;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11577d;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p521j0.p529x.C12778k;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessDownloadedMmsAction.class */
public class ProcessDownloadedMmsAction extends Action {
    public static final Parcelable.Creator<ProcessDownloadedMmsAction> CREATOR = new C4630a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ProcessDownloadedMmsAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessDownloadedMmsAction$a.class */
    public static final class C4630a implements Parcelable.Creator<ProcessDownloadedMmsAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessDownloadedMmsAction createFromParcel(Parcel parcel) {
            return new ProcessDownloadedMmsAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessDownloadedMmsAction[] newArray(int i) {
            return new ProcessDownloadedMmsAction[i];
        }
    }

    public ProcessDownloadedMmsAction() {
    }

    public ProcessDownloadedMmsAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ProcessDownloadedMmsAction(Parcel parcel, C4630a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static void m27693a(int i, Bundle bundle) {
        String string = bundle.getString("message_id");
        Uri uri = (Uri) bundle.getParcelable("content_uri");
        Uri uri2 = (Uri) bundle.getParcelable("notification_uri");
        String string2 = bundle.getString("conversation_id");
        String string3 = bundle.getString("participant_id");
        C12151d.m7000b(string);
        C12151d.m7000b(uri);
        C12151d.m7000b(uri2);
        C12151d.m7000b(string2);
        C12151d.m7000b(string3);
        ProcessDownloadedMmsAction processDownloadedMmsAction = new ProcessDownloadedMmsAction();
        Bundle bundle2 = processDownloadedMmsAction.f11190b;
        bundle2.putBoolean("downloaded_by_platform", true);
        bundle2.putString("message_id", string);
        bundle2.putInt(FontsContractCompat.Columns.RESULT_CODE, i);
        bundle2.putInt("http_status_code", bundle.getInt("android.telephony.extra.MMS_HTTP_STATUS", 0));
        bundle2.putParcelable("content_uri", uri);
        bundle2.putParcelable("notification_uri", uri2);
        bundle2.putInt("sub_id", bundle.getInt("sub_id", -1));
        bundle2.putString("sub_phone_number", bundle.getString("sub_phone_number"));
        bundle2.putString("transaction_id", bundle.getString("transaction_id"));
        bundle2.putString("content_location", bundle.getString("content_location"));
        bundle2.putBoolean("auto_download", bundle.getBoolean("auto_download"));
        bundle2.putLong("received_timestamp", bundle.getLong("received_timestamp"));
        bundle2.putString("conversation_id", string2);
        bundle2.putString("participant_id", string3);
        bundle2.putInt("status_if_failed", bundle.getInt("status_if_failed"));
        processDownloadedMmsAction.m27742x();
    }

    /* renamed from: a */
    public static void m27692a(String str, int i, int i2, String str2, String str3, int i3, int i4, String str4) {
        C12151d.m7000b(str);
        C12151d.m7000b(str2);
        C12151d.m7000b(str3);
        ProcessDownloadedMmsAction processDownloadedMmsAction = new ProcessDownloadedMmsAction();
        Bundle bundle = processDownloadedMmsAction.f11190b;
        bundle.putBoolean("downloaded_by_platform", false);
        bundle.putString("message_id", str);
        bundle.putInt("status", i);
        bundle.putInt("raw_status", i2);
        bundle.putString("conversation_id", str2);
        bundle.putString("participant_id", str3);
        bundle.putInt("status_if_failed", i3);
        bundle.putInt("sub_id", i4);
        bundle.putString("transaction_id", str4);
        processDownloadedMmsAction.m27742x();
    }

    /* renamed from: a */
    public static void m27691a(String str, Uri uri, String str2, String str3, String str4, int i, String str5, int i2, boolean z, String str6, int i3) {
        C12151d.m7000b(str);
        C12151d.m7000b(uri);
        C12151d.m7000b(str2);
        C12151d.m7000b(str3);
        ProcessDownloadedMmsAction processDownloadedMmsAction = new ProcessDownloadedMmsAction();
        Bundle bundle = processDownloadedMmsAction.f11190b;
        bundle.putBoolean("downloaded_by_platform", true);
        bundle.putString("message_id", str);
        bundle.putInt(FontsContractCompat.Columns.RESULT_CODE, i3);
        bundle.putParcelable("notification_uri", uri);
        bundle.putInt("sub_id", i);
        bundle.putString("sub_phone_number", str5);
        bundle.putString("content_location", str4);
        bundle.putBoolean("auto_download", z);
        bundle.putString("conversation_id", str2);
        bundle.putString("participant_id", str3);
        bundle.putInt("status_if_failed", i2);
        bundle.putString("transaction_id", str6);
        processDownloadedMmsAction.m27742x();
    }

    /* renamed from: a */
    public static void m27690a(String str, String str2, String str3, int i) {
        ProcessDownloadedMmsAction processDownloadedMmsAction = new ProcessDownloadedMmsAction();
        Bundle bundle = processDownloadedMmsAction.f11190b;
        bundle.putString("message_id", str);
        bundle.putString("transaction_id", str2);
        bundle.putString("content_location", str3);
        bundle.putBoolean("send_deferred_resp_status", true);
        bundle.putInt("sub_id", i);
        processDownloadedMmsAction.m27742x();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0168  */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle mo27662a() throws p459j.p460a.p474c0.p475c.C11529h {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ProcessDownloadedMmsAction.mo27662a():android.os.Bundle");
    }

    /* renamed from: a */
    public final MessageData m27694a(int i, int i2, Uri uri) {
        DatabaseMessages.MmsMessage mmsMessage;
        boolean z;
        boolean z2;
        String str;
        MessageData messageData;
        String str2;
        Context a = AbstractC11516a.m9413n().mo9412a();
        String string = this.f11190b.getString("message_id");
        Uri uri2 = (Uri) this.f11190b.getParcelable("notification_uri");
        String string2 = this.f11190b.getString("conversation_id");
        String string3 = this.f11190b.getString("participant_id");
        int i3 = this.f11190b.getInt("status_if_failed");
        C12151d.m7000b(string);
        C14080m2.m2615a("MessagingAppDataModel", "ProcessDownloadedMmsAction: Processed MMS download of message " + string + ", status is " + C11834j.m8100b(i));
        C12942i iVar = null;
        if (i != 0 || uri == null) {
            mmsMessage = null;
        } else {
            C11689c.m8599a(a, a.getContentResolver(), uri2, null, null);
            mmsMessage = C11834j.m8077e(uri);
        }
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            if (mmsMessage != null) {
                String a2 = C11521c.m9376a(f, ParticipantData.m27544a(mmsMessage.m27473s()));
                String a3 = C11834j.m8108a(C11834j.m8087c(mmsMessage.f11312i), mmsMessage.mo27454c());
                String str3 = a3;
                if (a3 == null) {
                    str3 = ParticipantData.m27546L();
                }
                ParticipantData h = ParticipantData.m27528h(str3);
                String a4 = C11521c.m9376a(f, h);
                if (!a4.equals(string3)) {
                    LogManager.m28579a("MessagingAppDataModel", "ProcessDownloadedMmsAction: Downloaded MMS message " + string + " has different sender (participantId = " + a4 + ") than notification (" + string3 + ")");
                }
                String v = h.m27521v();
                if (C12810o.m5234k()) {
                    iVar = C12928g.m5000a().m4982b(a, v, mmsMessage.f11307d, 2);
                    z2 = iVar.m4960d();
                } else {
                    z2 = false;
                }
                String a5 = C11521c.m9385a(f, mmsMessage.f11312i, v);
                z = AbstractC11528g.m9259k().m9263b(a5);
                boolean c = AbstractC11528g.m9259k().m9262c(a5);
                mmsMessage.f11315l = z;
                mmsMessage.f11316m = c;
                MessageData a6 = C11834j.m8116a(mmsMessage, a5, a4, a2, 100);
                a6.m27632N();
                AbstractC11528g.m9259k().mo9243g().m9121e(a6.m27639G());
                if (C11521c.m9321s(f, string) == null) {
                    C11521c.m9380a(f, a6);
                } else {
                    a6.m27602d(string);
                    C11521c.m9353b(f, a6);
                }
                if (!TextUtils.equals(string2, a5) && !C11521c.m9374a(f, string2)) {
                    C11521c.m9364a(f, string2, string, true, z2);
                }
                C11521c.m9348b(f, a5, true, z2);
                str = a5;
                str2 = v;
                messageData = a6;
            } else {
                z = AbstractC11528g.m9259k().m9263b(string2);
                if (i == 2) {
                    i3 = 106;
                } else if (i == 3) {
                    i3 = 107;
                }
                DownloadMmsAction.m27719a(uri2, string, string2, i3, i2);
                this.f11190b.getInt(FontsContractCompat.Columns.RESULT_CODE);
                this.f11190b.getInt("http_status_code");
                C11521c.m9348b(f, string2, true, false);
                messageData = null;
                z2 = false;
                str = null;
                iVar = null;
                str2 = null;
            }
            f.m9210e();
            if (uri != null) {
                ContentValues contentValues = new ContentValues(1);
                contentValues.put("read", Boolean.valueOf(z));
                C11689c.m8600a(a, a.getContentResolver(), uri, contentValues, null, null);
            }
            if (!z2) {
                C11522d.m9286a(false, str2, string2, 3, C12810o.m5238g());
            } else if (C13915b3.m3062a("isCallBlockNotification", true)) {
                C12778k.m5337a(a, str2, iVar, C14217x3.m2146e(a, str2), 1);
            }
            if (str != null) {
                MessagingContentProvider.m27766f(str);
            }
            MessagingContentProvider.m27766f(string2);
            MessagingContentProvider.m27765g();
            MessagingContentProvider.m27769e();
            return messageData;
        } finally {
            f.m9214b();
        }
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Object mo27660a(Bundle bundle) {
        if (bundle == null) {
            C12151d.m6999b(this.f11190b.getBoolean("send_deferred_resp_status"));
            return null;
        }
        int i = bundle.getInt("request_status");
        int i2 = bundle.getInt("raw_status");
        Uri uri = (Uri) bundle.getParcelable("mms_uri");
        boolean z = this.f11190b.getBoolean("auto_download");
        String string = this.f11190b.getString("message_id");
        MessageData a = m27694a(i, i2, uri);
        String string2 = (a == null || a.m27593s() == null) ? this.f11190b.getString("conversation_id") : a.m27593s();
        int i3 = this.f11190b.getInt("sub_id", -1);
        if (z && a == null && i == 2) {
            m27690a(string, this.f11190b.getString("transaction_id"), this.f11190b.getString("content_location"), i3);
        }
        boolean z2 = true;
        if (z) {
            C11534l f = AbstractC11528g.m9259k().mo9244f();
            MessageData s = a == null ? C11521c.m9321s(f, string) : a;
            if (s != null) {
                C11577d.m9076a(s.m27593s(), ParticipantData.m27539a(f, s.m27644B()), s);
            }
        } else {
            boolean z3 = a != null && i == 0;
            C11577d.m9075a(z3 ? a.m27593s() : this.f11190b.getString("conversation_id"), z3, i, false, i3, false);
        }
        if (uri != null) {
            z2 = false;
        }
        ProcessPendingMessagesAction.m27682a(z2, this);
        if (z2) {
            C11522d.m9286a(false, C11522d.f25733a, string2, 2, C12810o.m5238g());
        }
        return a;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        m27743w();
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: u */
    public Object mo27664u() {
        if (this.f11190b.getBoolean("send_deferred_resp_status")) {
            return null;
        }
        m27694a(2, 0, null);
        ProcessPendingMessagesAction.m27682a(true, (Action) this);
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
