package gogolook.callgogolook2.messaging.datamodel.data;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12179k0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/MessageData.class */
public class MessageData implements Parcelable {

    /* renamed from: a */
    public String f11207a;

    /* renamed from: b */
    public String f11208b;

    /* renamed from: c */
    public String f11209c;

    /* renamed from: d */
    public String f11210d;

    /* renamed from: e */
    public long f11211e;

    /* renamed from: f */
    public long f11212f;

    /* renamed from: g */
    public boolean f11213g;

    /* renamed from: h */
    public boolean f11214h;

    /* renamed from: i */
    public int f11215i;

    /* renamed from: j */
    public Uri f11216j;

    /* renamed from: k */
    public int f11217k;

    /* renamed from: l */
    public long f11218l;

    /* renamed from: m */
    public String f11219m;

    /* renamed from: n */
    public String f11220n;

    /* renamed from: o */
    public String f11221o;

    /* renamed from: p */
    public long f11222p;

    /* renamed from: q */
    public int f11223q;

    /* renamed from: r */
    public int f11224r;

    /* renamed from: s */
    public final ArrayList<MessagePartData> f11225s;

    /* renamed from: t */
    public long f11226t;

    /* renamed from: u */
    public static final String[] f11205u = {"_id", "conversation_id", "sender_id", "self_id", "sent_timestamp", "received_timestamp", "seen", "read", "message_protocol", "message_status", "sms_message_uri", "sms_priority", "sms_message_size", "mms_subject", "mms_transaction_id", "mms_content_location", "mms_expiry", "raw_status", "retry_start_timestamp"};

    /* renamed from: v */
    public static final String f11206v = "INSERT INTO messages ( " + TextUtils.join(UserProfile.CARD_CATE_SEPARATOR, Arrays.copyOfRange(f11205u, 1, 19)) + ") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    public static final Parcelable.Creator<MessageData> CREATOR = new C4653a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.MessageData$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/MessageData$a.class */
    public static final class C4653a implements Parcelable.Creator<MessageData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessageData createFromParcel(Parcel parcel) {
            return new MessageData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessageData[] newArray(int i) {
            return new MessageData[i];
        }
    }

    public MessageData() {
        this.f11225s = new ArrayList<>();
    }

