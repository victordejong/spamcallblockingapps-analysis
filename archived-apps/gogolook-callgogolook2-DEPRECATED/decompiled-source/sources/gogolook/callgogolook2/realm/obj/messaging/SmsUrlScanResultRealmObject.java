package gogolook.callgogolook2.realm.obj.messaging;

import androidx.core.app.FrameMetricsAggregator;
import gogolook.callgogolook2.gson.UserProfile;
import io.realm.AbstractC10938x98ac5c59;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001f\b\u0016\u0018�� (2\u00020\u0001:\u0001(Bc\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005¢\u0006\u0002\u0010\u000eJ\b\u0010'\u001a\u00020\u0005H\u0016R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0010\"\u0004\b \u0010\u0012R\u001e\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0016\"\u0004\b\"\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u001a\"\u0004\b&\u0010\u001c¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/messaging/SmsUrlScanResultRealmObject;", "Lio/realm/RealmObject;", "id", "", SmsUrlScanResultRealmObject.REF_URI, "", "address", "body", SmsUrlScanResultRealmObject.UPDATE_DATE, SmsUrlScanResultRealmObject.URL_INDEX, "", "url", SmsUrlScanResultRealmObject.RATING, "source", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;ILjava/lang/String;)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getBody", "setBody", "getId", "()J", "setId", "(J)V", "getRating", "()I", "setRating", "(I)V", "getRefUri", "setRefUri", "getSource", "setSource", "getUpdateDate", "setUpdateDate", "getUrl", "setUrl", "getUrlIndex", "setUrlIndex", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/messaging/SmsUrlScanResultRealmObject.class */
public class SmsUrlScanResultRealmObject extends RealmObject implements AbstractC10938x98ac5c59 {
    public static final String ADDRESS = "address";
    public static final String BODY = "body";
    public static final C5083a Companion = new C5083a(null);

    /* renamed from: ID */
    public static final String f12549ID = "id";
    public static final String RATING = "rating";
    public static final String REF_URI = "refUri";
    public static final String SOURCE = "source";
    public static final String UPDATE_DATE = "updateDate";
    public static final String URL = "url";
    public static final String URL_INDEX = "urlIndex";
    public String address;
    public String body;
    @PrimaryKey

    /* renamed from: id */
    public long f12550id;
    public int rating;
    public String refUri;
    public String source;
    @Index
    public long updateDate;
    public String url;
    public int urlIndex;

    /* renamed from: gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/messaging/SmsUrlScanResultRealmObject$a.class */
    public static final class C5083a {
        public C5083a() {
        }

        public /* synthetic */ C5083a(C15145g gVar) {
            this();
        }
    }

    public SmsUrlScanResultRealmObject() {
        this(0L, null, null, null, 0L, 0, null, 0, null, FrameMetricsAggregator.EVERY_DURATION, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j) {
        this(j, null, null, null, 0L, 0, null, 0, null, 510, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str) {
        this(j, str, null, null, 0L, 0, null, 0, null, 508, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2) {
        this(j, str, str2, null, 0L, 0, null, 0, null, 504, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2, String str3) {
        this(j, str, str2, str3, 0L, 0, null, 0, null, 496, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2, String str3, long j2) {
        this(j, str, str2, str3, j2, 0, null, 0, null, 480, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2, String str3, long j2, int i) {
        this(j, str, str2, str3, j2, i, null, 0, null, 448, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2, String str3, long j2, int i, String str4) {
        this(j, str, str2, str3, j2, i, str4, 0, null, 384, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2, String str3, long j2, int i, String str4, int i2) {
        this(j, str, str2, str3, j2, i, str4, i2, null, 256, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public SmsUrlScanResultRealmObject(long j, String str, String str2, String str3, long j2, int i, String str4, int i2, String str5) {
        C15149k.m377b(str2, "address");
        C15149k.m377b(str3, "body");
        C15149k.m377b(str4, "url");
        C15149k.m377b(str5, "source");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$refUri(str);
        realmSet$address(str2);
        realmSet$body(str3);
        realmSet$updateDate(j2);
        realmSet$urlIndex(i);
        realmSet$url(str4);
        realmSet$rating(i2);
        realmSet$source(str5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SmsUrlScanResultRealmObject(long r14, java.lang.String r16, java.lang.String r17, java.lang.String r18, long r19, int r21, java.lang.String r22, int r23, java.lang.String r24, int r25, p626l.p641z.p643d.C15145g r26) {
        /*
            r13 = this;
            r0 = 0
            r27 = r0
            r0 = r25
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000f
            r0 = 0
            r14 = r0
            goto L_0x000f
        L_0x000f:
            r0 = r25
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 0
            r16 = r0
            goto L_0x001b
        L_0x001b:
            java.lang.String r0 = ""
            r26 = r0
            r0 = r25
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002d
            java.lang.String r0 = ""
            r17 = r0
            goto L_0x002d
        L_0x002d:
            r0 = r25
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003c
            java.lang.String r0 = ""
            r18 = r0
            goto L_0x003c
        L_0x003c:
            r0 = r25
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004b
            r0 = r27
            r19 = r0
            goto L_0x004b
        L_0x004b:
            r0 = r25
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0059
            r0 = 0
            r21 = r0
            goto L_0x0059
        L_0x0059:
            r0 = r25
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0068
            java.lang.String r0 = ""
            r22 = r0
            goto L_0x0068
        L_0x0068:
            r0 = r25
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x007c
            j.a.v0.c.k r0 = p459j.p460a.p572v0.p573c.EnumC13715k.UNRATED
            int r0 = r0.ordinal()
            r23 = r0
            goto L_0x007c
        L_0x007c:
            r0 = r25
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x008c
            r0 = r26
            r24 = r0
            goto L_0x008c
        L_0x008c:
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r21
            r7 = r22
            r8 = r23
            r9 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = r13
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x00b0
            r0 = r13
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x00b0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject.<init>(long, java.lang.String, java.lang.String, java.lang.String, long, int, java.lang.String, int, java.lang.String, int, l.z.d.g):void");
    }

    public final String getAddress() {
        return realmGet$address();
    }

    public final String getBody() {
        return realmGet$body();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final int getRating() {
        return realmGet$rating();
    }

    public final String getRefUri() {
        return realmGet$refUri();
    }

    public final String getSource() {
        return realmGet$source();
    }

    public final long getUpdateDate() {
        return realmGet$updateDate();
    }

    public final String getUrl() {
        return realmGet$url();
    }

    public final int getUrlIndex() {
        return realmGet$urlIndex();
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public String realmGet$address() {
        return this.address;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public String realmGet$body() {
        return this.body;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public long realmGet$id() {
        return this.f12550id;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public int realmGet$rating() {
        return this.rating;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public String realmGet$refUri() {
        return this.refUri;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public String realmGet$source() {
        return this.source;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public long realmGet$updateDate() {
        return this.updateDate;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public String realmGet$url() {
        return this.url;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public int realmGet$urlIndex() {
        return this.urlIndex;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$address(String str) {
        this.address = str;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$body(String str) {
        this.body = str;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$id(long j) {
        this.f12550id = j;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$rating(int i) {
        this.rating = i;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$refUri(String str) {
        this.refUri = str;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$source(String str) {
        this.source = str;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$updateDate(long j) {
        this.updateDate = j;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$url(String str) {
        this.url = str;
    }

    @Override // io.realm.AbstractC10938x98ac5c59
    public void realmSet$urlIndex(int i) {
        this.urlIndex = i;
    }

    public final void setAddress(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$address(str);
    }

    public final void setBody(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$body(str);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void setRating(int i) {
        realmSet$rating(i);
    }

    public final void setRefUri(String str) {
        realmSet$refUri(str);
    }

    public final void setSource(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$source(str);
    }

    public final void setUpdateDate(long j) {
        realmSet$updateDate(j);
    }

    public final void setUrl(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$url(str);
    }

    public final void setUrlIndex(int i) {
        realmSet$urlIndex(i);
    }

    public String toString() {
        return "{ id=" + realmGet$id() + UserProfile.CARD_CATE_SEPARATOR + "refUri=" + realmGet$refUri() + UserProfile.CARD_CATE_SEPARATOR + "updateDate=" + realmGet$updateDate() + UserProfile.CARD_CATE_SEPARATOR + "address=" + realmGet$address() + ",urlIndex=" + realmGet$urlIndex() + ",url=" + realmGet$url() + UserProfile.CARD_CATE_SEPARATOR + "rating=" + realmGet$rating() + UserProfile.CARD_CATE_SEPARATOR + "source=" + realmGet$source() + UserProfile.CARD_CATE_SEPARATOR + "body=" + realmGet$body() + " }";
    }
}
