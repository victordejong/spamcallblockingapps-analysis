package android.support.p003v7.mms;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import p065f.p066a.p068b.p069a.AbstractC4242b;
import p065f.p066a.p068b.p069a.C4257j;
import p065f.p066a.p068b.p069a.C4260m;
/* renamed from: android.support.v7.mms.SendRequest */
/* loaded from: classes-dex2jar.jar:android/support/v7/mms/SendRequest.class */
public class SendRequest extends MmsRequest {
    public static final Parcelable.Creator<SendRequest> CREATOR = new C0041b();

    /* renamed from: g */
    public byte[] f27g;

    /* renamed from: android.support.v7.mms.SendRequest$a */
    /* loaded from: classes-dex2jar.jar:android/support/v7/mms/SendRequest$a.class */
    public class CallableC0040a implements Callable<byte[]> {

        /* renamed from: a */
        public final /* synthetic */ Context f28a;

        /* renamed from: b */
        public final /* synthetic */ Uri f29b;

        /* renamed from: c */
        public final /* synthetic */ int f30c;

        public CallableC0040a(SendRequest sendRequest, Context context, Uri uri, int i) {
            this.f28a = context;
            this.f29b = uri;
            this.f30c = i;
        }

        /* JADX WARN: Not initialized variable reg: 7, insn: 0x00a7: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r7 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:41:0x00a7 */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public byte[] call() {
            /*
                Method dump skipped, instructions count: 202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.p003v7.mms.SendRequest.CallableC0040a.call():byte[]");
        }
    }

    /* renamed from: android.support.v7.mms.SendRequest$b */
    /* loaded from: classes-dex2jar.jar:android/support/v7/mms/SendRequest$b.class */
    public static final class C0041b implements Parcelable.Creator<SendRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SendRequest createFromParcel(Parcel parcel) {
            return new SendRequest(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SendRequest[] newArray(int i) {
            return new SendRequest[i];
        }
    }

    public SendRequest(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ SendRequest(Parcel parcel, CallableC0040a aVar) {
        this(parcel);
    }

    public SendRequest(String str, Uri uri, PendingIntent pendingIntent) {
        super(str, uri, pendingIntent);
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public String mo37521a(AbstractC4242b.AbstractC4243a aVar) {
        return !TextUtils.isEmpty(this.f5a) ? this.f5a : aVar.mo8213a();
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public boolean mo37525a(Context context, Intent intent, byte[] bArr) {
        if (bArr == null || intent == null) {
            return true;
        }
        if (bArr.length > 1024000) {
            return false;
        }
        intent.putExtra("android.telephony.extra.MMS_DATA", bArr);
        return true;
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public boolean mo37523a(Context context, Bundle bundle) {
        this.f27g = m37524a(context, this.f6b, bundle.getInt("maxMessageSize", 307200));
        return this.f27g != null;
    }

    /* renamed from: a */
    public byte[] m37524a(Context context, Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        Future submit = this.f8d.submit(new CallableC0040a(this, context, uri, i));
        try {
            return (byte[]) submit.get(30000L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            submit.cancel(true);
            return null;
        }
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public byte[] mo37522a(Context context, C4260m mVar, AbstractC4242b.AbstractC4243a aVar, Bundle bundle, String str, String str2) throws C4257j {
        return mVar.m29186f().m29220a(mo37521a(aVar), this.f27g, "POST", !TextUtils.isEmpty(aVar.mo8208d()), aVar.mo8208d(), aVar.mo8209c(), bundle, str, str2);
    }
}
