package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p499h.C12151d;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateConversationOptionsAction.class */
public class UpdateConversationOptionsAction extends Action implements Parcelable {
    public static final Parcelable.Creator<UpdateConversationOptionsAction> CREATOR = new C4648a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.UpdateConversationOptionsAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateConversationOptionsAction$a.class */
    public static final class C4648a implements Parcelable.Creator<UpdateConversationOptionsAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateConversationOptionsAction createFromParcel(Parcel parcel) {
            return new UpdateConversationOptionsAction(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateConversationOptionsAction[] newArray(int i) {
            return new UpdateConversationOptionsAction[i];
        }
    }

    public UpdateConversationOptionsAction(Parcel parcel) {
        super(parcel);
    }

    /* renamed from: a */
    public void m27652a(ContentValues contentValues, C11534l lVar) {
        C12151d.m6999b(lVar.m9211d().inTransaction());
        if (this.f11190b.containsKey("enable_notification")) {
            contentValues.put("notification_enabled", Boolean.valueOf(this.f11190b.getBoolean("enable_notification")));
        }
        if (this.f11190b.containsKey("ringtone_uri")) {
            contentValues.put("notification_sound_uri", this.f11190b.getString("ringtone_uri"));
        }
        if (this.f11190b.containsKey("enable_vibration")) {
            contentValues.put("notification_vibration", Boolean.valueOf(this.f11190b.getBoolean("enable_vibration")));
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String string = this.f11190b.getString("conversation_id");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            m27652a(contentValues, f);
            C11521c.m9343c(f, string, contentValues);
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
