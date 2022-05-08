package p459j.p460a.p474c0.p488f;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import androidx.media2.session.MediaSessionImplBase;
import androidx.room.FtsOptions;
import com.flurry.sdk.C3496r;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$array;
import gogolook.callgogolook2.R$bool;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.TextSearchResultEntry;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p480d.C11687a;
import p459j.p460a.p474c0.p480d.C11688b;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p480d.p481d.C11694e;
import p459j.p460a.p474c0.p480d.p481d.C11695f;
import p459j.p460a.p474c0.p480d.p481d.C11699j;
import p459j.p460a.p474c0.p480d.p481d.C11707n;
import p459j.p460a.p474c0.p480d.p481d.C11708o;
import p459j.p460a.p474c0.p480d.p481d.C11709p;
import p459j.p460a.p474c0.p480d.p481d.C11713t;
import p459j.p460a.p474c0.p480d.p481d.C11714u;
import p459j.p460a.p474c0.p480d.p481d.C11715v;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p488f.C11841n;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12162f0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12219v;
import p459j.p460a.p474c0.p499h.C12221w;
import p459j.p460a.p474c0.p499h.C12242z;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p587d5.C13981h;
/* renamed from: j.a.c0.f.j */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/j.class */
public class C11834j {

    /* renamed from: a */
    public static String[] f26536a;

    /* renamed from: b */
    public static final String f26537b = String.format(Locale.US, "(%s IN (%d, %d, %d, %d, %d))", "type", 1, 4, 6, 5, 2);

    /* renamed from: c */
    public static final String f26538c = String.format(Locale.US, "((%s IN (%d, %d, %d, %d)) AND (%s IN (%d, %d, %d)))", "msg_box", 1, 4, 2, 5, "m_type", 128, 130, 132);

    /* renamed from: d */
    public static final Uri f26539d = Telephony.Threads.CONTENT_URI.buildUpon().appendQueryParameter(FtsOptions.TOKENIZER_SIMPLE, "true").build();

    /* renamed from: e */
    public static final String[] f26540e = {"_id", "recipient_ids"};

    /* renamed from: f */
    public static final Uri f26541f = Uri.parse("content://mms-sms/canonical-address");

    /* renamed from: g */
    public static final String[] f26542g = {"date_sent"};

    /* renamed from: h */
    public static Boolean f26543h = null;

    /* renamed from: i */
    public static final Uri f26544i = Uri.parse("content://mms/part");

    /* renamed from: j */
    public static final C11836b f26545j = new C11836b(-1, -1, null);

    /* renamed from: j.a.c0.f.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/j$a.class */
    public static class C11835a {

        /* renamed from: a */
        public int f26546a;

        /* renamed from: b */
        public C11699j f26547b;
    }

    /* renamed from: j.a.c0.f.j$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/j$b.class */
    public static class C11836b {

        /* renamed from: a */
        public final int f26548a;

        /* renamed from: b */
        public final int f26549b;

        /* renamed from: c */
        public final Uri f26550c;

        /* renamed from: d */
        public final int f26551d;

        public C11836b(int i, int i2, Uri uri) {
            this.f26548a = i;
            this.f26549b = i2;
            this.f26550c = uri;
            this.f26551d = 0;
        }

        public C11836b(int i, int i2, Uri uri, int i3) {
            this.f26548a = i;
            this.f26549b = i2;
            this.f26550c = uri;
            this.f26551d = i3;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static int m8154a() {
        String[] a;
        String format = String.format(Locale.US, "%s AND (%s IN (SELECT %s FROM part WHERE %s))", m8089c(), "_id", "mid", m8091b("ct"));
        ContentResolver contentResolver = AbstractC11516a.m9413n().mo9412a().getContentResolver();
        Cursor query = contentResolver.query(Telephony.Mms.CONTENT_URI, new String[]{"_id"}, format, null, null);
        int i = 0;
        if (query != null) {
            long[] jArr = new long[query.getCount()];
            int i2 = 0;
            while (query.moveToNext()) {
                try {
                    jArr[i2] = query.getLong(0);
                    i2++;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            query.close();
            int length = jArr.length;
            i = 0;
            if (length > 0) {
                int i3 = 0;
                i = 0;
                while (i3 < length) {
                    int i4 = i3 + 128;
                    int min = Math.min(i4, length) - i3;
                    int delete = contentResolver.delete(Telephony.Mms.CONTENT_URI, String.format(Locale.US, "%s IN %s", "_id", m8088c(min)), m8103a(jArr, i3, min));
                    if (C12153d0.m6992a("MessagingApp", 3)) {
                        C12153d0.m6991a("MessagingApp", "deleteMediaMessages: deleting IDs = " + Joiner.m31140a(',').m31141a().join(a) + ", deleted = " + delete);
                    }
                    i += delete;
                    i3 = i4;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public static int m8150a(long j) {
        ContentResolver contentResolver = AbstractC11516a.m9413n().mo9412a().getContentResolver();
        return contentResolver.delete(Telephony.Sms.CONTENT_URI, String.format(Locale.US, "%s AND (%s<=%d)", m8079e(), "date", Long.valueOf(j)), null) + 0 + contentResolver.delete(Telephony.Mms.CONTENT_URI, String.format(Locale.US, "%s AND (%s<=%d)", m8089c(), "date", Long.valueOf(j / 1000)), null);
    }

    /* renamed from: a */
    public static int m8149a(long j, long j2) {
        ContentResolver contentResolver = AbstractC11516a.m9413n().mo9412a().getContentResolver();
        Uri withAppendedId = ContentUris.withAppendedId(Telephony.Threads.CONTENT_URI, j);
        return j2 < Long.MAX_VALUE ? contentResolver.delete(withAppendedId, "date<=?", new String[]{Long.toString(j2)}) : contentResolver.delete(withAppendedId, null, null);
    }

    /* renamed from: a */
    public static int m8143a(Context context, Intent intent) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return intent.getIntExtra("networkType", -1);
    }

    /* renamed from: a */
    public static int m8135a(Context context, MessagePartData messagePartData, int i) {
        C12151d.m7000b(context);
        C12151d.m7000b(messagePartData);
        C12151d.m6999b(C12205r.m6811b(messagePartData.m27569c()) || C12205r.m6804i(messagePartData.m27569c()));
        C12162f0 f0Var = new C12162f0();
        try {
            f0Var.m6949a(messagePartData.m27567q());
            return f0Var.m6951a(9, i);
        } catch (IOException e) {
            C12153d0.m6984c("MessagingApp", "Error extracting duration from " + messagePartData.m27567q(), e);
            return i;
        } finally {
            f0Var.m6948b();
        }
    }

    /* renamed from: a */
    public static int m8132a(Context context, C11699j jVar, int i, MessagePartData messagePartData, int i2, int i3, int i4, String str, String str2) {
        C11708o oVar;
        Uri q = messagePartData.m27567q();
        int width = messagePartData.getWidth();
        int height = messagePartData.getHeight();
        int i5 = i2;
        int i6 = i3;
        if ((height > width) != (i3 > i2)) {
            i6 = i2;
            i5 = i3;
        }
        int b = C12242z.m6553b(context, q);
        int b2 = m8095b(context, q);
        if (b2 <= 0) {
            C12153d0.m6986b("MessagingApp", "Can't get image", new Exception());
            return 0;
        }
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "addPicturePart size: " + b2 + " width: " + width + " widthLimit: " + i5 + " height: " + height + " heightLimit: " + i6);
        }
        if (b2 > i4 || width > i5 || height > i6 || !(b == 0 || b == 1)) {
            oVar = m8151a(i5, i6, i4, width, height, b, q, context, str2);
            if (oVar != null) {
                b2 = oVar.m8485g().length;
            } else {
                OutOfMemoryError outOfMemoryError = new OutOfMemoryError();
                C12153d0.m6986b("MessagingApp", "Can't resize image: not enough memory?", outOfMemoryError);
                throw outOfMemoryError;
            }
        } else {
            if (C12153d0.m6992a("MessagingApp", 2)) {
                C12153d0.m6983d("MessagingApp", "addPicturePart - already sized");
            }
            oVar = new C11708o();
            oVar.m8497a(q);
            oVar.m8488e(str2.getBytes());
        }
        m8112a(oVar, str);
        jVar.m8567a(i, oVar);
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "addPicturePart size: " + b2);
        }
        return b2;
    }

    /* renamed from: a */
    public static int m8131a(Context context, C11699j jVar, MessagePartData messagePartData, String str) {
        Uri q = messagePartData.m27567q();
        String c = messagePartData.m27569c();
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "addPart attachmentUrl: " + q.toString());
        }
        int c2 = (int) m8085c(q);
        m8130a(context, jVar, str, q, c);
        return c2;
    }

