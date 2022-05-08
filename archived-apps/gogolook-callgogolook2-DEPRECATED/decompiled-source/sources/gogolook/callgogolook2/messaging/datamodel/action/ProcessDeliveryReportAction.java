package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentUris;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import java.util.concurrent.TimeUnit;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11585f;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessDeliveryReportAction.class */
public class ProcessDeliveryReportAction extends Action implements Parcelable {
    public static final Parcelable.Creator<ProcessDeliveryReportAction> CREATOR = new C4629a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ProcessDeliveryReportAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ProcessDeliveryReportAction$a.class */
    public static final class C4629a implements Parcelable.Creator<ProcessDeliveryReportAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessDeliveryReportAction createFromParcel(Parcel parcel) {
            return new ProcessDeliveryReportAction(parcel, (C4629a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessDeliveryReportAction[] newArray(int i) {
            return new ProcessDeliveryReportAction[i];
        }
    }

    public ProcessDeliveryReportAction(Uri uri, int i) {
        this.f11190b.putParcelable("uri", uri);
        this.f11190b.putInt("status", i);
    }

    public ProcessDeliveryReportAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ProcessDeliveryReportAction(Parcel parcel, C4629a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static void m27695a(Uri uri, int i) {
        new ProcessDeliveryReportAction(uri, i).m27742x();
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        Uri uri = (Uri) this.f11190b.getParcelable("uri");
        int i = this.f11190b.getInt("status");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        if (ContentUris.parseId(uri) < 0) {
            C12153d0.m6987b("MessagingAppDataModel", "ProcessDeliveryReportAction: can't find message");
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (uri != null) {
            C11834j.m8119a(uri, i, currentTimeMillis);
        }
        f.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("message_status", Integer.valueOf(C11585f.m9046a(true, 2, i)));
            contentValues.put("sent_timestamp", Long.valueOf(TimeUnit.MILLISECONDS.toMicros(currentTimeMillis)));
            MessageData a = C11521c.m9381a(f, uri);
            if (a != null) {
                C12151d.m6999b(uri.equals(a.m27636J()));
                C11521c.m9338d(f, a.m27589w(), contentValues);
                MessagingContentProvider.m27766f(a.m27593s());
                MessagingContentProvider.m27769e();
            }
            f.m9210e();
            f.m9214b();
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
