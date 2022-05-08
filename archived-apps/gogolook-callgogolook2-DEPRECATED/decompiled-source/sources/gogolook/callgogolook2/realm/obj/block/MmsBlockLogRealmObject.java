package gogolook.callgogolook2.realm.obj.block;

import io.realm.AbstractC10904xb8b90a82;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001a\b\u0016\u0018�� \"2\u00020\u0001:\u0001\"BM\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\n\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010\u000fR\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/block/MmsBlockLogRealmObject;", "Lio/realm/RealmObject;", "id", "", MmsBlockLogRealmObject.MMS_URL, "", MmsBlockLogRealmObject.MMS_SIZE, MmsBlockLogRealmObject.MMS_EXPIRE_DATE, MmsBlockLogRealmObject.SUB_CS, "", MmsBlockLogRealmObject.ADDRESS_CHARSET, "(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V", "get_mms_expire_date", "()Ljava/lang/Long;", "set_mms_expire_date", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "get_mms_url", "()Ljava/lang/String;", "set_mms_url", "(Ljava/lang/String;)V", "getCharset", "()Ljava/lang/Integer;", "setCharset", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getId", "()J", "setId", "(J)V", "getMms_size", "setMms_size", "getSub_cs", "setSub_cs", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/block/MmsBlockLogRealmObject.class */
public class MmsBlockLogRealmObject extends RealmObject implements AbstractC10904xb8b90a82 {
    public static final String ADDRESS_CHARSET = "charset";
    public static final C5066a Companion = new C5066a(null);

    /* renamed from: ID */
    public static final String f12531ID = "id";
    public static final String MMS_EXPIRE_DATE = "_mms_expire_date";
    public static final String MMS_SIZE = "mms_size";
    public static final String MMS_URL = "_mms_url";
    public static final String SUB_CS = "sub_cs";
    public Long _mms_expire_date;
    public String _mms_url;
    public Integer charset;
    @PrimaryKey

    /* renamed from: id */
    public long f12532id;
    public Long mms_size;
    public Integer sub_cs;

    /* renamed from: gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/block/MmsBlockLogRealmObject$a.class */
    public static final class C5066a {
        public C5066a() {
        }

        public /* synthetic */ C5066a(C15145g gVar) {
            this();
        }
    }

    public MmsBlockLogRealmObject() {
        this(0L, null, null, null, null, null, 63, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MmsBlockLogRealmObject(long j) {
        this(j, null, null, null, null, null, 62, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MmsBlockLogRealmObject(long j, String str) {
        this(j, str, null, null, null, null, 60, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MmsBlockLogRealmObject(long j, String str, Long l) {
        this(j, str, l, null, null, null, 56, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MmsBlockLogRealmObject(long j, String str, Long l, Long l2) {
        this(j, str, l, l2, null, null, 48, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MmsBlockLogRealmObject(long j, String str, Long l, Long l2, Integer num) {
        this(j, str, l, l2, num, null, 32, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public MmsBlockLogRealmObject(long j, String str, Long l, Long l2, Integer num, Integer num2) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$_mms_url(str);
        realmSet$mms_size(l);
        realmSet$_mms_expire_date(l2);
        realmSet$sub_cs(num);
        realmSet$charset(num2);
    }

    public /* synthetic */ MmsBlockLogRealmObject(long j, String str, Long l, Long l2, Integer num, Integer num2, int i, C15145g gVar) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? 0L : l, (i & 8) != 0 ? -1L : l2, (i & 16) != 0 ? 0 : num, (i & 32) != 0 ? 0 : num2);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public final Integer getCharset() {
        return realmGet$charset();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final Long getMms_size() {
        return realmGet$mms_size();
    }

    public final Integer getSub_cs() {
        return realmGet$sub_cs();
    }

    public final Long get_mms_expire_date() {
        return realmGet$_mms_expire_date();
    }

    public final String get_mms_url() {
        return realmGet$_mms_url();
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public Long realmGet$_mms_expire_date() {
        return this._mms_expire_date;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public String realmGet$_mms_url() {
        return this._mms_url;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public Integer realmGet$charset() {
        return this.charset;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public long realmGet$id() {
        return this.f12532id;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public Long realmGet$mms_size() {
        return this.mms_size;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public Integer realmGet$sub_cs() {
        return this.sub_cs;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public void realmSet$_mms_expire_date(Long l) {
        this._mms_expire_date = l;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public void realmSet$_mms_url(String str) {
        this._mms_url = str;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public void realmSet$charset(Integer num) {
        this.charset = num;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public void realmSet$id(long j) {
        this.f12532id = j;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public void realmSet$mms_size(Long l) {
        this.mms_size = l;
    }

    @Override // io.realm.AbstractC10904xb8b90a82
    public void realmSet$sub_cs(Integer num) {
        this.sub_cs = num;
    }

    public final void setCharset(Integer num) {
        realmSet$charset(num);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void setMms_size(Long l) {
        realmSet$mms_size(l);
    }

    public final void setSub_cs(Integer num) {
        realmSet$sub_cs(num);
    }

    public final void set_mms_expire_date(Long l) {
        realmSet$_mms_expire_date(l);
    }

    public final void set_mms_url(String str) {
        realmSet$_mms_url(str);
    }
}