    public MessageData(Parcel parcel) {
        this.f11207a = parcel.readString();
        this.f11208b = parcel.readString();
        this.f11209c = parcel.readString();
        this.f11210d = parcel.readString();
        this.f11211e = parcel.readLong();
        this.f11212f = parcel.readLong();
        boolean z = true;
        this.f11213g = parcel.readInt() != 0;
        if (parcel.readInt() == 0) {
            z = false;
        }
        this.f11214h = z;
        this.f11215i = parcel.readInt();
        this.f11224r = parcel.readInt();
        String readString = parcel.readString();
        this.f11216j = readString == null ? null : Uri.parse(readString);
        this.f11217k = parcel.readInt();
        this.f11218l = parcel.readLong();
        this.f11222p = parcel.readLong();
        this.f11219m = parcel.readString();
        this.f11220n = parcel.readString();
        this.f11221o = parcel.readString();
        this.f11223q = parcel.readInt();
        this.f11226t = parcel.readLong();
        this.f11225s = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            this.f11225s.add((MessagePartData) parcel.readParcelable(MessagePartData.class.getClassLoader()));
        }
    }

    /* renamed from: O */
    public static String[] m27631O() {
        return f11205u;
    }

    /* renamed from: a */
    public static MessageData m27624a(Uri uri, String str, String str2, String str3, String str4, String str5, long j, long j2, boolean z, boolean z2) {
        MessageData messageData = new MessageData();
        messageData.f11216j = uri;
        messageData.f11208b = str;
        messageData.f11209c = str2;
        messageData.f11210d = str3;
        messageData.f11215i = 0;
        messageData.f11224r = 100;
        messageData.f11219m = str5;
        messageData.f11212f = j2;
        messageData.f11211e = j;
        messageData.f11225s.add(MessagePartData.m27568c(str4));
        messageData.f11213g = z;
        messageData.f11214h = z2;
        return messageData;
    }

    /* renamed from: a */
    public static MessageData m27619a(String str, String str2, MessageData messageData) {
        MessageData messageData2 = new MessageData();
        messageData2.f11224r = 3;
        messageData2.f11215i = -1;
        messageData2.f11208b = str;
        messageData2.f11209c = str2;
        messageData2.f11212f = System.currentTimeMillis();
        if (messageData == null) {
            messageData2.f11225s.add(MessagePartData.m27568c(""));
        } else {
            if (!TextUtils.isEmpty(messageData.f11209c)) {
                messageData2.f11209c = messageData.f11209c;
            }
            if (!TextUtils.isEmpty(messageData.f11219m)) {
                messageData2.f11219m = messageData.f11219m;
            }
            for (MessagePartData messagePartData : messageData.m27643C()) {
                messageData2.f11225s.add(messagePartData);
            }
        }
        messageData2.f11210d = str2;
        return messageData2;
    }

    /* renamed from: a */
    public static MessageData m27618a(String str, String str2, String str3) {
        MessageData messageData = new MessageData();
        messageData.f11224r = 3;
        messageData.f11215i = 0;
        messageData.f11208b = str;
        messageData.f11209c = str2;
        messageData.f11210d = str2;
        messageData.f11225s.add(MessagePartData.m27568c(str3));
        messageData.f11212f = System.currentTimeMillis();
        return messageData;
    }

    /* renamed from: a */
    public static MessageData m27617a(String str, String str2, String str3, String str4) {
        MessageData messageData = new MessageData();
        messageData.f11224r = 3;
        messageData.f11215i = 1;
        messageData.f11208b = str;
        messageData.f11209c = str2;
        messageData.f11210d = str2;
        messageData.f11219m = str4;
        messageData.f11212f = System.currentTimeMillis();
        if (!TextUtils.isEmpty(str3)) {
            messageData.f11225s.add(MessagePartData.m27568c(str3));
        }
        return messageData;
    }

    /* renamed from: a */
    public static MessageData m27616a(String str, String str2, String str3, String str4, int i, boolean z, boolean z2, long j, long j2, String str5) {
        MessageData messageData = new MessageData();
        messageData.f11209c = str2;
        messageData.f11210d = str3;
        messageData.f11208b = str4;
        messageData.f11211e = j;
        messageData.f11212f = j2;
        messageData.f11213g = z;
        messageData.f11214h = z2;
        messageData.f11215i = 0;
        messageData.f11224r = i;
        messageData.f11216j = Uri.parse(str);
        messageData.f11225s.add(MessagePartData.m27568c(str5));
        return messageData;
    }

    /* renamed from: a */
    public static MessageData m27615a(String str, String str2, String str3, String str4, boolean z, int i, String str5, String str6, int i2, String str7, boolean z2, boolean z3, long j, int i3, long j2, long j3, long j4) {
        MessageData messageData = new MessageData();
        messageData.f11209c = str2;
        messageData.f11210d = str3;
        messageData.f11208b = str4;
        messageData.f11211e = j3;
        messageData.f11212f = j4;
        messageData.f11221o = str5;
        messageData.f11220n = str6;
        messageData.f11213g = z2;
        messageData.f11214h = z3;
        messageData.f11224r = i;
        messageData.f11215i = z ? 2 : 1;
        messageData.f11216j = Uri.parse(str);
        messageData.f11217k = i2;
        messageData.f11218l = j;
        messageData.f11219m = str7;
        messageData.f11222p = j2;
        messageData.f11223q = i3;
        if (i == 104 || i == 6) {
            messageData.f11226t = j4;
        }
        return messageData;
    }

    /* renamed from: a */
    public static String m27614a(String str, List<MessagePartData> list) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(": ");
        }
        for (MessagePartData messagePartData : list) {
            sb.append(messagePartData.toString());
            sb.append(" ");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static boolean m27611b(int i) {
        return i >= 100 && i <= 199;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r3 == 107) goto L_0x0028;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m27607c(int r3) {
        /*
            boolean r0 = p459j.p460a.p474c0.p499h.C12179k0.m6911a()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r3
            r1 = 106(0x6a, float:1.49E-43)
            if (r0 == r1) goto L_0x0028
            r0 = r3
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L_0x0028
            r0 = r5
            r4 = r0
            boolean r0 = p459j.p460a.p474c0.p499h.C12219v.m6735a()
            if (r0 == 0) goto L_0x002a
            r0 = r5
            r4 = r0
            r0 = r3
            r1 = 107(0x6b, float:1.5E-43)
            if (r0 != r1) goto L_0x002a
        L_0x0028:
            r0 = 1
            r4 = r0
        L_0x002a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.data.MessageData.m27607c(int):boolean");
    }

    /* renamed from: d */
    public static boolean m27604d(int i) {
        return i == 8;
    }

    /* renamed from: e */
    public static MessageData m27599e(String str) {
        MessageData messageData = new MessageData();
        messageData.f11224r = 3;
        if (!TextUtils.isEmpty(str)) {
            messageData.f11225s.add(MessagePartData.m27568c(str));
        }
        return messageData;
    }

    /* renamed from: e */
    public static final String m27601e(int i) {
        switch (i) {
            case 0:
                return "UNKNOWN";
            case 1:
                return "OUTGOING_COMPLETE";
            case 2:
                return "OUTGOING_DELIVERED";
            case 3:
                return "OUTGOING_DRAFT";
            case 4:
                return "OUTGOING_YET_TO_SEND";
            case 5:
                return "OUTGOING_SENDING";
            case 6:
                return "OUTGOING_RESENDING";
            case 7:
                return "OUTGOING_AWAITING_RETRY";
            case 8:
                return "OUTGOING_FAILED";
            case 9:
                return "OUTGOING_FAILED_EMERGENCY_NUMBER";
            default:
                switch (i) {
                    case 100:
                        return "INCOMING_COMPLETE";
                    case 101:
                        return "INCOMING_YET_TO_MANUAL_DOWNLOAD";
                    case 102:
                        return "INCOMING_RETRYING_MANUAL_DOWNLOAD";
                    case 103:
                        return "INCOMING_MANUAL_DOWNLOADING";
                    case 104:
                        return "INCOMING_RETRYING_AUTO_DOWNLOAD";
                    case 105:
                        return "INCOMING_AUTO_DOWNLOADING";
                    case 106:
                        return "INCOMING_DOWNLOAD_FAILED";
                    case 107:
                        return "INCOMING_EXPIRED_OR_NOT_AVAILABLE";
                    default:
                        return String.valueOf(i) + " (check MessageData)";
                }
        }
    }

    /* renamed from: A */
    public final String m27645A() {
        return this.f11220n;
    }

    /* renamed from: B */
    public final String m27644B() {
        return this.f11209c;
    }

    /* renamed from: C */
    public Iterable<MessagePartData> m27643C() {
        return this.f11225s;
    }

    /* renamed from: D */
    public int m27642D() {
        return this.f11225s.size();
    }

    /* renamed from: E */
    public final int m27641E() {
        return this.f11215i;
    }

    /* renamed from: F */
    public final int m27640F() {
        return this.f11223q;
    }

    /* renamed from: G */
    public final long m27639G() {
        return this.f11212f;
    }

    /* renamed from: H */
    public final String m27638H() {
        return this.f11210d;
    }

    /* renamed from: I */
    public final long m27637I() {
        return this.f11211e;
    }

    /* renamed from: J */
    public final Uri m27636J() {
        return this.f11216j;
    }

    /* renamed from: K */
    public final int m27635K() {
        return this.f11224r;
    }

    /* renamed from: L */
    public final boolean m27634L() {
        return this.f11224r == 4;
    }

    /* renamed from: M */
    public boolean m27633M() {
        return !TextUtils.isEmpty(this.f11219m) || m27592t() != null || !TextUtils.isEmpty(m27588x());
    }

    /* renamed from: N */
    public final void m27632N() {
        for (MessagePartData messagePartData : m27643C()) {
            messagePartData.m27574a(false);
        }
    }

    /* renamed from: a */
    public SQLiteStatement m27622a(C11534l lVar) {
        SQLiteStatement a = lVar.m9226a(1, f11206v);
        a.clearBindings();
        a.bindString(1, this.f11208b);
        a.bindString(2, this.f11209c);
        a.bindString(3, this.f11210d);
        a.bindLong(4, this.f11211e);
        a.bindLong(5, this.f11212f);
        long j = 1;
        a.bindLong(6, this.f11213g ? 1L : 0L);
        if (!this.f11214h) {
            j = 0;
        }
        a.bindLong(7, j);
        a.bindLong(8, this.f11215i);
        a.bindLong(9, this.f11224r);
        Uri uri = this.f11216j;
        if (uri != null) {
            a.bindString(10, uri.toString());
        }
        a.bindLong(11, this.f11217k);
        a.bindLong(12, this.f11218l);
        a.bindLong(16, this.f11222p);
        String str = this.f11219m;
        if (str != null) {
            a.bindString(13, str);
        }
        String str2 = this.f11220n;
        if (str2 != null) {
            a.bindString(14, str2);
        }
        String str3 = this.f11221o;
        if (str3 != null) {
            a.bindString(15, str3);
        }
        a.bindLong(17, this.f11223q);
        a.bindLong(18, this.f11226t);
        return a;
    }

    /* renamed from: a */
    public final void m27629a(int i) {
        this.f11223q = i;
    }

    /* renamed from: a */
    public void m27627a(ContentValues contentValues) {
        contentValues.put("conversation_id", this.f11208b);
        contentValues.put("sender_id", this.f11209c);
        contentValues.put("self_id", this.f11210d);
        contentValues.put("sent_timestamp", Long.valueOf(this.f11211e));
        contentValues.put("received_timestamp", Long.valueOf(this.f11212f));
        contentValues.put("seen", Integer.valueOf(this.f11213g ? 1 : 0));
        contentValues.put("read", Integer.valueOf(this.f11214h ? 1 : 0));
        contentValues.put("message_protocol", Integer.valueOf(this.f11215i));
        contentValues.put("message_status", Integer.valueOf(this.f11224r));
        Uri uri = this.f11216j;
        contentValues.put("sms_message_uri", uri == null ? null : uri.toString());
        contentValues.put("sms_priority", Integer.valueOf(this.f11217k));
        contentValues.put("sms_message_size", Long.valueOf(this.f11218l));
        contentValues.put("mms_expiry", Long.valueOf(this.f11222p));
        contentValues.put("mms_subject", this.f11219m);
        contentValues.put("mms_transaction_id", this.f11220n);
        contentValues.put("mms_content_location", this.f11221o);
        contentValues.put("raw_status", Integer.valueOf(this.f11223q));
        contentValues.put("retry_start_timestamp", Long.valueOf(this.f11226t));
    }

    /* renamed from: a */
    public void m27626a(Cursor cursor) {
        boolean z = false;
        this.f11207a = cursor.getString(0);
        this.f11208b = cursor.getString(1);
        this.f11209c = cursor.getString(2);
        this.f11210d = cursor.getString(3);
        this.f11211e = cursor.getLong(4);
        this.f11212f = cursor.getLong(5);
        this.f11213g = cursor.getInt(6) != 0;
        if (cursor.getInt(7) != 0) {
            z = true;
        }
        this.f11214h = z;
        this.f11215i = cursor.getInt(8);
        this.f11224r = cursor.getInt(9);
        String string = cursor.getString(10);
        this.f11216j = string == null ? null : Uri.parse(string);
        this.f11217k = cursor.getInt(11);
        this.f11218l = cursor.getLong(12);
        this.f11222p = cursor.getLong(16);
        this.f11223q = cursor.getInt(17);
        this.f11219m = cursor.getString(13);
        this.f11220n = cursor.getString(14);
        this.f11221o = cursor.getString(15);
        this.f11226t = cursor.getLong(18);
    }

    /* renamed from: a */
    public void m27625a(Cursor cursor, String str) {
        m27626a(cursor);
        this.f11210d = str;
    }

    /* renamed from: a */
    public void m27623a(MessagePartData messagePartData) {
        if (messagePartData instanceof PendingAttachmentData) {
            C12151d.m6999b(this.f11208b == null);
        }
        this.f11225s.add(messagePartData);
    }

    /* renamed from: a */
    public final void m27621a(String str) {
        this.f11209c = str;
    }

    /* renamed from: a */
    public final void m27620a(String str, Uri uri, long j) {
        this.f11208b = str;
        this.f11216j = uri;
        this.f11214h = true;
        this.f11213g = true;
        this.f11212f = j;
        this.f11211e = j;
        this.f11224r = 4;
        this.f11226t = j;
    }

    /* renamed from: a */
    public final void m27613a(boolean z) {
        this.f11213g = z;
    }

    /* renamed from: a */
    public boolean m27630a() {
        boolean z = false;
        if (C12179k0.m6911a()) {
            return false;
        }
        int i = this.f11224r;
        if (i == 102 || i == 104) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m27628a(long j) {
        AbstractC12170i.m6941a().mo6918a("bugle_download_timeout_in_millis", 1200000L);
        return j - this.f11226t < 1200000;
    }

    /* renamed from: b */
    public final void m27609b(String str) {
        this.f11210d = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r3.f11224r == 107) goto L_0x0030;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27612b() {
        /*
            r3 = this;
            boolean r0 = p459j.p460a.p474c0.p499h.C12179k0.m6911a()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r3
            int r0 = r0.f11224r
            r6 = r0
            r0 = r6
            r1 = 106(0x6a, float:1.49E-43)
            if (r0 == r1) goto L_0x0030
            r0 = r6
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L_0x0030
            r0 = r5
            r4 = r0
            boolean r0 = p459j.p460a.p474c0.p499h.C12219v.m6735a()
            if (r0 == 0) goto L_0x0032
            r0 = r5
            r4 = r0
            r0 = r3
            int r0 = r0.f11224r
            r1 = 107(0x6b, float:1.5E-43)
            if (r0 != r1) goto L_0x0032
        L_0x0030:
            r0 = 1
            r4 = r0
        L_0x0032:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.data.MessageData.m27612b():boolean");
    }

    /* renamed from: b */
    public final boolean m27610b(long j) {
        AbstractC12170i.m6941a().mo6918a("bugle_resend_timeout_in_millis", 1200000L);
        return j - this.f11226t < 1200000;
    }

    /* renamed from: c */
    public final void m27606c(long j) {
        this.f11211e = j;
        this.f11224r = 8;
    }

    /* renamed from: c */
    public final void m27605c(String str) {
        this.f11219m = str;
    }

    /* renamed from: c */
    public boolean m27608c() {
        return this.f11224r == 8;
    }

    /* renamed from: d */
    public final void m27603d(long j) {
        this.f11211e = j;
        this.f11224r = 9;
    }

    /* renamed from: d */
    public void m27602d(String str) {
        C12151d.m6999b(TextUtils.isEmpty(str) || TextUtils.isEmpty(this.f11207a));
        this.f11207a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final void m27600e(long j) {
        this.f11211e = j;
        this.f11224r = 7;
    }

    /* renamed from: f */
    public final void m27598f(long j) {
        this.f11224r = 6;
        this.f11211e = j;
    }

    /* renamed from: g */
    public final void m27597g(long j) {
        this.f11224r = 5;
        this.f11211e = j;
    }

    /* renamed from: h */
    public final void m27596h(long j) {
        this.f11211e = j;
        this.f11224r = 1;
    }

    /* renamed from: q */
    public boolean m27595q() {
        int i = this.f11224r;
        return i == 4 || i == 7;
    }

    /* renamed from: r */
    public final void m27594r() {
        String property = System.getProperty("line.separator");
        StringBuilder sb = new StringBuilder();
        MessagePartData messagePartData = null;
        int i = -1;
        for (int i2 = 0; i2 < this.f11225s.size(); i2++) {
            MessagePartData messagePartData2 = this.f11225s.get(i2);
            messagePartData = messagePartData;
            i = i;
            if (messagePartData == null) {
                messagePartData = messagePartData;
                i = i;
                if (!messagePartData2.m27562v()) {
                    i = i2;
                    messagePartData = messagePartData2;
                }
            }
            if (messagePartData2.m27562v() && !TextUtils.isEmpty(messagePartData2.m27563u())) {
                if (sb.length() > 0) {
                    sb.append(property);
                }
                sb.append(messagePartData2.m27563u());
            }
        }
        if (sb.length() != 0) {
            if (messagePartData == null) {
                m27623a(MessagePartData.m27568c(sb.toString()));
                return;
            }
            String u = messagePartData.m27563u();
            if (u.length() > 0) {
                sb.append(property);
                sb.append(u);
            }
            this.f11225s.set(i, MessagePartData.m27568c(sb.toString()));
        }
    }

    /* renamed from: s */
    public final String m27593s() {
        return this.f11208b;
    }

    /* renamed from: t */
    public final MessagePartData m27592t() {
        Iterator<MessagePartData> it = this.f11225s.iterator();
        while (it.hasNext()) {
            MessagePartData next = it.next();
            if (next.m27562v()) {
                return next;
            }
        }
        return null;
    }

    public String toString() {
        return m27614a(this.f11207a, this.f11225s);
    }

    /* renamed from: u */
    public boolean m27591u() {
        return m27611b(this.f11224r);
    }

    /* renamed from: v */
    public final boolean m27590v() {
        int i = this.f11215i;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: w */
    public final String m27589w() {
        return this.f11207a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11207a);
        parcel.writeString(this.f11208b);
        parcel.writeString(this.f11209c);
        parcel.writeString(this.f11210d);
        parcel.writeLong(this.f11211e);
        parcel.writeLong(this.f11212f);
        parcel.writeInt(this.f11214h ? 1 : 0);
        parcel.writeInt(this.f11213g ? 1 : 0);
        parcel.writeInt(this.f11215i);
        parcel.writeInt(this.f11224r);
        Uri uri = this.f11216j;
        parcel.writeString(uri == null ? null : uri.toString());
        parcel.writeInt(this.f11217k);
        parcel.writeLong(this.f11218l);
        parcel.writeLong(this.f11222p);
        parcel.writeString(this.f11219m);
        parcel.writeString(this.f11220n);
        parcel.writeString(this.f11221o);
        parcel.writeInt(this.f11223q);
        parcel.writeLong(this.f11226t);
        parcel.writeInt(this.f11225s.size());
        Iterator<MessagePartData> it = this.f11225s.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), i);
        }
    }

    /* renamed from: x */
    public final String m27588x() {
        String property = System.getProperty("line.separator");
        StringBuilder sb = new StringBuilder();
        Iterator<MessagePartData> it = this.f11225s.iterator();
        while (it.hasNext()) {
            MessagePartData next = it.next();
            if (!next.m27562v() && !TextUtils.isEmpty(next.m27563u())) {
                if (sb.length() > 0) {
                    sb.append(property);
                }
                sb.append(next.m27563u());
            }
        }
        return sb.toString();
    }

    /* renamed from: y */
    public final String m27587y() {
        return this.f11221o;
    }

    /* renamed from: z */
    public final String m27586z() {
        return this.f11219m;
    }
}
