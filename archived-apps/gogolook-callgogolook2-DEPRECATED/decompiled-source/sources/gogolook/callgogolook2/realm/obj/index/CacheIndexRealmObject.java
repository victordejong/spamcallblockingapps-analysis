package gogolook.callgogolook2.realm.obj.index;

import androidx.core.text.BidiFormatter;
import androidx.media2.exoplayer.external.audio.Ac3Util;
import io.realm.AbstractC10924x84e508b;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\"\b\u0016\u0018�� 42\u00020\u0001:\u00014B\u008f\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000e¢\u0006\u0002\u0010\u0014J\b\u00103\u001a\u00020\bH\u0016R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b)\u0010\u001c\"\u0004\b*\u0010\u001eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u0016\"\u0004\b,\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u0010\u001c\"\u0004\b2\u0010\u001e¨\u00065"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/index/CacheIndexRealmObject;", "Lio/realm/RealmObject;", "_id", "", "ref_id", CacheIndexRealmObject.REF_TYPE, "", "number", "", "e164", "contact_id", CacheIndexRealmObject.DISPLAY_NAME, CacheIndexRealmObject.LAST_UPDATE_TIME, "numberIndexRealmObjects", "Lio/realm/RealmList;", "Lgogolook/callgogolook2/realm/obj/index/NumberIndexRealmObject;", "searchIndexRealmObjects", "Lgogolook/callgogolook2/realm/obj/index/SearchIndexRealmObject;", "dialerIndexRealmObjects", "Lgogolook/callgogolook2/realm/obj/index/DialerIndexRealmObject;", "(JJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLio/realm/RealmList;Lio/realm/RealmList;Lio/realm/RealmList;)V", "get_id", "()J", "set_id", "(J)V", "getContact_id", "setContact_id", "getDialerIndexRealmObjects", "()Lio/realm/RealmList;", "setDialerIndexRealmObjects", "(Lio/realm/RealmList;)V", "getDisplay_name", "()Ljava/lang/String;", "setDisplay_name", "(Ljava/lang/String;)V", "getE164", "setE164", "getLast_update_time", "setLast_update_time", "getNumber", "setNumber", "getNumberIndexRealmObjects", "setNumberIndexRealmObjects", "getRef_id", "setRef_id", "getRef_type", "()I", "setRef_type", "(I)V", "getSearchIndexRealmObjects", "setSearchIndexRealmObjects", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/index/CacheIndexRealmObject.class */
public class CacheIndexRealmObject extends RealmObject implements AbstractC10924x84e508b {
    public static final String CONTACT_ID = "contact_id";
    public static final C5076a Companion = new C5076a(null);
    public static final String DIALER_LINK_QUERY_PREFIX = "dialerIndexRealmObjects.";
    public static final String DISPLAY_NAME = "display_name";
    public static final String E164 = "e164";

    /* renamed from: ID */
    public static final String f12539ID = "_id";
    public static final String LAST_UPDATE_TIME = "last_update_time";
    public static final String NUMBER = "number";
    public static final String NUMBER_LINK_QUERY_PREFIX = "numberIndexRealmObjects.";
    public static final String REF_ID = "ref_id";
    public static final String REF_TYPE = "ref_type";
    public static final int REF_TYPE_CONTACT = 2;
    public static final int REF_TYPE_FAVORITE = 0;
    public static final int REF_TYPE_LOG = 1;
    public static final int REF_TYPE_MY_MEMO = 4;
    public static final int REF_TYPE_MY_TAG = 3;
    public static final String SEARCH_LINK_QUERY_PREFIX = "searchIndexRealmObjects.";
    @PrimaryKey
    public long _id;
    public long contact_id;
    public RealmList<DialerIndexRealmObject> dialerIndexRealmObjects;
    public String display_name;
    @Index
    public String e164;
    public long last_update_time;
    public String number;
    public RealmList<NumberIndexRealmObject> numberIndexRealmObjects;
    public long ref_id;
    public int ref_type;
    public RealmList<SearchIndexRealmObject> searchIndexRealmObjects;

    /* renamed from: gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/index/CacheIndexRealmObject$a.class */
    public static final class C5076a {
        public C5076a() {
        }

        public /* synthetic */ C5076a(C15145g gVar) {
            this();
        }
    }

