package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ResendMessageAction.class */
public class ResendMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<ResendMessageAction> CREATOR = new C4644a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ResendMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ResendMessageAction$a.class */
    public static final class C4644a implements Parcelable.Creator<ResendMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResendMessageAction createFromParcel(Parcel parcel) {
            return new ResendMessageAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResendMessageAction[] newArray(int i) {
            return new ResendMessageAction[i];
        }
    }

    public ResendMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ResendMessageAction(Parcel parcel, C4644a aVar) {
        this(parcel);
    }

    public ResendMessageAction(String str) {
        this.f11190b.putString("message_id", str);
    }

    /* renamed from: b */
    public static void m27669b(String str) {
        new ResendMessageAction(str).m27742x();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27648b() {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ResendMessageAction.mo27648b():java.lang.Object");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