    /* renamed from: a */
    public static int m8129a(Context context, C11699j jVar, String str, String str2) {
        C11708o oVar = new C11708o();
        oVar.m8498a(106);
        oVar.m8488e("text/plain".getBytes());
        m8112a(oVar, str2);
        oVar.m8486f(str.getBytes());
        jVar.m8566a(oVar);
        return oVar.m8485g().length;
    }

    /* renamed from: a */
    public static int m8120a(Uri uri) {
        try {
            return AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(uri, null, null);
        } catch (IllegalArgumentException e) {
            C13973d4.m2952a(e);
            return m8092b(uri);
        }
    }

    /* renamed from: a */
    public static int m8109a(String str, String str2, Uri uri, int i, String str3, boolean z) {
        int i2;
        Exception e;
        if (!m8072g(i)) {
            C12153d0.m6981e("MessagingApp", "MmsUtils: can't send SMS without radio");
            return 2;
        }
        try {
            C11841n.C11842a a = C11841n.m8060a(AbstractC11516a.m9413n().mo9412a(), i, str, str2, str3, z, uri);
            if (!a.m8054b()) {
                int a2 = a.m8056a();
                if (a2 == 0) {
                    i2 = 0;
                } else if (a2 == 1) {
                    try {
                        C12153d0.m6987b("MessagingApp", "MmsUtils: SMS temporary failure");
                        i2 = 1;
                    } catch (Exception e2) {
                        e = e2;
                        i2 = 1;
                        C12153d0.m6986b("MessagingApp", "MmsUtils: failed to send SMS " + e, e);
                        return i2;
                    }
                } else if (a2 != 2) {
                    i2 = 2;
                } else {
                    C12153d0.m6987b("MessagingApp", "MmsUtils: SMS permanent failure");
                    i2 = 2;
                }
            } else {
                C12153d0.m6987b("MessagingApp", "MmsUtils: sending SMS timed out");
                i2 = 2;
            }
        } catch (Exception e3) {
            e = e3;
            i2 = 2;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m8107a(boolean z, boolean z2, int i) {
        return z ? (i == 4 || i == 5) ? 8 : 1 : z2 ? 101 : 100;
    }

    /* renamed from: a */
    public static long m8127a(Context context, String str) {
        HashSet hashSet = new HashSet();
        hashSet.add(str);
        try {
            return C11832i.C11833a.m8155a(context, hashSet);
        } catch (IllegalArgumentException e) {
            C12153d0.m6987b("MessagingApp", "MmsUtils: getting thread id failed: " + e);
            return -1L;
        }
    }

    /* renamed from: a */
    public static long m8126a(Context context, List<String> list) {
        if (list == null || list.size() == 0) {
            return -1L;
        }
        try {
            return C11832i.C11833a.m8155a(context, new HashSet(list));
        } catch (IllegalArgumentException e) {
            C12153d0.m6987b("MessagingApp", "MmsUtils: getting thread id failed: " + e);
            return -1L;
        }
    }

    /* renamed from: a */
    public static ContentValues m8123a(Context context, SmsMessage[] smsMessageArr, int i) {
        SmsMessage smsMessage = smsMessageArr[0];
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", smsMessage.getDisplayOriginatingAddress());
        contentValues.put("body", m8102a(smsMessageArr));
        if (m8076f()) {
            contentValues.put("date_sent", Long.valueOf(smsMessage.getTimestampMillis()));
        }
        contentValues.put("protocol", Integer.valueOf(smsMessage.getProtocolIdentifier()));
        if (smsMessage.getPseudoSubject().length() > 0) {
            contentValues.put("subject", smsMessage.getPseudoSubject());
        }
        contentValues.put("reply_path_present", Integer.valueOf(smsMessage.isReplyPathPresent() ? 1 : 0));
        contentValues.put("service_center", smsMessage.getServiceCenterAddress());
        contentValues.put("error_code", Integer.valueOf(i));
        return contentValues;
    }

    /* renamed from: a */
    public static Uri m8148a(ContentResolver contentResolver, Uri uri, int i, String str, String str2, String str3, Long l, boolean z, boolean z2, int i2, int i3, long j) {
        ContentValues contentValues = new ContentValues(7);
        contentValues.put("address", str);
        if (l != null) {
            contentValues.put("date", l);
        }
        contentValues.put("read", Integer.valueOf(z ? 1 : 0));
        contentValues.put("seen", Integer.valueOf(z2 ? 1 : 0));
        contentValues.put("subject", str3);
        contentValues.put("body", str2);
        if (C14017g4.m2804t()) {
            contentValues.put("sub_id", Integer.valueOf(i));
        }
        if (i2 != -1) {
            contentValues.put("status", Integer.valueOf(i2));
        }
        if (i3 != 0) {
            contentValues.put("type", Integer.valueOf(i3));
        }
        if (j != -1) {
            contentValues.put("thread_id", Long.valueOf(j));
        }
        return contentResolver.insert(uri, contentValues);
    }

    /* renamed from: a */
    public static Uri m8140a(Context context, Uri uri, int i, String str, String str2, long j, int i2, int i3, long j2) {
        Uri uri2 = null;
        uri2 = null;
        try {
            Uri a = m8148a(context.getContentResolver(), uri, i, str, str2, null, Long.valueOf(j), true, true, i2, i3, j2);
            uri2 = a;
            if (C12153d0.m6992a("MessagingApp", 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Mmsutils: Inserted SMS message into telephony (type = ");
                sb.append(i3);
                sb.append("), uri: ");
                sb.append(a);
                uri2 = a;
                uri2 = a;
                C12153d0.m6991a("MessagingApp", sb.toString());
                uri2 = a;
            }
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: persist sms message failure " + e, e);
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: persist sms message failure " + e2, e2);
        }
        return uri2;
    }

    /* renamed from: a */
    public static Uri m8134a(Context context, C11695f fVar, int i, String str) {
        Uri uri;
        C11688b e;
        Uri a;
        try {
            a = C11709p.m8473a(context).m8467a(fVar, Telephony.Mms.Sent.CONTENT_URI, i, str, null);
        } catch (C11688b e2) {
            e = e2;
            uri = null;
        }
        try {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("read", (Integer) 1);
            contentValues.put("seen", (Integer) 1);
            C11689c.m8600a(context, context.getContentResolver(), a, contentValues, null, null);
            uri = a;
        } catch (C11688b e3) {
            e = e3;
            uri = a;
            C12153d0.m6986b("MessagingApp", "MmsUtils: persist mms sent message failure " + e, e);
            return uri;
        }
        return uri;
    }

    /* renamed from: a */
    public static Uri m8128a(Context context, C11713t tVar, int i, String str, long j, String str2) {
        Uri uri;
        C11688b e;
        SQLiteException e2;
        try {
            uri = C11709p.m8473a(context).m8467a(tVar, Telephony.Mms.Inbox.CONTENT_URI, i, str, null);
        } catch (SQLiteException e3) {
            e2 = e3;
            uri = null;
        } catch (C11688b e4) {
            e = e4;
            uri = null;
        }
        try {
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("date", Long.valueOf(j));
            contentValues.put("ct_l", str2);
            C11689c.m8600a(context, context.getContentResolver(), uri, contentValues, null, null);
            uri = uri;
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", "MmsUtils: Inserted MMS message into telephony, uri: " + uri);
                uri = uri;
            }
        } catch (SQLiteException e5) {
            e2 = e5;
            C12153d0.m6986b("MessagingApp", "MmsUtils: update mms received message failure " + e2, e2);
            return uri;
        } catch (C11688b e6) {
            e = e6;
            C12153d0.m6986b("MessagingApp", "MmsUtils: persist mms received message failure " + e, e);
            return uri;
        }
        return uri;
    }

    /* renamed from: a */
    public static Uri m8125a(Context context, List<String> list, MessageData messageData, int i, String str, long j) {
        Uri uri;
        C11715v a = m8144a(context, i, (String[]) list.toArray(new String[list.size()]), messageData, false, false, 604800L, 129, j);
        if (a != null) {
            Uri a2 = m8134a(context, a, i, str);
            if (a2 != null) {
                Uri withAppendedId = ContentUris.withAppendedId(Telephony.Mms.CONTENT_URI, ContentUris.parseId(a2));
                uri = withAppendedId;
                if (C12153d0.m6992a("MessagingApp", 3)) {
                    C12153d0.m6991a("MessagingApp", "Mmsutils: Inserted sending MMS message into telephony, uri: " + a2);
                    uri = withAppendedId;
                }
                return uri;
            }
            C12153d0.m6987b("MessagingApp", "insertSendingMmsMessage: failed to persist message into telephony");
        }
        uri = null;
        return uri;
    }

    /* renamed from: a */
    public static SmsMessage m8122a(Intent intent) {
        return SmsMessage.createFromPdu(intent.getByteArrayExtra("pdu"));
    }

    /* renamed from: a */
    public static MessageData m8118a(Uri uri, String str, String str2, String str3) {
        DatabaseMessages.MmsMessage e;
        return (uri == null || (e = m8077e(uri)) == null) ? null : m8116a(e, str, str2, str3, 6);
    }

    /* renamed from: a */
    public static MessageData m8116a(DatabaseMessages.MmsMessage mmsMessage, String str, String str2, String str3, int i) {
        C12151d.m7000b(mmsMessage);
        MessageData a = MessageData.m27615a(mmsMessage.mo27454c(), str2, str3, str, mmsMessage.f11319p == 130, i, mmsMessage.f11317n, mmsMessage.f11318o, mmsMessage.f11313j, mmsMessage.f11307d, mmsMessage.f11316m, mmsMessage.f11315l, mmsMessage.m27474r(), i < 100 ? mmsMessage.f11324u : mmsMessage.f11323t, mmsMessage.f11320q, mmsMessage.f11311h, mmsMessage.f11310g);
        for (DatabaseMessages.MmsPart mmsPart : mmsMessage.f11325v) {
            MessagePartData a2 = m8115a(mmsPart);
            if (a2 != null) {
                a.m27623a(a2);
            }
        }
        if (!a.m27643C().iterator().hasNext()) {
            a.m27623a(MessagePartData.m27582D());
        }
        return a;
    }

    /* renamed from: a */
    public static MessagePartData m8115a(DatabaseMessages.MmsPart mmsPart) {
        MessagePartData messagePartData;
        if (mmsPart.m27464q()) {
            AbstractC12170i.m6941a().mo6919a("bugle_mms_text_limit", 2000);
            String str = mmsPart.f11338e;
            String str2 = str;
            if (str != null) {
                str2 = str;
                if (str.length() > 2000) {
                    str2 = str.substring(0, 2000);
                }
            }
            messagePartData = MessagePartData.m27568c(str2);
        } else {
            messagePartData = mmsPart.m27465c() ? MessagePartData.m27576a(mmsPart.f11337d, mmsPart.m27470a(), -1, -1) : null;
        }
        return messagePartData;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0194  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.messaging.sms.DatabaseMessages.MmsMessage m8124a(android.content.Context r7, byte[] r8, int r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8124a(android.content.Context, byte[], int, java.lang.String):gogolook.callgogolook2.messaging.sms.DatabaseMessages$MmsMessage");
    }

    /* renamed from: a */
    public static C11695f m8105a(byte[] bArr) {
        C11695f fVar;
        try {
            fVar = new C11707n(bArr, true).m8520a();
        } catch (RuntimeException e) {
            C12153d0.m6990a("MessagingApp", "parsePduForAnyCarrier: Failed to parse PDU with content disposition", e);
            fVar = null;
        }
        C11695f fVar2 = fVar;
        if (fVar == null) {
            try {
                fVar2 = new C11707n(bArr, false).m8520a();
            } catch (RuntimeException e2) {
                C12153d0.m6990a("MessagingApp", "parsePduForAnyCarrier: Failed to parse PDU without content disposition", e2);
                fVar2 = fVar;
            }
        }
        return fVar2;
    }

    /* renamed from: a */
    public static C11708o m8151a(int i, int i2, int i3, int i4, int i5, int i6, Uri uri, Context context, String str) {
        C11708o oVar = new C11708o();
        byte[] a = C12242z.C12243a.m6549a(i4, i5, i6, i, i2, i3, uri, context, str);
        if (a != null) {
            oVar.m8486f(a);
            oVar.m8488e((C12242z.m6554a(str, uri) ? "image/gif" : "image/jpeg").getBytes());
            return oVar;
        } else if (!C12153d0.m6992a("MessagingApp", 2)) {
            return null;
        } else {
            C12153d0.m6983d("MessagingApp", "Resize image failed.");
            return null;
        }
    }

    /* renamed from: a */
    public static C11715v m8144a(Context context, int i, String[] strArr, MessageData messageData, boolean z, boolean z2, long j, int i2, long j2) {
        C11715v vVar;
        C12151d.m7000b(context);
        if (strArr == null || strArr.length < 1) {
            throw new IllegalArgumentException("MMS sendReq no recipient");
        }
        String[] strArr2 = new String[strArr.length];
        for (int i3 = 0; i3 < strArr.length; i3++) {
            String str = strArr[i3];
            if (C12221w.m6723b(strArr[i3])) {
                strArr2[i3] = str;
            } else {
                strArr2[i3] = m8080d(str);
            }
        }
        try {
            vVar = m8096b(context, i, strArr2, messageData, z, z2, j, i2, j2);
        } catch (C11687a e) {
            C12153d0.m6987b("MessagingApp", "InvalidHeaderValue creating sendReq PDU");
            vVar = null;
        } catch (OutOfMemoryError e2) {
            C12153d0.m6987b("MessagingApp", "Out of memory error creating sendReq PDU");
            vVar = null;
        }
        return vVar;
    }

    /* renamed from: a */
    public static C11835a m8136a(Context context, MessageData messageData, int i) {
        C11699j jVar = new C11699j();
        int i2 = 0;
        int i3 = 0;
        for (MessagePartData messagePartData : messageData.m27643C()) {
            if (messagePartData.m27562v()) {
                String c = messagePartData.m27569c();
                if (C12205r.m6809d(c)) {
                    i2++;
                } else {
                    i3 = C12205r.m6805h(c) ? i3 + m8095b(context, messagePartData.m27567q()) : (int) (i3 + m8085c(messagePartData.m27567q()));
                }
            }
        }
        long j = i2 * 16384;
        int g = C11828f.m8193a(i).m8186g();
        double d = 1.0d;
        if (j > 0) {
            d = Math.max(1.0d, ((g - i3) - 1024) / j);
        }
        int i4 = (int) (d * 16384.0d);
        int f = C11828f.m8193a(i).m8187f();
        int e = C11828f.m8193a(i).m8188e();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i5 = 0;
        int i6 = 0;
        for (MessagePartData messagePartData2 : messageData.m27643C()) {
            if (messagePartData2.m27562v()) {
                String c2 = messagePartData2.m27569c();
                if (C12205r.m6809d(c2)) {
                    boolean a = C12242z.m6554a(c2, messagePartData2.m27567q());
                    String str = c2;
                    if (a) {
                        str = "image/gif";
                    }
                    String format = String.format(a ? "image%06d.gif" : "image%06d.jpg", Integer.valueOf(i5));
                    sb.append(String.format("<par dur=\"5000ms\"><img src=\"%s\" region=\"Image\" /></par>", format));
                    i6 += m8132a(context, jVar, i5, messagePartData2, f, e, i4, format, str);
                } else if (C12205r.m6804i(c2)) {
                    String format2 = String.format("video%06d.mp4", Integer.valueOf(i5));
                    i6 += m8086c(context, jVar, messagePartData2, format2);
                    sb.append(String.format("<par dur=\"%2$dms\"><video src=\"%1$s\" dur=\"%2$dms\" region=\"Image\" /></par>", format2, Integer.valueOf(m8135a(context, messagePartData2, 5000))));
                } else {
                    if (C12205r.m6805h(c2)) {
                        String format3 = String.format("contact%06d.vcf", Integer.valueOf(i5));
                        i6 += m8093b(context, jVar, messagePartData2, format3);
                        sb.append(String.format("<par dur=\"5000ms\"><ref src=\"%s\" /></par>", format3));
                    } else if (C12205r.m6811b(c2)) {
                        String format4 = String.format("recording%06d.amr", Integer.valueOf(i5));
                        i6 += m8131a(context, jVar, messagePartData2, format4);
                        int a2 = m8135a(context, messagePartData2, -1);
                        C12151d.m6999b(a2 != -1);
                        sb.append(String.format("<par dur=\"%2$dms\"><audio src=\"%1$s\" dur=\"%2$dms\" /></par>", format4, Integer.valueOf(a2)));
                    } else {
                        String format5 = String.format("other%06d.dat", Integer.valueOf(i5));
                        i6 += m8131a(context, jVar, messagePartData2, format5);
                        sb.append(String.format("<par dur=\"5000ms\"><ref src=\"%s\" /></par>", format5));
                        z2 = z2;
                        i5++;
                    }
                    z2 = true;
                    i5++;
                }
                z = true;
                i5++;
            }
            if (!TextUtils.isEmpty(messagePartData2.m27563u())) {
                z3 = true;
            }
        }
        int i7 = i6;
        if (z3) {
            String format6 = String.format("text.%06d.txt", Integer.valueOf(i5));
            i7 = i6 + m8129a(context, jVar, messageData.m27588x(), format6);
            sb.append(String.format("<par dur=\"5000ms\"><text src=\"%s\" region=\"Text\" /></par>", format6));
        }
        m8113a(jVar, m8106a(z, z2, z3), sb.toString());
        C11835a aVar = new C11835a();
        aVar.f26547b = jVar;
        aVar.f26546a = i7;
        return aVar;
    }

    /* renamed from: a */
    public static C11836b m8147a(Context context, int i, Uri uri, Bundle bundle) {
        int i2;
        int i3 = 2;
        if (!m8075f(i)) {
            C12153d0.m6981e("MessagingApp", "MmsUtils: failed to send message, no data available");
            return new C11836b(2, 0, uri, 8);
        }
        try {
            C11715v vVar = (C11715v) C11709p.m8473a(context).m8468a(uri);
            if (vVar == null) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Sending MMS was deleted; uri = " + uri);
                return new C11836b(3, 0, uri);
            }
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", String.format("MmsUtils: Sending MMS, message uri: %s", uri));
            }
            bundle.putInt("sub_id", i);
            C11831h.m8169a(context, i, uri, vVar, bundle);
            return f26545j;
        } catch (C11687a e) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: failed to send message " + e, e);
            i2 = 0;
            return new C11836b(i3, i2, uri);
        } catch (C11688b e2) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: failed to send message " + e2, e2);
            i2 = 0;
            return new C11836b(i3, i2, uri);
        } catch (C11830g e3) {
            i3 = e3.f26531a;
            i2 = e3.f26532b;
            C12153d0.m6986b("MessagingApp", "MmsUtils: failed to send message " + e3, e3);
            return new C11836b(i3, i2, uri);
        } catch (IllegalArgumentException e4) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: invalid message to send " + e4, e4);
            i2 = 0;
            return new C11836b(i3, i2, uri);
        }
    }

