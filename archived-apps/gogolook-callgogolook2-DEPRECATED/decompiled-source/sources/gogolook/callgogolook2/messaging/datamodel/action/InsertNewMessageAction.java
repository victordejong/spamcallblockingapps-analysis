package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p475c.p478y.C11613i;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14017g4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/InsertNewMessageAction.class */
public class InsertNewMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<InsertNewMessageAction> CREATOR = new C4625a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.InsertNewMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/InsertNewMessageAction$a.class */
    public static final class C4625a implements Parcelable.Creator<InsertNewMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InsertNewMessageAction createFromParcel(Parcel parcel) {
            return new InsertNewMessageAction(parcel, (C4625a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InsertNewMessageAction[] newArray(int i) {
            return new InsertNewMessageAction[i];
        }
    }

    public InsertNewMessageAction(int i, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C12151d.m7005a("InsertNewMessageAction: Can't have empty recipients or message");
        }
        this.f11190b.putInt("sub_id", i);
        this.f11190b.putString("recipients", str);
        this.f11190b.putString("message_text", str2);
        this.f11190b.putString(C11613i.C11615b.f26067i, str3);
    }

    public InsertNewMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ InsertNewMessageAction(Parcel parcel, C4625a aVar) {
        this(parcel);
    }

    public InsertNewMessageAction(MessageData messageData) {
        this(messageData, -1);
        this.f11190b.putParcelable("message", messageData);
    }

    public InsertNewMessageAction(MessageData messageData, int i) {
        this.f11190b.putParcelable("message", messageData);
        this.f11190b.putInt("sub_id", i);
    }

    /* renamed from: a */
    public static void m27709a(int i, String str, String str2, String str3) {
        new InsertNewMessageAction(i, str, str2, str3).m27742x();
    }

    /* renamed from: a */
    public static void m27708a(MessageData messageData) {
        new InsertNewMessageAction(messageData).m27742x();
    }

    /* renamed from: a */
    public static void m27707a(MessageData messageData, int i) {
        C12151d.m7003a(i == -1);
        new InsertNewMessageAction(messageData, i).m27742x();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final MessageData m27706a(MessageData messageData, int i, String str, long j, String str2) {
        String str3;
        long j2;
        MessageData messageData2;
        Context a = AbstractC11516a.m9413n().mo9412a();
        AbstractC11528g.m9259k().mo9243g().m9121e(j);
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        if (str2 == null) {
            j2 = C11834j.m8127a(a, str);
            str3 = C11521c.m9384a(f, j2, str, ParticipantData.m27528h(str));
        } else {
            j2 = C11521c.m9325o(f, str2);
            str3 = str2;
        }
        String x = messageData.m27588x();
        Uri a2 = C11834j.m8140a(a, Telephony.Sms.CONTENT_URI, i, str, x, j, -1, 2, j2);
        if (a2 == null || TextUtils.isEmpty(a2.toString())) {
            C12153d0.m6987b("MessagingAppDataModel", "InsertNewMessageAction: No uri for SMS inserted into telephony DB");
            messageData2 = null;
        } else {
            f.m9227a();
            try {
                messageData2 = MessageData.m27618a(str3, messageData.m27638H(), x);
                messageData2.m27620a(str3, a2, j);
                C11521c.m9380a(f, messageData2);
                if (str2 != null) {
                    C11521c.m9366a(f, str3, messageData2.m27589w(), j, false, false);
                }
                f.m9210e();
                f.m9214b();
                if (C12153d0.m6992a("MessagingAppDataModel", 3)) {
                    C12153d0.m6991a("MessagingAppDataModel", "InsertNewMessageAction: Inserted SMS message " + messageData2.m27589w() + " (uri = " + messageData2.m27636J() + ", timestamp = " + messageData2.m27639G() + ")");
                }
                m27702b(str3);
            } catch (Throwable th) {
                f.m9214b();
                throw th;
            }
        }
        return messageData2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final MessageData m27703a(String str, MessageData messageData, long j) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        new ArrayList();
        try {
            messageData.m27620a(str, (Uri) null, j);
            C11521c.m9380a(f, messageData);
            C11521c.m9366a(f, str, messageData.m27589w(), j, false, false);
            f.m9210e();
            f.m9214b();
            if (C12153d0.m6992a("MessagingAppDataModel", 3)) {
                C12153d0.m6991a("MessagingAppDataModel", "InsertNewMessageAction: Inserted MMS message " + messageData.m27589w() + " (timestamp = " + j + ")");
            }
            m27702b(str);
            return messageData;
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    /* renamed from: a */
    public final ParticipantData m27705a(C11534l lVar, String str, MessageData messageData) {
        ParticipantData participantData;
        int i = this.f11190b.getInt("sub_id", -1);
        if (i != -1) {
            participantData = C11521c.m9354b(lVar, i);
        } else {
            String H = messageData.m27638H();
            String str2 = H;
            if (H == null) {
                C11608e a = C11608e.m8959a(lVar, str);
                if (a != null) {
                    str2 = a.m8947l();
                } else {
                    C12153d0.m6981e("MessagingAppDataModel", "Conversation " + str + "already deleted before sending draft message " + messageData.m27589w() + ". Aborting InsertNewMessageAction.");
                    return null;
                }
            }
            ParticipantData g = C11521c.m9333g(lVar, str2);
            participantData = (g.m27517z() != -1 || !C14017g4.m2804t()) ? g : C11521c.m9354b(lVar, AbstractC12181l0.m6886t().mo6875f());
        }
        return participantData;
    }

    /* renamed from: a */
    public final void m27704a(String str, MessageData messageData, int i, long j, ArrayList<String> arrayList) {
        Throwable th;
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            C12153d0.m6983d("MessagingAppDataModel", "InsertNewMessageAction: Inserting broadcast SMS message " + messageData.m27589w());
        }
        Context a = AbstractC11516a.m9413n().mo9412a();
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        AbstractC11528g.m9259k().mo9243g().m9121e(j);
        long o = C11521c.m9325o(f, str);
        Uri a2 = C11834j.m8140a(a, Telephony.Sms.CONTENT_URI, i, TextUtils.join(" ", arrayList), messageData.m27588x(), j, 0, 2, o);
        if (a2 == null || TextUtils.isEmpty(a2.toString())) {
            C12153d0.m6987b("MessagingAppDataModel", "InsertNewMessageAction: No uri for broadcast SMS " + messageData.m27589w() + " inserted into telephony DB");
            return;
        }
        f.m9227a();
        try {
            messageData.m27620a(str, a2, j);
            messageData.m27596h(j);
            C11521c.m9380a(f, messageData);
            try {
                C11521c.m9366a(f, str, messageData.m27589w(), j, false, false);
                f.m9210e();
                f.m9214b();
                if (C12153d0.m6992a("MessagingAppDataModel", 3)) {
                    C12153d0.m6991a("MessagingAppDataModel", "InsertNewMessageAction: Inserted broadcast SMS message " + messageData.m27589w() + ", uri = " + messageData.m27636J());
                }
                m27702b(str);
            } catch (Throwable th2) {
                th = th2;
                f.m9214b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String str;
        C12153d0.m6985c("MessagingAppDataModel", "InsertNewMessageAction: inserting new message");
        MessageData messageData = (MessageData) this.f11190b.getParcelable("message");
        MessageData messageData2 = messageData;
        if (messageData == null) {
            C12153d0.m6985c("MessagingAppDataModel", "InsertNewMessageAction: Creating MessageData with provided data");
            MessageData z = m27701z();
            messageData2 = z;
            if (z == null) {
                C12153d0.m6981e("MessagingAppDataModel", "InsertNewMessageAction: Could not create MessageData");
                return null;
            }
        }
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        String s = messageData2.m27593s();
        ParticipantData a = m27705a(f, s, messageData2);
        if (a == null) {
            return null;
        }
        messageData2.m27609b(a.m27523t());
        if (messageData2.m27644B() == null) {
            messageData2.m27621a(a.m27523t());
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList<String> k = C11521c.m9329k(f, s);
        if (k.size() < 1) {
            C12153d0.m6981e("MessagingAppDataModel", "InsertNewMessageAction: message recipients is empty");
            return null;
        }
        int z2 = a.m27517z();
        if (messageData2.m27641E() == 0) {
            if (k.size() > 1) {
                m27704a(s, messageData2, z2, currentTimeMillis + 1, k);
                str = null;
            } else {
                str = s;
            }
            Iterator<String> it = k.iterator();
            while (it.hasNext()) {
                m27706a(messageData2, z2, it.next(), currentTimeMillis, str);
            }
            C11521c.m9369a(f, s, (MessageData) null, 1);
        } else {
            m27703a(s, messageData2, ((currentTimeMillis + 500) / 1000) * 1000);
            C11521c.m9369a(f, s, messageData2, 1);
        }
        MessagingContentProvider.m27769e();
        ProcessPendingMessagesAction.m27682a(false, (Action) this);
        return messageData2;
    }

    /* renamed from: b */
    public final void m27702b(String str) {
        MessagingContentProvider.m27766f(str);
        MessagingContentProvider.m27765g();
        MessagingContentProvider.m27769e();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }

    /* renamed from: z */
    public final MessageData m27701z() {
        String string = this.f11190b.getString("recipients");
        String string2 = this.f11190b.getString("message_text");
        String string3 = this.f11190b.getString(C11613i.C11615b.f26067i);
        int i = this.f11190b.getInt("sub_id", -1);
        ArrayList arrayList = new ArrayList();
        for (String str : string.split(",")) {
            arrayList.add(ParticipantData.m27528h(str));
        }
        String str2 = null;
        if (arrayList.size() == 0) {
            C12151d.m7005a("InsertNewMessage: Empty participants");
            return null;
        }
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        C11521c.m9337d(arrayList);
        ArrayList<String> c = C11521c.m9341c(arrayList);
        if (c.size() == 0) {
            C12151d.m7005a("InsertNewMessage: Empty recipients");
            return null;
        }
        long a = C11834j.m8126a(AbstractC11516a.m9413n().mo9412a(), c);
        if (a < 0) {
            return null;
        }
        if (c.size() == 1) {
            str2 = c.get(0);
        }
        String a2 = C11521c.m9382a(f, a, str2, (List<ParticipantData>) arrayList, false, false, (String) null);
        ParticipantData b = C11521c.m9354b(f, i);
        return TextUtils.isEmpty(string3) ? MessageData.m27618a(a2, b.m27523t(), string2) : MessageData.m27617a(a2, b.m27523t(), string2, string3);
    }
}
