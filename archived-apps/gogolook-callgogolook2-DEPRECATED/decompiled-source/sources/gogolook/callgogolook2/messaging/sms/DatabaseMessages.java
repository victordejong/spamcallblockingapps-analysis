package gogolook.callgogolook2.messaging.sms;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.google.common.collect.Lists;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p479z.C11658g0;
import p459j.p460a.p474c0.p480d.p481d.C11692c;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12162f0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p582w0.C14017g4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages.class */
public class DatabaseMessages {

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$LocalDatabaseMessage.class */
    public static class LocalDatabaseMessage extends AbstractC4672b implements Parcelable {
        public static final Parcelable.Creator<LocalDatabaseMessage> CREATOR = new C4667a();

        /* renamed from: a */
        public final int f11278a;

        /* renamed from: b */
        public final String f11279b;

        /* renamed from: c */
        public final long f11280c;

        /* renamed from: d */
        public final long f11281d;

        /* renamed from: e */
        public final String f11282e;

        /* renamed from: gogolook.callgogolook2.messaging.sms.DatabaseMessages$LocalDatabaseMessage$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$LocalDatabaseMessage$a.class */
        public static final class C4667a implements Parcelable.Creator<LocalDatabaseMessage> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LocalDatabaseMessage createFromParcel(Parcel parcel) {
                return new LocalDatabaseMessage(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LocalDatabaseMessage[] newArray(int i) {
                return new LocalDatabaseMessage[i];
            }
        }

        public LocalDatabaseMessage(long j, int i, String str, long j2, String str2) {
            this.f11281d = j;
            this.f11278a = i;
            this.f11279b = str;
            this.f11280c = j2;
            this.f11282e = str2;
        }

