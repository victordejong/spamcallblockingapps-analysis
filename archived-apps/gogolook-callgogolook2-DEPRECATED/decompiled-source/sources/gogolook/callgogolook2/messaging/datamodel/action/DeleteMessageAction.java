package gogolook.callgogolook2.messaging.datamodel.action;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p521j0.p529x.C12810o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DeleteMessageAction.class */
public class DeleteMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<DeleteMessageAction> CREATOR = new C4617a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.DeleteMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DeleteMessageAction$a.class */
    public static final class C4617a implements Parcelable.Creator<DeleteMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteMessageAction createFromParcel(Parcel parcel) {
            return new DeleteMessageAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteMessageAction[] newArray(int i) {
            return new DeleteMessageAction[i];
        }
    }

    public DeleteMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ DeleteMessageAction(Parcel parcel, C4617a aVar) {
        this(parcel);
    }

    public DeleteMessageAction(String str) {
        this.f11190b.putString("message_id", str);
    }

    /* renamed from: b */
    public static void m27721b(String str) {
        new DeleteMessageAction(str).m27742x();
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Bundle mo27662a() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        String string = this.f11190b.getString("message_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        MessageData r = C11521c.m9322r(f, string);
        if (r != null) {
            if (C11521c.m9352b(f, string) > 0) {
                C12153d0.m6985c("MessagingAppDataModel", "DeleteMessageAction: Deleted local message " + string);
            } else {
                C12153d0.m6981e("MessagingAppDataModel", "DeleteMessageAction: Could not delete local message " + string);
            }
            MessagingContentProvider.m27766f(r.m27593s());
            MessagingContentProvider.m27769e();
            if (!C12810o.m5232m()) {
                return null;
            }
            Uri J = r.m27636J();
            if (J == null) {
                C12153d0.m6985c("MessagingAppDataModel", "DeleteMessageAction: Local message " + string + " has no telephony uri.");
                return null;
            } else if (C11834j.m8120a(J) > 0) {
                C12153d0.m6985c("MessagingAppDataModel", "DeleteMessageAction: Deleted telephony message " + J);
                return null;
            } else {
                C12153d0.m6981e("MessagingAppDataModel", "DeleteMessageAction: Could not delete message from telephony: messageId = " + string + ", telephony uri = " + J);
                return null;
            }
        } else {
            C12153d0.m6981e("MessagingAppDataModel", "DeleteMessageAction: Message " + string + " no longer exists");
            return null;
        }
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        m27743w();
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