    public CacheIndexRealmObject() {
        this(0L, 0L, 0, null, null, 0L, null, 0L, null, null, null, 2047, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j) {
        this(j, 0L, 0, null, null, 0L, null, 0L, null, null, null, 2046, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2) {
        this(j, j2, 0, null, null, 0L, null, 0L, null, null, null, 2044, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i) {
        this(j, j2, i, null, null, 0L, null, 0L, null, null, null, 2040, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str) {
        this(j, j2, i, str, null, 0L, null, 0L, null, null, null, 2032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2) {
        this(j, j2, i, str, str2, 0L, null, 0L, null, null, null, 2016, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2, long j3) {
        this(j, j2, i, str, str2, j3, null, 0L, null, null, null, 1984, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2, long j3, String str3) {
        this(j, j2, i, str, str2, j3, str3, 0L, null, null, null, 1920, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2, long j3, String str3, long j4) {
        this(j, j2, i, str, str2, j3, str3, j4, null, null, null, BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2, long j3, String str3, long j4, RealmList<NumberIndexRealmObject> realmList) {
        this(j, j2, i, str, str2, j3, str3, j4, realmList, null, null, Ac3Util.AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2, long j3, String str3, long j4, RealmList<NumberIndexRealmObject> realmList, RealmList<SearchIndexRealmObject> realmList2) {
        this(j, j2, i, str, str2, j3, str3, j4, realmList, realmList2, null, 1024, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CacheIndexRealmObject(long j, long j2, int i, String str, String str2, long j3, String str3, long j4, RealmList<NumberIndexRealmObject> realmList, RealmList<SearchIndexRealmObject> realmList2, RealmList<DialerIndexRealmObject> realmList3) {
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$_id(j);
        realmSet$ref_id(j2);
        realmSet$ref_type(i);
        realmSet$number(str);
        realmSet$e164(str2);
        realmSet$contact_id(j3);
        realmSet$display_name(str3);
        realmSet$last_update_time(j4);
        realmSet$numberIndexRealmObjects(realmList);
        realmSet$searchIndexRealmObjects(realmList2);
        realmSet$dialerIndexRealmObjects(realmList3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CacheIndexRealmObject(long r18, long r20, int r22, java.lang.String r23, java.lang.String r24, long r25, java.lang.String r27, long r28, io.realm.RealmList r30, io.realm.RealmList r31, io.realm.RealmList r32, int r33, p626l.p641z.p643d.C15145g r34) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject.<init>(long, long, int, java.lang.String, java.lang.String, long, java.lang.String, long, io.realm.RealmList, io.realm.RealmList, io.realm.RealmList, int, l.z.d.g):void");
    }

    public final long getContact_id() {
        return realmGet$contact_id();
    }

    public final RealmList<DialerIndexRealmObject> getDialerIndexRealmObjects() {
        return realmGet$dialerIndexRealmObjects();
    }

    public final String getDisplay_name() {
        return realmGet$display_name();
    }

    public final String getE164() {
        return realmGet$e164();
    }

    public final long getLast_update_time() {
        return realmGet$last_update_time();
    }

    public final String getNumber() {
        return realmGet$number();
    }

    public final RealmList<NumberIndexRealmObject> getNumberIndexRealmObjects() {
        return realmGet$numberIndexRealmObjects();
    }

    public final long getRef_id() {
        return realmGet$ref_id();
    }

    public final int getRef_type() {
        return realmGet$ref_type();
    }

    public final RealmList<SearchIndexRealmObject> getSearchIndexRealmObjects() {
        return realmGet$searchIndexRealmObjects();
    }

    public final long get_id() {
        return realmGet$_id();
    }

    @Override // io.realm.AbstractC10924x84e508b
    public long realmGet$_id() {
        return this._id;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public long realmGet$contact_id() {
        return this.contact_id;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public RealmList realmGet$dialerIndexRealmObjects() {
        return this.dialerIndexRealmObjects;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public String realmGet$display_name() {
        return this.display_name;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public String realmGet$e164() {
        return this.e164;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public long realmGet$last_update_time() {
        return this.last_update_time;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public RealmList realmGet$numberIndexRealmObjects() {
        return this.numberIndexRealmObjects;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public long realmGet$ref_id() {
        return this.ref_id;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public int realmGet$ref_type() {
        return this.ref_type;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public RealmList realmGet$searchIndexRealmObjects() {
        return this.searchIndexRealmObjects;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$_id(long j) {
        this._id = j;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$contact_id(long j) {
        this.contact_id = j;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$dialerIndexRealmObjects(RealmList realmList) {
        this.dialerIndexRealmObjects = realmList;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$display_name(String str) {
        this.display_name = str;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$e164(String str) {
        this.e164 = str;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$last_update_time(long j) {
        this.last_update_time = j;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$numberIndexRealmObjects(RealmList realmList) {
        this.numberIndexRealmObjects = realmList;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$ref_id(long j) {
        this.ref_id = j;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$ref_type(int i) {
        this.ref_type = i;
    }

    @Override // io.realm.AbstractC10924x84e508b
    public void realmSet$searchIndexRealmObjects(RealmList realmList) {
        this.searchIndexRealmObjects = realmList;
    }

    public final void setContact_id(long j) {
        realmSet$contact_id(j);
    }

    public final void setDialerIndexRealmObjects(RealmList<DialerIndexRealmObject> realmList) {
        realmSet$dialerIndexRealmObjects(realmList);
    }

    public final void setDisplay_name(String str) {
        realmSet$display_name(str);
    }

    public final void setE164(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$e164(str);
    }

    public final void setLast_update_time(long j) {
        realmSet$last_update_time(j);
    }

    public final void setNumber(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$number(str);
    }

    public final void setNumberIndexRealmObjects(RealmList<NumberIndexRealmObject> realmList) {
        realmSet$numberIndexRealmObjects(realmList);
    }

    public final void setRef_id(long j) {
        realmSet$ref_id(j);
    }

    public final void setRef_type(int i) {
        realmSet$ref_type(i);
    }

    public final void setSearchIndexRealmObjects(RealmList<SearchIndexRealmObject> realmList) {
        realmSet$searchIndexRealmObjects(realmList);
    }

    public final void set_id(long j) {
        realmSet$_id(j);
    }

    public String toString() {
        return "id=" + realmGet$_id() + ", refId=" + realmGet$ref_id() + ", type=" + realmGet$ref_type() + ", number=" + realmGet$number() + ", e164=" + realmGet$e164() + ", name=" + realmGet$display_name();
    }
}
