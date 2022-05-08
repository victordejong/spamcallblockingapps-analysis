package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p499h.C12151d;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateConversationModeAction.class */
public class UpdateConversationModeAction extends Action {
    public static final Parcelable.Creator<UpdateConversationModeAction> CREATOR = new C4647a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.UpdateConversationModeAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateConversationModeAction$a.class */
    public static final class C4647a implements Parcelable.Creator<UpdateConversationModeAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateConversationModeAction createFromParcel(Parcel parcel) {
            return new UpdateConversationModeAction(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateConversationModeAction[] newArray(int i) {
            return new UpdateConversationModeAction[i];
        }
    }

    public UpdateConversationModeAction(Parcel parcel) {
        super(parcel);
    }

    public UpdateConversationModeAction(String str, int i) {
        C12151d.m6999b(!TextUtils.isEmpty(str));
        this.f11190b.putString("conversation_id", str);
        this.f11190b.putInt("mode", i);
    }

    /* renamed from: a */
    public static void m27653a(String str, int i) {
        new UpdateConversationModeAction(str, i).m27742x();
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String string = this.f11190b.getString("conversation_id");
        int i = this.f11190b.getInt("mode");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            C11521c.m9351b(f, string, i);
            f.m9210e();
            f.m9214b();
            MessagingContentProvider.m27768e(string);
            MessagingContentProvider.m27769e();
            return null;
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