        public LocalDatabaseMessage(Parcel parcel) {
            this.f11279b = parcel.readString();
            this.f11282e = parcel.readString();
            this.f11281d = parcel.readLong();
            this.f11280c = parcel.readLong();
            this.f11278a = parcel.readInt();
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: a */
        public int mo27456a() {
            return this.f11278a;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: b */
        public long mo27455b() {
            return this.f11280c;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: c */
        public String mo27454c() {
            return this.f11279b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: q */
        public String m27481q() {
            return this.f11282e;
        }

        /* renamed from: r */
        public long m27480r() {
            return this.f11281d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f11279b);
            parcel.writeString(this.f11282e);
            parcel.writeLong(this.f11281d);
            parcel.writeLong(this.f11280c);
            parcel.writeInt(this.f11278a);
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$MmsMessage.class */
    public static class MmsMessage extends AbstractC4672b implements Parcelable {

        /* renamed from: A */
        public static final int f11283A;

        /* renamed from: B */
        public static final int f11284B;

        /* renamed from: C */
        public static final int f11285C;
        public static final Parcelable.Creator<MmsMessage> CREATOR = new C4668a();

        /* renamed from: D */
        public static final int f11286D;

        /* renamed from: E */
        public static final int f11287E;

        /* renamed from: F */
        public static final int f11288F;

        /* renamed from: G */
        public static final int f11289G;

        /* renamed from: H */
        public static final int f11290H;

        /* renamed from: I */
        public static final int f11291I;

        /* renamed from: J */
        public static final int f11292J;

        /* renamed from: K */
        public static final int f11293K;

        /* renamed from: L */
        public static final int f11294L;

        /* renamed from: N */
        public static final int f11295N;

        /* renamed from: O */
        public static final int f11296O;

        /* renamed from: P */
        public static final int f11297P;

        /* renamed from: Q */
        public static final int f11298Q;

        /* renamed from: R */
        public static final int f11299R;

        /* renamed from: S */
        public static String[] f11300S;

        /* renamed from: x */
        public static int f11301x;

        /* renamed from: y */
        public static final int f11302y;

        /* renamed from: z */
        public static final int f11303z;

        /* renamed from: a */
        public String f11304a;

        /* renamed from: b */
        public long f11305b;

        /* renamed from: c */
        public int f11306c;

        /* renamed from: d */
        public String f11307d;

        /* renamed from: e */
        public int f11308e;

        /* renamed from: f */
        public long f11309f;

        /* renamed from: g */
        public long f11310g;

        /* renamed from: h */
        public long f11311h;

        /* renamed from: i */
        public long f11312i;

        /* renamed from: j */
        public int f11313j;

        /* renamed from: k */
        public int f11314k;

        /* renamed from: l */
        public boolean f11315l;

        /* renamed from: m */
        public boolean f11316m;

        /* renamed from: n */
        public String f11317n;

        /* renamed from: o */
        public String f11318o;

        /* renamed from: p */
        public int f11319p;

        /* renamed from: q */
        public long f11320q;

        /* renamed from: r */
        public int f11321r;

        /* renamed from: s */
        public String f11322s;

        /* renamed from: t */
        public int f11323t;

        /* renamed from: u */
        public int f11324u;

        /* renamed from: v */
        public List<MmsPart> f11325v;

        /* renamed from: w */
        public boolean f11326w;

        /* renamed from: gogolook.callgogolook2.messaging.sms.DatabaseMessages$MmsMessage$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$MmsMessage$a.class */
        public static final class C4668a implements Parcelable.Creator<MmsMessage> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MmsMessage createFromParcel(Parcel parcel) {
                return new MmsMessage(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MmsMessage[] newArray(int i) {
                return new MmsMessage[i];
            }
        }

        static {
            int i = f11301x;
            f11301x = i + 1;
            f11302y = i;
            int i2 = f11301x;
            f11301x = i2 + 1;
            f11303z = i2;
            int i3 = f11301x;
            f11301x = i3 + 1;
            f11283A = i3;
            int i4 = f11301x;
            f11301x = i4 + 1;
            f11284B = i4;
            int i5 = f11301x;
            f11301x = i5 + 1;
            f11285C = i5;
            int i6 = f11301x;
            f11301x = i6 + 1;
            f11286D = i6;
            int i7 = f11301x;
            f11301x = i7 + 1;
            f11287E = i7;
            int i8 = f11301x;
            f11301x = i8 + 1;
            f11288F = i8;
            int i9 = f11301x;
            f11301x = i9 + 1;
            f11289G = i9;
            int i10 = f11301x;
            f11301x = i10 + 1;
            f11290H = i10;
            int i11 = f11301x;
            f11301x = i11 + 1;
            f11291I = i11;
            int i12 = f11301x;
            f11301x = i12 + 1;
            f11292J = i12;
            int i13 = f11301x;
            f11301x = i13 + 1;
            f11293K = i13;
            int i14 = f11301x;
            f11301x = i14 + 1;
            f11294L = i14;
            int i15 = f11301x;
            f11301x = i15 + 1;
            f11295N = i15;
            int i16 = f11301x;
            f11301x = i16 + 1;
            f11296O = i16;
            int i17 = f11301x;
            f11301x = i17 + 1;
            f11297P = i17;
            int i18 = f11301x;
            f11301x = i18 + 1;
            f11298Q = i18;
            int i19 = f11301x;
            f11301x = i19 + 1;
            f11299R = i19;
        }

        public MmsMessage() {
            this.f11325v = Lists.m31133a();
            this.f11326w = false;
        }

        public MmsMessage(Parcel parcel) {
            this.f11325v = Lists.m31133a();
            this.f11326w = false;
            this.f11304a = parcel.readString();
            this.f11305b = parcel.readLong();
            this.f11310g = parcel.readLong();
            this.f11311h = parcel.readLong();
            this.f11306c = parcel.readInt();
            this.f11312i = parcel.readLong();
            this.f11314k = parcel.readInt();
            boolean z = true;
            this.f11315l = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            this.f11316m = z;
            this.f11321r = parcel.readInt();
            this.f11307d = parcel.readString();
            this.f11317n = parcel.readString();
            this.f11318o = parcel.readString();
            this.f11322s = parcel.readString();
            this.f11309f = parcel.readLong();
            this.f11320q = parcel.readLong();
            this.f11308e = parcel.readInt();
            this.f11313j = parcel.readInt();
            this.f11319p = parcel.readInt();
            this.f11323t = parcel.readInt();
            this.f11324u = parcel.readInt();
            int readInt = parcel.readInt();
            this.f11325v = new ArrayList();
            this.f11326w = false;
            for (int i = 0; i < readInt; i++) {
                this.f11325v.add((MmsPart) parcel.readParcelable(MmsMessage.class.getClassLoader()));
            }
        }

        /* renamed from: b */
        public static MmsMessage m27476b(Cursor cursor) {
            MmsMessage mmsMessage = new MmsMessage();
            mmsMessage.m27479a(cursor);
            return mmsMessage;
        }

        /* renamed from: u */
        public static String[] m27471u() {
            if (f11300S == null) {
                String[] strArr = {"_id", "msg_box", "sub", MmsBlockLogRealmObject.SUB_CS, "m_size", "date", "date_sent", "thread_id", "pri", "st", "read", "seen", "ct_l", "tr_id", "m_type", "exp", "resp_st", "retr_st", "sub_id"};
                String[] strArr2 = strArr;
                if (!C14017g4.m2804t()) {
                    C12151d.m7012a(f11299R, strArr.length - 1);
                    strArr2 = new String[strArr.length - 1];
                    System.arraycopy(strArr, 0, strArr2, 0, strArr2.length);
                }
                f11300S = strArr2;
            }
            return f11300S;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: a */
        public int mo27456a() {
            return 1;
        }

        /* renamed from: a */
        public void m27479a(Cursor cursor) {
            this.f11305b = cursor.getLong(f11302y);
            this.f11306c = cursor.getInt(f11303z);
            this.f11307d = cursor.getString(f11283A);
            this.f11308e = cursor.getInt(f11284B);
            if (!TextUtils.isEmpty(this.f11307d)) {
                this.f11307d = DatabaseMessages.m27482a(DatabaseMessages.m27483a(this.f11307d, 4), this.f11308e);
            }
            this.f11309f = cursor.getLong(f11285C);
            this.f11310g = cursor.getLong(f11286D) * 1000;
            this.f11311h = cursor.getLong(f11287E) * 1000;
            this.f11312i = cursor.getLong(f11288F);
            this.f11313j = cursor.getInt(f11289G);
            this.f11314k = cursor.getInt(f11290H);
            boolean z = true;
            this.f11315l = cursor.getInt(f11291I) != 0;
            if (cursor.getInt(f11292J) == 0) {
                z = false;
            }
            this.f11316m = z;
            this.f11317n = cursor.getString(f11293K);
            this.f11318o = cursor.getString(f11294L);
            this.f11319p = cursor.getInt(f11295N);
            this.f11320q = cursor.getLong(f11296O) * 1000;
            this.f11323t = cursor.getInt(f11297P);
            this.f11324u = cursor.getInt(f11298Q);
            this.f11325v.clear();
            this.f11326w = false;
            this.f11304a = ContentUris.withAppendedId(Telephony.Mms.CONTENT_URI, this.f11305b).toString();
            this.f11321r = AbstractC12181l0.m6886t().mo6879a(cursor, f11299R);
        }

        /* renamed from: a */
        public void m27478a(MmsPart mmsPart) {
            this.f11325v.add(mmsPart);
        }

        /* renamed from: a */
        public void m27477a(String str) {
            this.f11322s = str;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: b */
        public long mo27455b() {
            return this.f11310g;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: c */
        public String mo27454c() {
            return this.f11304a;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: q */
        public long m27475q() {
            return this.f11305b;
        }

        /* renamed from: r */
        public long m27474r() {
            if (!this.f11326w) {
                m27472t();
            }
            return this.f11309f;
        }

        /* renamed from: s */
        public int m27473s() {
            return this.f11321r;
        }

        /* renamed from: t */
        public final void m27472t() {
            if (!this.f11326w) {
                this.f11326w = true;
                long j = 0;
                long j2 = 0;
                for (MmsPart mmsPart : this.f11325v) {
                    j2 += mmsPart.f11342i;
                }
                if (this.f11309f <= 0) {
                    String str = this.f11307d;
                    if (str != null) {
                        j = str.getBytes().length;
                    }
                    this.f11309f = j;
                    this.f11309f += j2;
                }
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f11304a);
            parcel.writeLong(this.f11305b);
            parcel.writeLong(this.f11310g);
            parcel.writeLong(this.f11311h);
            parcel.writeInt(this.f11306c);
            parcel.writeLong(this.f11312i);
            parcel.writeInt(this.f11314k);
            parcel.writeInt(this.f11315l ? 1 : 0);
            parcel.writeInt(this.f11316m ? 1 : 0);
            parcel.writeInt(this.f11321r);
            parcel.writeString(this.f11307d);
            parcel.writeString(this.f11317n);
            parcel.writeString(this.f11318o);
            parcel.writeString(this.f11322s);
            parcel.writeLong(this.f11309f);
            parcel.writeLong(this.f11320q);
            parcel.writeInt(this.f11308e);
            parcel.writeInt(this.f11313j);
            parcel.writeInt(this.f11319p);
            parcel.writeInt(this.f11323t);
            parcel.writeInt(this.f11324u);
            parcel.writeInt(this.f11325v.size());
            for (MmsPart mmsPart : this.f11325v) {
                parcel.writeParcelable(mmsPart, 0);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$MmsPart.class */
    public static class MmsPart implements Parcelable {

        /* renamed from: k */
        public static int f11328k;

        /* renamed from: l */
        public static final int f11329l;

        /* renamed from: m */
        public static final int f11330m;

        /* renamed from: n */
        public static final int f11331n;

        /* renamed from: o */
        public static final int f11332o;

        /* renamed from: p */
        public static final int f11333p;

        /* renamed from: a */
        public String f11334a;

        /* renamed from: b */
        public long f11335b;

        /* renamed from: c */
        public long f11336c;

        /* renamed from: d */
        public String f11337d;

        /* renamed from: e */
        public String f11338e;

        /* renamed from: f */
        public int f11339f;

        /* renamed from: g */
        public int f11340g;

        /* renamed from: h */
        public int f11341h;

        /* renamed from: i */
        public long f11342i;

        /* renamed from: j */
        public static final String[] f11327j = {"_id", "mid", "chset", "ct", "text"};
        public static final Parcelable.Creator<MmsPart> CREATOR = new C4669a();

        /* renamed from: gogolook.callgogolook2.messaging.sms.DatabaseMessages$MmsPart$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$MmsPart$a.class */
        public static final class C4669a implements Parcelable.Creator<MmsPart> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MmsPart createFromParcel(Parcel parcel) {
                return new MmsPart(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MmsPart[] newArray(int i) {
                return new MmsPart[i];
            }
        }

        static {
            f11328k = 0;
            int i = f11328k;
            f11328k = i + 1;
            f11329l = i;
            int i2 = f11328k;
            f11328k = i2 + 1;
            f11330m = i2;
            int i3 = f11328k;
            f11328k = i3 + 1;
            f11331n = i3;
            int i4 = f11328k;
            f11328k = i4 + 1;
            f11332o = i4;
            int i5 = f11328k;
            f11328k = i5 + 1;
            f11333p = i5;
        }

        public MmsPart() {
        }

        public MmsPart(Parcel parcel) {
            this.f11334a = parcel.readString();
            this.f11335b = parcel.readLong();
            this.f11336c = parcel.readLong();
            this.f11337d = parcel.readString();
            this.f11338e = parcel.readString();
            this.f11339f = parcel.readInt();
            this.f11340g = parcel.readInt();
            this.f11341h = parcel.readInt();
            this.f11342i = parcel.readLong();
        }

        /* renamed from: a */
        public static String m27469a(Context context, Uri uri) {
            String path = uri.getPath();
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(path);
            String str = fileExtensionFromUrl;
            if (TextUtils.isEmpty(fileExtensionFromUrl)) {
                int lastIndexOf = path.lastIndexOf(46);
                str = fileExtensionFromUrl;
                if (lastIndexOf >= 0) {
                    str = path.substring(lastIndexOf + 1);
                }
            }
            return singleton.getMimeTypeFromExtension(str);
        }

        /* renamed from: b */
        public static MmsPart m27466b(Cursor cursor, boolean z) {
            MmsPart mmsPart = new MmsPart();
            mmsPart.m27468a(cursor, z);
            return mmsPart;
        }

        /* renamed from: a */
        public Uri m27470a() {
            return Uri.parse("content://mms/part/" + this.f11335b);
        }

        /* renamed from: a */
        public void m27468a(Cursor cursor, boolean z) {
            this.f11335b = cursor.getLong(f11329l);
            this.f11336c = cursor.getLong(f11330m);
            this.f11337d = cursor.getString(f11332o);
            this.f11338e = cursor.getString(f11333p);
            this.f11339f = cursor.getInt(f11331n);
            this.f11340g = 0;
            this.f11341h = 0;
            this.f11342i = 0L;
            if (!m27465c()) {
                m27462s();
            } else if (z) {
                if (C12205r.m6809d(this.f11337d)) {
                    m27463r();
                } else if (C12205r.m6804i(this.f11337d)) {
                    m27461t();
                }
                this.f11342i = C11834j.m8085c(m27470a());
            }
            this.f11334a = Uri.withAppendedPath(Telephony.Mms.CONTENT_URI, cursor.getString(f11329l)).toString();
        }

        /* renamed from: b */
        public final boolean m27467b() {
            return "text/plain".equals(this.f11337d) || "application/smil".equals(this.f11337d) || "text/html".equals(this.f11337d);
        }

        /* renamed from: c */
        public boolean m27465c() {
            return C12205r.m6809d(this.f11337d) || C12205r.m6804i(this.f11337d) || C12205r.m6811b(this.f11337d) || C12205r.m6805h(this.f11337d);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: q */
        public boolean m27464q() {
            return "text/plain".equals(this.f11337d) || "text/html".equals(this.f11337d) || "application/vnd.wap.xhtml+xml".equals(this.f11337d);
        }

        /* renamed from: r */
        public final void m27463r() {
            Throwable th;
            FileNotFoundException e;
            Context a = AbstractC11516a.m9413n().mo9412a();
            ContentResolver contentResolver = a.getContentResolver();
            Uri a2 = m27470a();
            r6 = null;
            InputStream inputStream = null;
            try {
                try {
                    try {
                        inputStream = contentResolver.openInputStream(a2);
                    } catch (FileNotFoundException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(inputStream, null, options);
                    this.f11337d = options.outMimeType;
                    this.f11340g = options.outWidth;
                    this.f11341h = options.outHeight;
                    if (TextUtils.isEmpty(this.f11337d)) {
                        this.f11337d = m27469a(a, a2);
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                    inputStream = inputStream;
                    C12153d0.m6986b("MessagingApp", "DatabaseMessages.MmsPart.loadImage: file not found", e);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            Log.e("MessagingApp", "IOException caught while closing stream", e4);
                        }
                    }
                    throw th;
                }
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e5) {
                Log.e("MessagingApp", "IOException caught while closing stream", e5);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:65:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m27462s() {
            /*
                Method dump skipped, instructions count: 365
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.sms.DatabaseMessages.MmsPart.m27462s():void");
        }

        /* renamed from: t */
        public final void m27461t() {
            if (C11658g0.m8693k()) {
                Uri a = m27470a();
                C12162f0 f0Var = new C12162f0();
                try {
                    try {
                        f0Var.m6949a(a);
                        this.f11337d = f0Var.m6952a(12);
                        Bitmap a2 = f0Var.m6950a(-1L);
                        if (a2 != null) {
                            this.f11340g = a2.getWidth();
                            this.f11341h = a2.getHeight();
                        } else {
                            C12153d0.m6985c("MessagingApp", "loadVideo: Got null bitmap from " + a);
                        }
                    } catch (IOException e) {
                        C12153d0.m6984c("MessagingApp", "Error extracting metadata from " + a, e);
                    }
                } finally {
                    f0Var.m6948b();
                }
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f11334a);
            parcel.writeLong(this.f11335b);
            parcel.writeLong(this.f11336c);
            parcel.writeString(this.f11337d);
            parcel.writeString(this.f11338e);
            parcel.writeInt(this.f11339f);
            parcel.writeInt(this.f11340g);
            parcel.writeInt(this.f11341h);
            parcel.writeLong(this.f11342i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$SmsMessage.class */
    public static class SmsMessage extends AbstractC4672b implements Parcelable {
        public static final Parcelable.Creator<SmsMessage> CREATOR = new C4670a();

        /* renamed from: m */
        public static int f11343m;

        /* renamed from: n */
        public static final int f11344n;

        /* renamed from: o */
        public static final int f11345o;

        /* renamed from: p */
        public static final int f11346p;

        /* renamed from: q */
        public static final int f11347q;

        /* renamed from: r */
        public static final int f11348r;

        /* renamed from: s */
        public static final int f11349s;

        /* renamed from: t */
        public static final int f11350t;

        /* renamed from: u */
        public static final int f11351u;

        /* renamed from: v */
        public static final int f11352v;

        /* renamed from: w */
        public static final int f11353w;

        /* renamed from: x */
        public static final int f11354x;

        /* renamed from: y */
        public static String[] f11355y;

        /* renamed from: a */
        public String f11356a;

        /* renamed from: b */
        public String f11357b;

        /* renamed from: c */
        public String f11358c;

        /* renamed from: d */
        public long f11359d;

        /* renamed from: e */
        public long f11360e;

        /* renamed from: f */
        public long f11361f;

        /* renamed from: g */
        public int f11362g;

        /* renamed from: h */
        public long f11363h;

        /* renamed from: i */
        public int f11364i;

        /* renamed from: j */
        public boolean f11365j;

        /* renamed from: k */
        public boolean f11366k;

        /* renamed from: l */
        public int f11367l;

        /* renamed from: gogolook.callgogolook2.messaging.sms.DatabaseMessages$SmsMessage$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$SmsMessage$a.class */
        public static final class C4670a implements Parcelable.Creator<SmsMessage> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SmsMessage createFromParcel(Parcel parcel) {
                return new SmsMessage(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SmsMessage[] newArray(int i) {
                return new SmsMessage[i];
            }
        }

        static {
            int i = f11343m;
            f11343m = i + 1;
            f11344n = i;
            int i2 = f11343m;
            f11343m = i2 + 1;
            f11345o = i2;
            int i3 = f11343m;
            f11343m = i3 + 1;
            f11346p = i3;
            int i4 = f11343m;
            f11343m = i4 + 1;
            f11347q = i4;
            int i5 = f11343m;
            f11343m = i5 + 1;
            f11348r = i5;
            int i6 = f11343m;
            f11343m = i6 + 1;
            f11349s = i6;
            int i7 = f11343m;
            f11343m = i7 + 1;
            f11350t = i7;
            int i8 = f11343m;
            f11343m = i8 + 1;
            f11351u = i8;
            int i9 = f11343m;
            f11343m = i9 + 1;
            f11352v = i9;
            int i10 = f11343m;
            f11343m = i10 + 1;
            f11353w = i10;
            int i11 = f11343m;
            f11343m = i11 + 1;
            f11354x = i11;
        }

        public SmsMessage() {
        }

        public SmsMessage(Parcel parcel) {
            this.f11356a = parcel.readString();
            this.f11359d = parcel.readLong();
            this.f11360e = parcel.readLong();
            this.f11361f = parcel.readLong();
            this.f11362g = parcel.readInt();
            this.f11363h = parcel.readLong();
            this.f11364i = parcel.readInt();
            boolean z = true;
            this.f11365j = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            this.f11366k = z;
            this.f11367l = parcel.readInt();
            this.f11357b = parcel.readString();
            this.f11358c = parcel.readString();
        }

        /* renamed from: b */
        public static SmsMessage m27459b(Cursor cursor) {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.m27460a(cursor);
            return smsMessage;
        }

        /* renamed from: r */
        public static String[] m27457r() {
            if (f11355y == null) {
                String[] strArr = {"_id", "type", "address", "body", "date", "thread_id", "status", "read", "seen", "date_sent", "sub_id"};
                if (!C11834j.m8076f()) {
                    strArr[f11353w] = "date";
                }
                String[] strArr2 = strArr;
                if (!C14017g4.m2804t()) {
                    C12151d.m7012a(f11354x, strArr.length - 1);
                    strArr2 = new String[strArr.length - 1];
                    System.arraycopy(strArr, 0, strArr2, 0, strArr2.length);
                }
                f11355y = strArr2;
            }
            return f11355y;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: a */
        public int mo27456a() {
            return 0;
        }

        /* renamed from: a */
        public final void m27460a(Cursor cursor) {
            this.f11359d = cursor.getLong(f11344n);
            this.f11357b = cursor.getString(f11346p);
            this.f11358c = cursor.getString(f11347q);
            this.f11360e = cursor.getLong(f11348r);
            this.f11361f = cursor.getLong(f11353w);
            this.f11362g = cursor.getInt(f11345o);
            this.f11363h = cursor.getLong(f11349s);
            this.f11364i = cursor.getInt(f11350t);
            boolean z = false;
            this.f11365j = cursor.getInt(f11351u) != 0;
            if (cursor.getInt(f11352v) != 0) {
                z = true;
            }
            this.f11366k = z;
            this.f11356a = ContentUris.withAppendedId(Telephony.Sms.CONTENT_URI, this.f11359d).toString();
            this.f11367l = AbstractC12181l0.m6886t().mo6879a(cursor, f11354x);
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: b */
        public long mo27455b() {
            return this.f11360e;
        }

        @Override // gogolook.callgogolook2.messaging.sms.DatabaseMessages.AbstractC4672b
        /* renamed from: c */
        public String mo27454c() {
            return this.f11356a;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: q */
        public int m27458q() {
            return this.f11367l;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f11356a);
            parcel.writeLong(this.f11359d);
            parcel.writeLong(this.f11360e);
            parcel.writeLong(this.f11361f);
            parcel.writeInt(this.f11362g);
            parcel.writeLong(this.f11363h);
            parcel.writeInt(this.f11364i);
            parcel.writeInt(this.f11365j ? 1 : 0);
            parcel.writeInt(this.f11366k ? 1 : 0);
            parcel.writeInt(this.f11367l);
            parcel.writeString(this.f11357b);
            parcel.writeString(this.f11358c);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.sms.DatabaseMessages$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$b.class */
    public static abstract class AbstractC4672b {
        /* renamed from: a */
        public abstract int mo27456a();

        /* renamed from: b */
        public abstract long mo27455b();

        /* renamed from: c */
        public abstract String mo27454c();

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof AbstractC4672b)) {
                return false;
            }
            return TextUtils.equals(mo27454c(), ((AbstractC4672b) obj).mo27454c());
        }

        public int hashCode() {
            return mo27454c().hashCode();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.sms.DatabaseMessages$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/DatabaseMessages$c.class */
    public static class C4673c {

        /* renamed from: a */
        public static int f11368a;

        /* renamed from: b */
        public static final int f11369b;

        /* renamed from: c */
        public static final int f11370c;

        static {
            f11368a = 0;
            int i = f11368a;
            f11368a = i + 1;
            f11369b = i;
            int i2 = f11368a;
            f11368a = i2 + 1;
            f11370c = i2;
        }

        /* renamed from: a */
        public static String m27453a(Cursor cursor) {
            return DatabaseMessages.m27482a(DatabaseMessages.m27483a(cursor.getString(f11369b), 4), cursor.getInt(f11370c));
        }
    }

    /* renamed from: a */
    public static String m27482a(byte[] bArr, int i) {
        if (i == 0) {
            return new String(bArr);
        }
        try {
            return new String(bArr, C11692c.m8593a(i));
        } catch (UnsupportedEncodingException e) {
            try {
                return new String(bArr, "iso-8859-1");
            } catch (UnsupportedEncodingException e2) {
                return new String(bArr);
            }
        }
    }

    /* renamed from: a */
    public static byte[] m27483a(String str, int i) {
        if (i == 0) {
            return str.getBytes();
        }
        try {
            return str.getBytes(C11692c.m8593a(i));
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }
}
