package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/WriteDraftMessageAction.class */
public class WriteDraftMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<WriteDraftMessageAction> CREATOR = new C4652a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.WriteDraftMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/WriteDraftMessageAction$a.class */
    public static final class C4652a implements Parcelable.Creator<WriteDraftMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WriteDraftMessageAction createFromParcel(Parcel parcel) {
            return new WriteDraftMessageAction(parcel, (C4652a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WriteDraftMessageAction[] newArray(int i) {
            return new WriteDraftMessageAction[i];
        }
    }

    public WriteDraftMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ WriteDraftMessageAction(Parcel parcel, C4652a aVar) {
        this(parcel);
    }

    public WriteDraftMessageAction(String str, MessageData messageData) {
        this.f11190b.putString("conversationId", str);
        this.f11190b.putParcelable("message", messageData);
    }

    /* renamed from: a */
    public static void m27649a(String str, MessageData messageData) {
        new WriteDraftMessageAction(str, messageData).m27742x();
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        String string = this.f11190b.getString("conversationId");
        MessageData messageData = (MessageData) this.f11190b.getParcelable("message");
        if (messageData.m27638H() == null || messageData.m27644B() == null) {
            C11608e a = C11608e.m8959a(f, string);
            if (a != null) {
                String l = a.m8947l();
                if (messageData.m27638H() == null) {
                    messageData.m27609b(l);
                }
                if (messageData.m27644B() == null) {
                    messageData.m27621a(l);
                }
            } else {
                C12153d0.m6981e("MessagingAppDataModel", "Conversation " + string + "already deleted before saving draft message " + messageData.m27589w() + ". Aborting WriteDraftMessageAction.");
                return null;
            }
        }
        String a2 = C11521c.m9369a(f, string, messageData, 2);
        MessagingContentProvider.m27768e(string);
        MessagingContentProvider.m27769e();
        return a2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
