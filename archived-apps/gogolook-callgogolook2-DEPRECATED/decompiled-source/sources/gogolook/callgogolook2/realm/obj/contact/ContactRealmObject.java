package gogolook.callgogolook2.realm.obj.contact;

import androidx.core.text.BidiFormatter;
import androidx.media2.exoplayer.external.audio.Ac3Util;
import io.realm.AbstractC10906x145fac8b;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u001f\b\u0016\u0018�� -2\u00020\u0001:\u0001-B\u0085\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\u0012\"\u0004\b$\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0012\"\u0004\b&\u0010\u0014R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u0012\"\u0004\b,\u0010\u0014¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "Lio/realm/RealmObject;", "id", "", "number", "", ContactRealmObject.CONTACT_ID, "e164", "name", ContactRealmObject.PHOTO_URI, "address", "company", "createTime", ContactRealmObject.UPDATE_TIME, "status", "", "(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getCompany", "setCompany", "getContactId", "()J", "setContactId", "(J)V", "getCreateTime", "setCreateTime", "getE164", "setE164", "getId", "setId", "getName", "setName", "getNumber", "setNumber", "getPhotoUri", "setPhotoUri", "getStatus", "()I", "setStatus", "(I)V", "getUpdateTime", "setUpdateTime", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/contact/ContactRealmObject.class */
public class ContactRealmObject extends RealmObject implements AbstractC10906x145fac8b {
    public static final String CONTACT_ID = "contactId";
    public static final String CREATE_TIME = "createTime";
    public static final C5067a Companion = new C5067a(null);
    public static final String E164 = "e164";

    /* renamed from: ID */
    public static final String f12533ID = "id";
    public static final String NAME = "name";
    public static final String NUMBER = "number";
    public static final String PHOTO_URI = "photoUri";
    public static final String STATUS = "status";
    public static final String UPDATE_TIME = "updateTime";
    public String address;
    public String company;
    public long contactId;
    public String createTime;
    public String e164;
    @PrimaryKey

    /* renamed from: id */
    public long f12534id;
    public String name;
    public String number;
    public String photoUri;
    public int status;
    public String updateTime;

    /* renamed from: gogolook.callgogolook2.realm.obj.contact.ContactRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/contact/ContactRealmObject$a.class */
    public static final class C5067a {
        public C5067a() {
        }

        public /* synthetic */ C5067a(C15145g gVar) {
            this();
        }
    }

    public ContactRealmObject() {
        this(0L, null, 0L, null, null, null, null, null, null, null, 0, 2047, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j) {
        this(j, null, 0L, null, null, null, null, null, null, null, 0, 2046, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str) {
        this(j, str, 0L, null, null, null, null, null, null, null, 0, 2044, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2) {
        this(j, str, j2, null, null, null, null, null, null, null, 0, 2040, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2) {
        this(j, str, j2, str2, null, null, null, null, null, null, 0, 2032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3) {
        this(j, str, j2, str2, str3, null, null, null, null, null, 0, 2016, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3, String str4) {
        this(j, str, j2, str2, str3, str4, null, null, null, null, 0, 1984, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3, String str4, String str5) {
        this(j, str, j2, str2, str3, str4, str5, null, null, null, 0, 1920, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3, String str4, String str5, String str6) {
        this(j, str, j2, str2, str3, str4, str5, str6, null, null, 0, BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(j, str, j2, str2, str3, str4, str5, str6, str7, null, 0, Ac3Util.AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this(j, str, j2, str2, str3, str4, str5, str6, str7, str8, 0, 1024, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ContactRealmObject(long j, String str, long j2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$number(str);
        realmSet$contactId(j2);
        realmSet$e164(str2);
        realmSet$name(str3);
        realmSet$photoUri(str4);
        realmSet$address(str5);
        realmSet$company(str6);
        realmSet$createTime(str7);
        realmSet$updateTime(str8);
        realmSet$status(i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ContactRealmObject(long r16, java.lang.String r18, long r19, java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, int r28, int r29, p626l.p641z.p643d.C15145g r30) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.contact.ContactRealmObject.<init>(long, java.lang.String, long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, l.z.d.g):void");
    }

    public final String getAddress() {
        return realmGet$address();
    }

    public final String getCompany() {
        return realmGet$company();
    }

    public final long getContactId() {
        return realmGet$contactId();
    }

    public final String getCreateTime() {
        return realmGet$createTime();
    }

    public final String getE164() {
        return realmGet$e164();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final String getName() {
        return realmGet$name();
    }

    public final String getNumber() {
        return realmGet$number();
    }

    public final String getPhotoUri() {
        return realmGet$photoUri();
    }

    public final int getStatus() {
        return realmGet$status();
    }

    public final String getUpdateTime() {
        return realmGet$updateTime();
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$address() {
        return this.address;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$company() {
        return this.company;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public long realmGet$contactId() {
        return this.contactId;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$createTime() {
        return this.createTime;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$e164() {
        return this.e164;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public long realmGet$id() {
        return this.f12534id;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$photoUri() {
        return this.photoUri;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public int realmGet$status() {
        return this.status;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public String realmGet$updateTime() {
        return this.updateTime;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$address(String str) {
        this.address = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$company(String str) {
        this.company = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$contactId(long j) {
        this.contactId = j;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$createTime(String str) {
        this.createTime = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$e164(String str) {
        this.e164 = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$id(long j) {
        this.f12534id = j;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$photoUri(String str) {
        this.photoUri = str;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$status(int i) {
        this.status = i;
    }

    @Override // io.realm.AbstractC10906x145fac8b
    public void realmSet$updateTime(String str) {
        this.updateTime = str;
    }

    public final void setAddress(String str) {
        realmSet$address(str);
    }

    public final void setCompany(String str) {
        realmSet$company(str);
    }

    public final void setContactId(long j) {
        realmSet$contactId(j);
    }

    public final void setCreateTime(String str) {
        realmSet$createTime(str);
    }

    public final void setE164(String str) {
        realmSet$e164(str);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void setName(String str) {
        realmSet$name(str);
    }

    public final void setNumber(String str) {
        realmSet$number(str);
    }

    public final void setPhotoUri(String str) {
        realmSet$photoUri(str);
    }

    public final void setStatus(int i) {
        realmSet$status(i);
    }

    public final void setUpdateTime(String str) {
        realmSet$updateTime(str);
    }
}