    /* renamed from: a */
    public static C11836b m8139a(Context context, Uri uri, int i, String str, String str2, String str3, boolean z, long j, Bundle bundle) {
        int i2;
        C11830g e;
        C11687a e2;
        boolean z2;
        if (TextUtils.isEmpty(str3)) {
            LogManager.m28579a("MessagingApp", "MmsUtils: Download from empty content location URL");
            return new C11836b(3, 0, null);
        } else if (!m8075f(i)) {
            LogManager.m28579a("MessagingApp", "MmsUtils: failed to download message, no data available");
            return new C11836b(2, 0, null, 8);
        } else {
            try {
                z2 = true;
            } catch (C11687a e3) {
                e2 = e3;
            } catch (C11830g e4) {
                e = e4;
            }
            try {
                if (C12219v.m6735a() && MediaScratchFileProvider.m27782c(Uri.parse(str3))) {
                    return m8138a(context, uri, i, str, str2, str3, z, j, m8090b(C12219v.m6730a(Uri.parse(str3).getPathSegments().get(1))));
                }
                if (!C14017g4.m2804t()) {
                    if (i != -1) {
                        z2 = false;
                    }
                    C12151d.m6999b(z2);
                } else if (i < 0) {
                    LogManager.m28579a("MessagingApp", "MmsUtils: Incoming MMS came from unknown SIM");
                    throw new C11830g(3, "Message from unknown SIM");
                }
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putParcelable("notification_uri", uri);
                bundle.putInt("sub_id", i);
                bundle.putString("sub_phone_number", str);
                bundle.putString("transaction_id", str2);
                bundle.putString("content_location", str3);
                bundle.putBoolean("auto_download", z);
                bundle.putLong("received_timestamp", j);
                C11831h.m8167a(context, i, str3, bundle);
                return f26545j;
            } catch (C11687a e5) {
                e2 = e5;
                LogManager.m28579a("MessagingApp", "MmsUtils: failed to download message " + uri + ", error=" + e2);
                i2 = 2;
                return new C11836b(i2, 0, null);
            } catch (C11830g e6) {
                e = e6;
                LogManager.m28579a("MessagingApp", "MmsUtils: failed to download message " + uri + ", error=" + e);
                i2 = e.f26531a;
                return new C11836b(i2, 0, null);
            }
        }
    }

