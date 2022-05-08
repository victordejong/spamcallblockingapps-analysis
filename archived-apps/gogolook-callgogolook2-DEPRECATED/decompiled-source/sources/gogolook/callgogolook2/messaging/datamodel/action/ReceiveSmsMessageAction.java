package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11569a;
import p459j.p460a.p474c0.p475c.p476w.C11577d;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12179k0;
import p459j.p460a.p521j0.p529x.C12755b;
import p459j.p460a.p521j0.p529x.C12778k;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p582w0.C13875a0;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14308w;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveSmsMessageAction.class */
public class ReceiveSmsMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<ReceiveSmsMessageAction> CREATOR = new C4639a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveSmsMessageAction$a.class */
    public static final class C4639a implements Parcelable.Creator<ReceiveSmsMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReceiveSmsMessageAction createFromParcel(Parcel parcel) {
            return new ReceiveSmsMessageAction(parcel, (C4639a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReceiveSmsMessageAction[] newArray(int i) {
            return new ReceiveSmsMessageAction[i];
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveSmsMessageAction$b.class */
    public static class C4640b {

        /* renamed from: a */
        public boolean f11199a;
        @Nullable

        /* renamed from: b */
        public String f11200b;
        @Nullable

        /* renamed from: c */
        public String f11201c;

        /* renamed from: d */
        public long f11202d;
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveSmsMessageAction$c.class */
    public interface AbstractC4641c {
        /* renamed from: a */
        void mo5285a(boolean z, C12755b bVar, @Nullable String str, @Nullable String str2);
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveSmsMessageAction$d.class */
    public static class C4642d extends C11569a implements C11569a.AbstractC11572c {

        /* renamed from: j */
        public final AbstractC4641c f11203j;

        public C4642d(Object obj, AbstractC4641c cVar) {
            super(1, Action.m27751a("ReceiveSmsMessageAction"), obj);
            m9105a((C11569a.AbstractC11572c) this);
            this.f11203j = cVar;
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11569a.AbstractC11572c
        /* renamed from: a */
        public void mo9089a(C11569a aVar, Action action, Object obj, Object obj2) {
            C12755b bVar = (C12755b) obj;
            if (bVar.m5419e() != null) {
                bVar.m5419e().m5295b(Long.valueOf(((C4640b) obj2).f11202d));
            }
            AbstractC4641c cVar = this.f11203j;
            boolean z = obj2 != null && ((C4640b) obj2).f11199a;
            String str = null;
            String str2 = obj2 != null ? ((C4640b) obj2).f11200b : null;
            if (obj2 != null) {
                str = ((C4640b) obj2).f11201c;
            }
            cVar.mo5285a(z, bVar, str2, str);
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11569a.AbstractC11572c
        /* renamed from: b */
        public void mo9088b(C11569a aVar, Action action, Object obj, Object obj2) {
        }
    }

    public ReceiveSmsMessageAction(ContentValues contentValues) {
        this.f11190b.putParcelable("message_values", contentValues);
    }

    public ReceiveSmsMessageAction(ContentValues contentValues, @Nullable String str) {
        super(str);
        this.f11190b.putParcelable("message_values", contentValues);
    }

    public ReceiveSmsMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ReceiveSmsMessageAction(Parcel parcel, C4639a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static void m27672a(@NonNull C12755b bVar, @NonNull AbstractC4641c cVar) {
        C4642d dVar = new C4642d(bVar, cVar);
        new ReceiveSmsMessageAction(bVar.m5421c(), dVar.m9099b()).m27754a((C11569a) dVar);
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        boolean z;
        C12942i iVar;
        C4640b bVar = new C4640b();
        bVar.f11202d = System.currentTimeMillis();
        Context a = AbstractC11516a.m9413n().mo9412a();
        ContentValues contentValues = (ContentValues) this.f11190b.getParcelable("message_values");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        Integer asInteger = contentValues.getAsInteger("sub_id");
        Integer num = asInteger;
        if (asInteger == null) {
            num = -1;
        }
        String asString = contentValues.getAsString("address");
        String str = asString;
        if (TextUtils.isEmpty(asString)) {
            str = ParticipantData.m27546L();
            contentValues.put("address", str);
        }
        ParticipantData h = ParticipantData.m27528h(str);
        long longValue = contentValues.getAsLong("date").longValue();
        AbstractC11528g.m9259k().mo9243g().m9121e(longValue);
        long a2 = C11832i.C11833a.m8156a(a, str);
        contentValues.put("thread_id", Long.valueOf(a2));
        if (C12810o.m5234k()) {
            iVar = C12928g.m5000a().m4982b(a, str, contentValues.getAsString("subject"), 2);
            z = iVar.m4960d();
        } else {
            z = false;
            iVar = null;
        }
        String a3 = C11521c.m9384a(f, a2, str, h);
        if (!C14217x3.m2160b(a3)) {
            C14308w.f32062d.m1626a(C14308w.m1622c(a3));
        }
        boolean b = AbstractC11528g.m9259k().m9263b(a3);
        boolean c = AbstractC11528g.m9259k().m9262c(a3);
        if (!C12810o.m5232m() || C12179k0.m6911a()) {
            if (C12153d0.m6992a("ReceiveSmsMessageAction", 3)) {
                C12153d0.m6991a("ReceiveSmsMessageAction", "ReceiveSmsMessageAction: Not inserting received SMS message for secondary user.");
            }
            bVar.f11201c = null;
        } else {
            boolean z2 = contentValues.getAsBoolean("read").booleanValue() || b;
            boolean z3 = z2 || c || z;
            contentValues.put("read", z2 ? 1 : 0);
            contentValues.put("seen", (Integer) 1);
            Uri insert = a.getContentResolver().insert(Telephony.Sms.Inbox.CONTENT_URI, contentValues);
            String asString2 = contentValues.getAsString("body");
            String asString3 = contentValues.getAsString("subject");
            long longValue2 = contentValues.getAsLong("date_sent").longValue();
            ParticipantData a4 = ParticipantData.m27544a(num.intValue());
            Integer asInteger2 = contentValues.getAsInteger("reply_path_present");
            String asString4 = contentValues.getAsString("service_center");
            if (asInteger2 == null || asInteger2.intValue() != 1 || TextUtils.isEmpty(asString4)) {
                asString4 = null;
            }
            f.m9227a();
            try {
                String a5 = C11521c.m9376a(f, h);
                MessageData a6 = MessageData.m27624a(insert, a3, a5, C11521c.m9376a(f, a4), asString2, asString3, longValue2, longValue, z3, z2);
                C11521c.m9380a(f, a6);
                C11521c.m9367a(f, a3, a6.m27589w(), a6.m27639G(), z, asString4, true);
                C11577d.m9076a(a3, ParticipantData.m27539a(f, a5), a6);
                f.m9210e();
                f.m9214b();
                C12153d0.m6985c("ReceiveSmsMessageAction", "ReceiveSmsMessageAction: Received SMS message " + a6.m27589w() + " in conversation " + a6.m27593s() + ", uri = " + insert);
                ProcessPendingMessagesAction.m27682a(false, (Action) this);
                bVar.f11201c = a6.m27589w();
            } catch (Throwable th) {
                f.m9214b();
                throw th;
            }
        }
        MessagingContentProvider.m27766f(a3);
        MessagingContentProvider.m27765g();
        MessagingContentProvider.m27769e();
        if (z) {
            C14073m.m2633a(1);
            C14037j3.m2731a().mo2704a(new C13875a0());
            if (C13915b3.m3062a("isCallBlockNotification", true)) {
                C12810o.m5240e();
                C12778k.m5335b(a, str, iVar, C14217x3.m2146e(a, str), 1);
            }
            bVar.f11200b = null;
        } else {
            bVar.f11200b = a3;
        }
        bVar.f11199a = z;
        return bVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
