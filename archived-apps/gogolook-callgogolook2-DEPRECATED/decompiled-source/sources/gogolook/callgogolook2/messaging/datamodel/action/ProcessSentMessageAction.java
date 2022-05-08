package gogolook.callgogolook2.messaging.datamodel.action;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.provider.FontsContractCompat;
import com.appsflyer.internal.referrer.Payload;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessSentMessageAction.class */
public class ProcessSentMessageAction extends Action {
    public static final Parcelable.Creator<ProcessSentMessageAction> CREATOR = new C4633a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ProcessSentMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessSentMessageAction$a.class */
    public static final class C4633a implements Parcelable.Creator<ProcessSentMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessSentMessageAction createFromParcel(Parcel parcel) {
            return new ProcessSentMessageAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessSentMessageAction[] newArray(int i) {
            return new ProcessSentMessageAction[i];
        }
    }

    public ProcessSentMessageAction() {
    }

    public ProcessSentMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ProcessSentMessageAction(Parcel parcel, C4633a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static void m27676a(int i, Uri uri, Bundle bundle) {
        ProcessSentMessageAction processSentMessageAction = new ProcessSentMessageAction();
        Bundle bundle2 = processSentMessageAction.f11190b;
        bundle2.putBoolean("is_sms", false);
        bundle2.putBoolean("sent_by_platform", true);
        bundle2.putString("message_id", bundle.getString("message_id"));
        bundle2.putParcelable("message_uri", uri);
        bundle2.putParcelable("updated_message_uri", bundle.getParcelable("updated_message_uri"));
        bundle2.putInt("sub_id", bundle.getInt("sub_id", -1));
        bundle2.putInt(FontsContractCompat.Columns.RESULT_CODE, i);
        bundle2.putInt("http_status_code", bundle.getInt("android.telephony.extra.MMS_HTTP_STATUS", 0));
        bundle2.putParcelable("content_uri", bundle.getParcelable("content_uri"));
        bundle2.putByteArray(Payload.RESPONSE, bundle.getByteArray("android.telephony.extra.MMS_DATA"));
        bundle2.putBoolean("response_important", bundle.getBoolean("response_important"));
        processSentMessageAction.m27742x();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0203  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m27675a(java.lang.String r7, android.net.Uri r8, int r9, int r10, boolean r11, gogolook.callgogolook2.messaging.datamodel.action.Action r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ProcessSentMessageAction.m27675a(java.lang.String, android.net.Uri, int, int, boolean, gogolook.callgogolook2.messaging.datamodel.action.Action, int, int, int):void");
    }

    /* renamed from: a */
    public static void m27674a(String str, Uri uri, Uri uri2, int i, boolean z, int i2, int i3, int i4) {
        ProcessSentMessageAction processSentMessageAction = new ProcessSentMessageAction();
        Bundle bundle = processSentMessageAction.f11190b;
        bundle.putBoolean("is_sms", z);
        bundle.putBoolean("sent_by_platform", false);
        bundle.putString("message_id", str);
        bundle.putParcelable("message_uri", uri);
        bundle.putParcelable("updated_message_uri", uri2);
        bundle.putInt("sub_id", i);
        bundle.putInt("status", i2);
        bundle.putInt("raw_status", i3);
        bundle.putInt(FontsContractCompat.Columns.RESULT_CODE, i4);
        processSentMessageAction.m27742x();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27648b() {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.ProcessSentMessageAction.mo27648b():java.lang.Object");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