    /* renamed from: a */
    public static C11836b m8138a(Context context, Uri uri, int i, String str, String str2, String str3, boolean z, long j, C11713t tVar) {
        int i2;
        Uri uri2;
        byte[] a = m8110a(str2, "UTF-8");
        int f = tVar.m8452f();
        if (f == 128) {
            i2 = 0;
        } else if (f < 192 || f >= 224) {
            C12153d0.m6987b("MessagingApp", "MmsUtils: failed to retrieve message; retrieveStatus: " + f);
            i2 = 3;
        } else {
            i2 = 1;
        }
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("retr_st", Integer.valueOf(tVar.m8452f()));
        C11689c.m8600a(context, context.getContentResolver(), uri, contentValues, null, null);
        if (i2 == 0) {
            if (z) {
                m8145a(context, i, a, str3, 129);
            } else {
                m8146a(context, i, a, str3);
            }
            uri2 = ContentUris.withAppendedId(Telephony.Mms.CONTENT_URI, ContentUris.parseId(m8128a(context, tVar, i, str, j, str3)));
        } else {
            if (i2 != 1 && i2 == 2 && z) {
                m8145a(context, i, a, str3, 131);
            }
            uri2 = null;
        }
        return new C11836b(i2, f, uri2);
    }

    /* renamed from: a */
    public static C11836b m8137a(Context context, Uri uri, C11714u uVar) {
        int i;
        int d = uVar.m8449d();
        ContentValues contentValues = new ContentValues(2);
        contentValues.put("resp_st", Integer.valueOf(d));
        byte[] c = uVar.m8450c();
        if (c != null && c.length > 0) {
            contentValues.put("m_id", C11709p.m8460a(c));
        }
        C11689c.m8600a(context, context.getContentResolver(), uri, contentValues, null, null);
        if (d == 128) {
            i = 0;
        } else {
            i = 1;
            if (d != 192) {
                i = 1;
                if (d != 195) {
                    if (d == 196) {
                        i = 1;
                    } else {
                        C12153d0.m6987b("MessagingApp", "MmsUtils: failed to send message; respStatus = " + String.format("0x%X", Integer.valueOf(d)));
                        i = 2;
                    }
                }
            }
        }
        return new C11836b(i, d, uri);
    }

    /* renamed from: a */
    public static Long m8117a(SmsMessage smsMessage, long j) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(2011, 8, 18);
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeInMillis(j);
        if (gregorianCalendar2.before(gregorianCalendar)) {
            j = smsMessage.getTimestampMillis();
        }
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public static String m8121a(Resources resources, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (f26536a == null) {
            f26536a = resources.getStringArray(R$array.empty_subject_strings);
        }
        for (String str2 : f26536a) {
            if (str.equalsIgnoreCase(str2)) {
                return null;
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m8114a(p459j.p460a.p474c0.p480d.p481d.C11695f r4) {
        /*
            r0 = r4
            if (r0 == 0) goto L_0x003c
            r0 = r4
            boolean r0 = r0 instanceof p459j.p460a.p474c0.p480d.p481d.C11713t
            if (r0 == 0) goto L_0x003c
            r0 = r4
            j.a.c0.d.d.t r0 = (p459j.p460a.p474c0.p480d.p481d.C11713t) r0
            r4 = r0
            r0 = r4
            byte[] r0 = r0.m8453e()
            if (r0 == 0) goto L_0x0026
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r4
            byte[] r2 = r2.m8453e()
            r1.<init>(r2)
            r4 = r0
            goto L_0x003e
        L_0x0026:
            r0 = r4
            byte[] r0 = r0.m8451g()
            if (r0 == 0) goto L_0x003c
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r4
            byte[] r2 = r2.m8451g()
            r1.<init>(r2)
            r4 = r0
            goto L_0x003e
        L_0x003c:
            r0 = 0
            r4 = r0
        L_0x003e:
            r0 = r4
            r5 = r0
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x004e
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
            r5 = r0
        L_0x004e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8114a(j.a.c0.d.d.f):java.lang.String");
    }

    /* renamed from: a */
    public static String m8108a(List<String> list, String str) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (list != null && list.size() == 1) {
            return list.get(0);
        }
        Cursor a2 = C11689c.m8598a(a, a.getContentResolver(), Uri.withAppendedPath(Uri.parse(str), TextSearchResultEntry.ADDRESS), new String[]{"address", MmsBlockLogRealmObject.ADDRESS_CHARSET}, "type=137", null, null);
        if (a2 == null) {
            return null;
        }
        try {
            if (a2.moveToFirst()) {
                return DatabaseMessages.C4673c.m27453a(a2);
            }
            return null;
        } finally {
            a2.close();
        }
    }

    /* renamed from: a */
    public static String m8106a(boolean z, boolean z2, boolean z3) {
        if (z) {
            return z3 ? "<smil><head><layout><root-layout/><region id=\"Image\" fit=\"meet\" top=\"0\" left=\"0\" height=\"80%%\" width=\"100%%\"/><region id=\"Text\" top=\"80%%\" left=\"0\" height=\"20%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>" : "<smil><head><layout><root-layout/><region id=\"Image\" fit=\"meet\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>";
        }
        String str = "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>";
        if (z2) {
            str = z3 ? "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>" : "<smil><head><layout><root-layout/></layout></head><body>%s</body></smil>";
        }
        return str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0041 -> B:11:0x0033). Please submit an issue!!! */
    /* renamed from: a */
    public static String m8102a(SmsMessage[] smsMessageArr) {
        if (smsMessageArr.length == 1) {
            return m8084c(smsMessageArr[0].getDisplayMessageBody());
        }
        StringBuilder sb = new StringBuilder();
        for (SmsMessage smsMessage : smsMessageArr) {
            try {
                sb.append(smsMessage.getDisplayMessageBody());
            } catch (NullPointerException e) {
            }
        }
        return m8084c(sb.toString());
    }

    /* renamed from: a */
    public static List<String> m8111a(String str) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(" ")) {
            try {
                long parseLong = Long.parseLong(str2);
                if (parseLong < 0) {
                    C12153d0.m6987b("MessagingApp", "MmsUtils.getAddresses: invalid id " + parseLong);
                } else {
                    Cursor cursor = null;
                    try {
                        cursor = a.getContentResolver().query(ContentUris.withAppendedId(f26541f, parseLong), null, null, null, null);
                    } catch (Exception e) {
                        C12153d0.m6986b("MessagingApp", "MmsUtils.getAddresses: query failed for id " + parseLong, e);
                    }
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                String string = cursor.getString(0);
                                if (!TextUtils.isEmpty(string)) {
                                    arrayList.add(string);
                                } else {
                                    C12153d0.m6981e("MessagingApp", "Canonical MMS/SMS address is empty for id: " + parseLong);
                                }
                            }
                        } finally {
                            cursor.close();
                        }
                    } else {
                        continue;
                    }
                }
            } catch (NumberFormatException e2) {
                C12153d0.m6986b("MessagingApp", "MmsUtils.getAddresses: invalid id. " + e2, e2);
            }
        }
        if (arrayList.isEmpty()) {
            C12153d0.m6981e("MessagingApp", "No MMS addresses found from ids string [" + str + "]");
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m8146a(Context context, int i, byte[] bArr, String str) {
        try {
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", "MmsUtils: Sending M-Acknowledge.ind for received MMS");
            }
            if (str == null) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Can't send AckInd; contentLocation is null");
            } else if (bArr == null) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Can't send AckInd; transaction id is null");
            } else if (!m8075f(i)) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Can't send AckInd; no data available");
            } else {
                C11831h.m8166a(context, i, bArr, str);
            }
        } catch (C11687a e) {
            C12153d0.m6986b("MessagingApp", "sendAcknowledgeForMmsDownload: failed to retrieve message " + e, e);
        } catch (C11830g e2) {
            C12153d0.m6986b("MessagingApp", "sendAcknowledgeForMmsDownload: failed to retrieve message " + e2, e2);
        }
    }

    /* renamed from: a */
    public static void m8145a(Context context, int i, byte[] bArr, String str, int i2) {
        try {
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", "MmsUtils: Sending M-NotifyResp.ind for received MMS, status: " + String.format("0x%X", Integer.valueOf(i2)));
            }
            if (str == null) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Can't send NotifyResp; contentLocation is null");
            } else if (bArr == null) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Can't send NotifyResp; transaction id is null");
            } else if (!m8075f(i)) {
                C12153d0.m6981e("MessagingApp", "MmsUtils: Can't send NotifyResp; no data available");
            } else {
                C11831h.m8165a(context, i, bArr, str, i2);
            }
        } catch (C11687a e) {
            C12153d0.m6986b("MessagingApp", "sendNotifyResponseForMmsDownload: failed to retrieve message " + e, e);
        } catch (C11830g e2) {
            C12153d0.m6986b("MessagingApp", "sendNotifyResponseForMmsDownload: failed to retrieve message " + e2, e2);
        }
    }

    /* renamed from: a */
    public static void m8142a(Context context, Uri uri) {
        ContentValues contentValues = new ContentValues(1);
        contentValues.putNull("st");
        C11689c.m8600a(context, context.getContentResolver(), uri, contentValues, null, null);
    }

    /* renamed from: a */
    public static void m8130a(Context context, C11699j jVar, String str, Uri uri, String str2) {
        C11708o oVar = new C11708o();
        oVar.m8497a(uri);
        oVar.m8488e(str2.getBytes());
        m8112a(oVar, str);
        jVar.m8566a(oVar);
    }

    /* renamed from: a */
    public static void m8119a(Uri uri, int i, long j) {
        if (uri != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", Integer.valueOf(i));
            if (m8076f()) {
                contentValues.put("date_sent", Long.valueOf(j));
            }
            AbstractC11516a.m9413n().mo9412a().getContentResolver().update(uri, contentValues, null, null);
        }
    }

    /* renamed from: a */
    public static void m8113a(C11699j jVar, String str, String str2) {
        C11708o oVar = new C11708o();
        oVar.m8494b("smil".getBytes());
        oVar.m8492c("smil.xml".getBytes());
        oVar.m8488e("application/smil".getBytes());
        oVar.m8486f(String.format(str, str2).getBytes());
        jVar.m8567a(0, oVar);
    }

    /* renamed from: a */
    public static void m8112a(C11708o oVar, String str) {
        oVar.m8492c(str.getBytes());
        int lastIndexOf = str.lastIndexOf(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        if (lastIndexOf != -1) {
            str = str.substring(0, lastIndexOf);
        }
        oVar.m8494b(str.getBytes());
    }

    /* renamed from: a */
    public static void m8104a(byte[] bArr, C11695f fVar) {
        if (bArr != null && bArr.length >= 1) {
            File a = C12219v.m6729a("mmsdump-" + m8114a(fVar), true);
            if (a != null) {
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(a));
                    bufferedOutputStream.write(bArr);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    C12219v.m6731a(a);
                } catch (IOException e) {
                    C12153d0.m6986b("MessagingApp", "dumpPdu: " + e, e);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (m8069j() != false) goto L_0x0021;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8153a(int r3) {
        /*
            boolean r0 = m8070i()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()
            r1 = r3
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = p459j.p460a.p582w0.C14108o4.m2502a(r0, r1)
            if (r0 == 0) goto L_0x0021
            r0 = r5
            r6 = r0
            boolean r0 = m8069j()
            if (r0 == 0) goto L_0x0023
        L_0x0021:
            r0 = 1
            r6 = r0
        L_0x0023:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8153a(int):boolean");
    }

    /* renamed from: a */
    public static boolean m8152a(int i, int i2) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        return AbstractC12178k.m6912b().mo6906a(resources.getString(i), resources.getBoolean(i2));
    }

    /* renamed from: a */
    public static boolean m8141a(Context context, Uri uri, int i, long j) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            ContentValues contentValues = new ContentValues();
            long j2 = j / 1000;
            contentValues.put("msg_box", Integer.valueOf(i));
            contentValues.put("date", Long.valueOf(j2));
            if (contentResolver.update(uri, contentValues, null, null) != 1) {
                return false;
            }
            if (!C12153d0.m6992a("MessagingApp", 3)) {
                return true;
            }
            C12153d0.m6991a("MessagingApp", "Mmsutils: Updated sending MMS " + uri + "; box = " + i + ", date = " + j2 + " (secs since epoch)");
            return true;
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: update mms message failure " + e, e);
            return false;
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: update mms message failure " + e2, e2);
            return false;
        }
    }

    /* renamed from: a */
    public static byte[] m8110a(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            C12153d0.m6986b("MessagingApp", "MmsUtils.stringToBytes: " + e, e);
            return str.getBytes();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0137  */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.String[]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] m8133a(android.content.Context r10, p459j.p460a.p474c0.p480d.p481d.C11697h r11) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8133a(android.content.Context, j.a.c0.d.d.h):java.lang.String[]");
    }

    /* renamed from: a */
    public static String[] m8103a(long[] jArr, int i, int i2) {
        if (i2 <= 0) {
            return null;
        }
        String[] strArr = new String[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = Long.toString(jArr[i + i3]);
        }
        return strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m8099b(int r3, int r4) {
        /*
            r0 = r4
            r1 = 135(0x87, float:1.89E-43)
            if (r0 == r1) goto L_0x0086
            r0 = r4
            r1 = 136(0x88, float:1.9E-43)
            if (r0 == r1) goto L_0x007f
            r0 = r4
            r1 = 193(0xc1, float:2.7E-43)
            if (r0 == r1) goto L_0x0078
            r0 = r4
            r1 = 229(0xe5, float:3.21E-43)
            if (r0 == r1) goto L_0x0086
            r0 = r4
            r1 = 10000(0x2710, float:1.4013E-41)
            if (r0 == r1) goto L_0x0071
            r0 = r4
            switch(r0) {
                case 130: goto L_0x006a;
                case 131: goto L_0x0063;
                case 132: goto L_0x0078;
                default: goto L_0x0040;
            }
        L_0x0040:
            r0 = r4
            switch(r0) {
                case 225: goto L_0x006a;
                case 226: goto L_0x0063;
                case 227: goto L_0x0078;
                default: goto L_0x005c;
            }
        L_0x005c:
            r0 = 2131887554(0x7f1205c2, float:1.9409718E38)
            r3 = r0
            goto L_0x008a
        L_0x0063:
            r0 = 2131887567(0x7f1205cf, float:1.9409745E38)
            r3 = r0
            goto L_0x008a
        L_0x006a:
            r0 = 2131887568(0x7f1205d0, float:1.9409747E38)
            r3 = r0
            goto L_0x008a
        L_0x0071:
            r0 = 2131887569(0x7f1205d1, float:1.9409749E38)
            r3 = r0
            goto L_0x008a
        L_0x0078:
            r0 = 2131887565(0x7f1205cd, float:1.940974E38)
            r3 = r0
            goto L_0x008a
        L_0x007f:
            r0 = 2131887570(0x7f1205d2, float:1.940975E38)
            r3 = r0
            goto L_0x008a
        L_0x0086:
            r0 = 2131887566(0x7f1205ce, float:1.9409743E38)
            r3 = r0
        L_0x008a:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8099b(int, int):int");
    }

    /* renamed from: b */
    public static int m8095b(Context context, Uri uri) {
        StringBuilder sb;
        IOException e;
        int i = 0;
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                inputStream2 = context.getContentResolver().openInputStream(uri);
                if (inputStream2 != null) {
                    try {
                        i = inputStream2.available();
                    } catch (IOException e2) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("getDataLength couldn't stream: ");
                        sb2.append(uri);
                        inputStream2 = inputStream2;
                        inputStream = inputStream2;
                        C12153d0.m6986b("MessagingApp", sb2.toString(), e2);
                        if (inputStream2 == null) {
                            return 0;
                        }
                        try {
                            inputStream2.close();
                            return 0;
                        } catch (IOException e3) {
                            e = e3;
                            sb = new StringBuilder();
                            sb.append("getDataLength couldn't close: ");
                            sb.append(uri);
                            C12153d0.m6986b("MessagingApp", sb.toString(), e);
                            return 0;
                        }
                    }
                }
                return i;
            } finally {
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e4) {
                        C12153d0.m6986b("MessagingApp", "getDataLength couldn't close: " + uri, e4);
                    }
                }
            }
        } catch (FileNotFoundException e5) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getDataLength couldn't open: ");
            sb3.append(uri);
            C12153d0.m6986b("MessagingApp", sb3.toString(), e5);
            if (inputStream == null) {
                return 0;
            }
            try {
                inputStream.close();
                return 0;
            } catch (IOException e6) {
                e = e6;
                sb = new StringBuilder();
                sb.append("getDataLength couldn't close: ");
                sb.append(uri);
                C12153d0.m6986b("MessagingApp", sb.toString(), e);
                return 0;
            }
        }
    }

    /* renamed from: b */
    public static int m8093b(Context context, C11699j jVar, MessagePartData messagePartData, String str) {
        Uri q = messagePartData.m27567q();
        String c = messagePartData.m27569c();
        int b = m8095b(context, q);
        if (b <= 0) {
            C12153d0.m6986b("MessagingApp", "Can't get vcard", new Exception());
            return 0;
        }
        m8130a(context, jVar, str, q, c);
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "addVCardPart size: " + b);
        }
        return b;
    }

    /* renamed from: b */
    public static int m8092b(Uri uri) {
        return AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(ContentUris.withAppendedId(Telephony.Sms.CONTENT_URI, Long.parseLong(uri.getLastPathSegment())), null, null);
    }

    /* renamed from: b */
    public static LongSparseArray<List<String>> m8101b() {
        List<String> a;
        LongSparseArray<List<String>> longSparseArray = new LongSparseArray<>();
        LongSparseArray<String> d = m8083d();
        for (int i = 0; i < d.size(); i++) {
            long keyAt = d.keyAt(i);
            String str = d.get(keyAt);
            if (!TextUtils.isEmpty(str) && (a = m8111a(str)) != null && a.size() > 0) {
                longSparseArray.put(keyAt, a);
            }
        }
        return longSparseArray;
    }

    /* renamed from: b */
    public static C11713t m8090b(byte[] bArr) throws C11830g {
        C11695f a = m8105a(bArr);
        if (a != null && (a instanceof C11713t)) {
            return (C11713t) a;
        }
        C12153d0.m6987b("MessagingApp", "receiveFromDumpFile: Parsing retrieved PDU failure");
        throw new C11830g(2, "Failed reading dump file");
    }

    /* renamed from: b */
    public static C11715v m8096b(Context context, int i, String[] strArr, MessageData messageData, boolean z, boolean z2, long j, int i2, long j2) throws C11687a {
        C11715v vVar = new C11715v();
        String a = AbstractC12181l0.m6895b(i).m6897a(true);
        if (!TextUtils.isEmpty(a)) {
            vVar.m8582a(new C11694e(a));
        }
        C11694e[] a2 = C11694e.m8590a(strArr);
        if (a2 != null) {
            vVar.m8447a(a2);
        }
        if (!TextUtils.isEmpty(messageData.m27586z())) {
            vVar.m8577b(new C11694e(messageData.m27586z()));
        }
        vVar.m8579a(j2 / 1000);
        C11835a a3 = m8136a(context, messageData, i);
        vVar.m8578a(a3.f26547b);
        vVar.m8444c(a3.f26546a);
        vVar.m8445b(UserProfile.CARDCATE_NAME_PERSONAL.getBytes());
        vVar.m8446b(j);
        vVar.m8575c(i2);
        int i3 = 128;
        vVar.m8441d(z ? 128 : 129);
        if (!z2) {
            i3 = 129;
        }
        vVar.m8440e(i3);
        return vVar;
    }

    /* renamed from: b */
    public static final String m8100b(int i) {
        if (i == 0) {
            return "SUCCEEDED";
        }
        if (i == 1) {
            return "AUTO_RETRY";
        }
        if (i == 2) {
            return "MANUAL_RETRY";
        }
        if (i == 3) {
            return "NO_RETRY";
        }
        return String.valueOf(i) + " (check MmsUtils)";
    }

    /* renamed from: b */
    public static String m8098b(long j) {
        Cursor query;
        if (j <= 0 || (query = AbstractC11516a.m9413n().mo9412a().getContentResolver().query(f26539d, f26540e, "_id=?", new String[]{String.valueOf(j)}, null)) == null) {
            return null;
        }
        try {
            if (query.moveToFirst()) {
                return query.getString(1);
            }
            return null;
        } finally {
            query.close();
        }
    }

    /* renamed from: b */
    public static String m8091b(String str) {
        return String.format(Locale.US, "((%s LIKE '%s') OR (%s LIKE '%s') OR (%s LIKE '%s') OR (%s='%s'))", str, "image/%", str, "video/%", str, "audio/%", str, "application/ogg");
    }

    /* renamed from: b */
    public static void m8097b(long j, long j2) {
        ContentResolver contentResolver = AbstractC11516a.m9413n().mo9412a().getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("read", (Integer) 1);
        contentValues.put("seen", (Integer) 1);
        contentResolver.update(Telephony.Sms.CONTENT_URI, contentValues, String.format(Locale.US, "%s=%d AND %s<=%d AND %s=0", "thread_id", Long.valueOf(j), "date", Long.valueOf(j2), "read"), null);
        contentResolver.update(Telephony.Mms.CONTENT_URI, contentValues, String.format(Locale.US, "%s=%d AND %s<=%d AND %s=0", "thread_id", Long.valueOf(j), "date", Long.valueOf(j2 / 1000), "read"), null);
    }

    /* renamed from: b */
    public static boolean m8094b(Context context, Uri uri, int i, long j) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put("date", Long.valueOf(j));
            if (contentResolver.update(uri, contentValues, null, null) != 1) {
                return false;
            }
            if (!C12153d0.m6992a("MessagingApp", 3)) {
                return true;
            }
            C12153d0.m6991a("MessagingApp", "Mmsutils: Updated sending SMS " + uri + "; type = " + i + ", date = " + j + " (millis since epoch)");
            return true;
        } catch (SQLiteException e) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: update sms message failure " + e, e);
            return false;
        } catch (IllegalArgumentException e2) {
            C12153d0.m6986b("MessagingApp", "MmsUtils: update sms message failure " + e2, e2);
            return false;
        }
    }

    /* renamed from: c */
    public static int m8086c(Context context, C11699j jVar, MessagePartData messagePartData, String str) {
        Uri q = messagePartData.m27567q();
        String c = messagePartData.m27569c();
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "addPart attachmentUrl: " + q.toString());
        }
        String str2 = c;
        if (TextUtils.isEmpty(c)) {
            str2 = "video/3gpp2";
        }
        m8130a(context, jVar, str, q, str2);
        return (int) m8085c(q);
    }

    /* renamed from: c */
    public static long m8085c(Uri uri) {
        StringBuilder sb;
        AssetFileDescriptor assetFileDescriptor = null;
        AssetFileDescriptor assetFileDescriptor2 = null;
        try {
            try {
                AssetFileDescriptor openAssetFileDescriptor = AbstractC11516a.m9413n().mo9412a().getContentResolver().openAssetFileDescriptor(uri, C3496r.f6031a);
                if (openAssetFileDescriptor != null) {
                    assetFileDescriptor2 = openAssetFileDescriptor;
                    assetFileDescriptor = openAssetFileDescriptor;
                    long statSize = openAssetFileDescriptor.getParcelFileDescriptor().getStatSize();
                    if (openAssetFileDescriptor != null) {
                        try {
                            openAssetFileDescriptor.close();
                        } catch (IOException e) {
                            C12153d0.m6986b("MessagingApp", "MmsUtils.getMediaFileSize: failed to close " + e, e);
                        }
                    }
                    return statSize;
                } else if (openAssetFileDescriptor == null) {
                    return 0L;
                } else {
                    try {
                        openAssetFileDescriptor.close();
                        return 0L;
                    } catch (IOException e2) {
                        e = e2;
                        sb = new StringBuilder();
                        sb.append("MmsUtils.getMediaFileSize: failed to close ");
                        sb.append(e);
                        C12153d0.m6986b("MessagingApp", sb.toString(), e);
                        return 0L;
                    }
                }
            } catch (Throwable th) {
                if (assetFileDescriptor2 != null) {
                    try {
                        assetFileDescriptor2.close();
                    } catch (IOException e3) {
                        C12153d0.m6986b("MessagingApp", "MmsUtils.getMediaFileSize: failed to close " + e3, e3);
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("MmsUtils.getMediaFileSize: cound not find media file: ");
            sb2.append(e4);
            C12153d0.m6986b("MessagingApp", sb2.toString(), e4);
            if (assetFileDescriptor == null) {
                return 0L;
            }
            try {
                assetFileDescriptor.close();
                return 0L;
            } catch (IOException e5) {
                e = e5;
                sb = new StringBuilder();
                sb.append("MmsUtils.getMediaFileSize: failed to close ");
                sb.append(e);
                C12153d0.m6986b("MessagingApp", sb.toString(), e);
                return 0L;
            }
        }
    }

    /* renamed from: c */
    public static String m8089c() {
        return f26538c;
    }

    /* renamed from: c */
    public static String m8088c(int i) {
        if (i <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("(?");
        for (int i2 = 0; i2 < i - 1; i2++) {
            sb.append(",?");
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: c */
    public static String m8084c(String str) {
        return str == null ? "" : str.replace('\f', '\n');
    }

    /* renamed from: c */
    public static List<String> m8087c(long j) {
        String b = m8098b(j);
        if (!TextUtils.isEmpty(b)) {
            return m8111a(b);
        }
        return null;
    }

    /* renamed from: d */
    public static LongSparseArray<String> m8083d() {
        LongSparseArray<String> longSparseArray = new LongSparseArray<>();
        try {
            Cursor query = AbstractC11516a.m9413n().mo9412a().getContentResolver().query(f26539d, f26540e, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    longSparseArray.put(query.getLong(0), query.getString(1));
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return longSparseArray;
    }

    /* renamed from: d */
    public static String m8081d(Uri uri) {
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int indexOf = schemeSpecificPart.indexOf(63);
        String str = schemeSpecificPart;
        if (indexOf != -1) {
            str = schemeSpecificPart.substring(0, indexOf);
        }
        return PhoneNumberUtils.replaceUnicodeDigits(str).replace(',', ';');
    }

    /* renamed from: d */
    public static String m8080d(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isLetterOrDigit(charAt) || charAt == '+' || charAt == '*' || charAt == '#') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static boolean m8082d(int i) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        return C11828f.m8193a(i).m8189d() && AbstractC12178k.m6913a(i).mo6906a(resources.getString(R$string.group_mms_pref_key), resources.getBoolean(R$bool.group_mms_pref_default));
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0179, code lost:
        if (r11 == null) goto L_0x017f;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ba A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0196 A[DONT_GENERATE] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.messaging.sms.DatabaseMessages.MmsMessage m8077e(android.net.Uri r11) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8077e(android.net.Uri):gogolook.callgogolook2.messaging.sms.DatabaseMessages$MmsMessage");
    }

    /* renamed from: e */
    public static String m8079e() {
        return f26537b;
    }

    /* renamed from: e */
    public static boolean m8078e(int i) {
        if (!C11828f.m8193a(i).m8180m()) {
            return false;
        }
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        return AbstractC12178k.m6913a(i).mo6906a(resources.getString(R$string.delivery_reports_pref_key), resources.getBoolean(R$bool.delivery_reports_pref_default));
    }

    /* renamed from: f */
    public static long m8074f(Uri uri) {
        if (uri == null) {
            return -1L;
        }
        try {
            return ContentUris.parseId(uri);
        } catch (NumberFormatException | UnsupportedOperationException e) {
            return -1L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r11 == null) goto L_0x0076;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8076f() {
        /*
            java.lang.Boolean r0 = p459j.p460a.p474c0.p488f.C11834j.f26543h
            if (r0 != 0) goto L_0x0076
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            r11 = r0
            j.a.c0.a r0 = p459j.p460a.p474c0.AbstractC11516a.m9413n()     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            android.content.Context r0 = r0.mo9412a()     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r12 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r12
            r1 = r12
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            android.net.Uri r2 = android.provider.Telephony.Sms.CONTENT_URI     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            java.lang.String[] r3 = p459j.p460a.p474c0.p488f.C11834j.f26542g     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r4 = 0
            r5 = 0
            java.lang.String r6 = "date_sent ASC LIMIT 1"
            android.database.Cursor r0 = p459j.p460a.p474c0.p480d.C11689c.m8598a(r0, r1, r2, r3, r4, r5, r6)     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            r11 = r0
            r0 = 1
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            p459j.p460a.p474c0.p488f.C11834j.f26543h = r0     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r0 = r9
            if (r0 == 0) goto L_0x0076
            r0 = r9
            r11 = r0
            goto L_0x0061
        L_0x0044:
            r11 = move-exception
            goto L_0x006a
        L_0x0048:
            r9 = move-exception
            r0 = r11
            r10 = r0
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "date_sent in sms table does not exist"
            r2 = r9
            p459j.p460a.p474c0.p499h.C12153d0.m6982d(r0, r1, r2)     // Catch: all -> 0x0044
            r0 = r11
            r10 = r0
            r0 = 0
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: all -> 0x0044
            p459j.p460a.p474c0.p488f.C11834j.f26543h = r0     // Catch: all -> 0x0044
            r0 = r11
            if (r0 == 0) goto L_0x0076
        L_0x0061:
            r0 = r11
            r0.close()
            goto L_0x0076
        L_0x006a:
            r0 = r10
            if (r0 == 0) goto L_0x0074
            r0 = r10
            r0.close()
        L_0x0074:
            r0 = r11
            throw r0
        L_0x0076:
            java.lang.Boolean r0 = p459j.p460a.p474c0.p488f.C11834j.f26543h
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.C11834j.m8076f():boolean");
    }

    /* renamed from: f */
    public static boolean m8075f(int i) {
        boolean z = true;
        if (C14017g4.m2804t()) {
            return true;
        }
        AbstractC12181l0 b = AbstractC12181l0.m6895b(i);
        if (b.m6892k() || !b.mo6869n()) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    public static boolean m8073g() {
        if (!C12219v.m6735a()) {
            return false;
        }
        return m8152a((int) R$string.dump_mms_pref_key, (int) R$bool.dump_mms_pref_default);
    }

    /* renamed from: g */
    public static boolean m8072g(int i) {
        if (C14017g4.m2804t()) {
            return true;
        }
        return !AbstractC12181l0.m6895b(i).m6892k();
    }

    /* renamed from: h */
    public static boolean m8071h() {
        if (!C12219v.m6735a()) {
            return false;
        }
        return m8152a((int) R$string.dump_sms_pref_key, (int) R$bool.dump_sms_pref_default);
    }

    /* renamed from: i */
    public static boolean m8070i() {
        Context o = MyApplication.m29013o();
        return C13981h.m2937a(C12810o.m5237h()).m9462a(o.getString(R$string.auto_retrieve_mms_pref_key), Boolean.valueOf(o.getResources().getBoolean(R$bool.auto_retrieve_mms_pref_default)));
    }

    /* renamed from: j */
    public static boolean m8069j() {
        Context o = MyApplication.m29013o();
        return C13981h.m2937a(C12810o.m5237h()).m9462a(o.getString(R$string.auto_retrieve_mms_when_roaming_pref_key), Boolean.valueOf(o.getResources().getBoolean(R$bool.auto_retrieve_mms_when_roaming_pref_default)));
    }
}
