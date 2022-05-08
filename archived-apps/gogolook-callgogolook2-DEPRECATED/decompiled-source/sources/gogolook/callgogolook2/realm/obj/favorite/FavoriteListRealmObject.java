package gogolook.callgogolook2.realm.obj.favorite;

import androidx.core.text.BidiFormatter;
import androidx.media2.exoplayer.external.audio.Ac3Util;
import io.realm.AbstractC10910x6debb867;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0002\b\u0016\u0018�� 62\u00020\u0001:\u00016B\u0089\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010¢\u0006\u0002\u0010\u0012J\u0013\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u000105H\u0096\u0002R\u001e\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\u0016R\u001e\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b&\u0010\u0014\"\u0004\b'\u0010\u0016R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b(\u0010\u0014\"\u0004\b)\u0010\u0016R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010\u001b\"\u0004\b+\u0010\u001dR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010\u001b\"\u0004\b1\u0010\u001d¨\u00067"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject;", "Lio/realm/RealmObject;", "id", "", "_e164", "", "_parentid", FavoriteListRealmObject.COUNT, "", FavoriteListRealmObject.SOURCE, FavoriteListRealmObject.AUTOCATE, "_createtime", "_updatetime", "_status", "_transaction", "favoriteGroupRealmObjects", "Lio/realm/RealmList;", "Lgogolook/callgogolook2/realm/obj/favorite/FavoriteGroupRealmObject;", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JJLjava/lang/Integer;Ljava/lang/Integer;Lio/realm/RealmList;)V", "get_auto_cate", "()Ljava/lang/Integer;", "set_auto_cate", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "get_count", "set_count", "get_createtime", "()J", "set_createtime", "(J)V", "get_e164", "()Ljava/lang/String;", "set_e164", "(Ljava/lang/String;)V", "get_parentid", "set_parentid", "get_source", "set_source", "get_status", "set_status", "get_transaction", "set_transaction", "get_updatetime", "set_updatetime", "getFavoriteGroupRealmObjects", "()Lio/realm/RealmList;", "setFavoriteGroupRealmObjects", "(Lio/realm/RealmList;)V", "getId", "setId", "equals", "", "other", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject.class */
public class FavoriteListRealmObject extends RealmObject implements AbstractC10910x6debb867 {
    public static final String AUTOCATE = "_auto_cate";
    public static final String COUNT = "_count";
    public static final String CREATETIME = "_createtime";
    public static final C5069a Companion = new C5069a(null);
    public static final String E164 = "_e164";

    /* renamed from: ID */
    public static final String f12537ID = "id";
    public static final String PARENTID = "_parentid";
    public static final String SOURCE = "_source";
    public static final int SOURCE_ACTIVE = 0;
    public static final int SOURCE_DELETED = -1;
    public static final String STATUS = "_status";
    public static final String TRANSACTION = "_transaction";
    public static final String UNPARENT_ID = "0";
    public static final String UPDATETIME = "_updatetime";
    public Integer _auto_cate;
    public Integer _count;
    public long _createtime;
    public String _e164;
    public String _parentid;
    public Integer _source;
    public Integer _status;
    public Integer _transaction;
    public long _updatetime;
    public RealmList<FavoriteGroupRealmObject> favoriteGroupRealmObjects;
    @PrimaryKey

    /* renamed from: id */
    public long f12538id;

    /* renamed from: gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject$a.class */
    public static final class C5069a {
        public C5069a() {
        }

        public /* synthetic */ C5069a(C15145g gVar) {
            this();
        }
    }

    public FavoriteListRealmObject() {
        this(0L, null, null, null, null, null, 0L, 0L, null, null, null, 2047, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j) {
        this(j, null, null, null, null, null, 0L, 0L, null, null, null, 2046, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str) {
        this(j, str, null, null, null, null, 0L, 0L, null, null, null, 2044, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2) {
        this(j, str, str2, null, null, null, 0L, 0L, null, null, null, 2040, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num) {
        this(j, str, str2, num, null, null, 0L, 0L, null, null, null, 2032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2) {
        this(j, str, str2, num, num2, null, 0L, 0L, null, null, null, 2016, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2, Integer num3) {
        this(j, str, str2, num, num2, num3, 0L, 0L, null, null, null, 1984, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2, Integer num3, long j2) {
        this(j, str, str2, num, num2, num3, j2, 0L, null, null, null, 1920, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2, Integer num3, long j2, long j3) {
        this(j, str, str2, num, num2, num3, j2, j3, null, null, null, BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2, Integer num3, long j2, long j3, Integer num4) {
        this(j, str, str2, num, num2, num3, j2, j3, num4, null, null, Ac3Util.AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2, Integer num3, long j2, long j3, Integer num4, Integer num5) {
        this(j, str, str2, num, num2, num3, j2, j3, num4, num5, null, 1024, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteListRealmObject(long j, String str, String str2, Integer num, Integer num2, Integer num3, long j2, long j3, Integer num4, Integer num5, RealmList<FavoriteGroupRealmObject> realmList) {
        C15149k.m377b(str, "_e164");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$_e164(str);
        realmSet$_parentid(str2);
        realmSet$_count(num);
        realmSet$_source(num2);
        realmSet$_auto_cate(num3);
        realmSet$_createtime(j2);
        realmSet$_updatetime(j3);
        realmSet$_status(num4);
        realmSet$_transaction(num5);
        realmSet$favoriteGroupRealmObjects(realmList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ FavoriteListRealmObject(long r17, java.lang.String r19, java.lang.String r20, java.lang.Integer r21, java.lang.Integer r22, java.lang.Integer r23, long r24, long r26, java.lang.Integer r28, java.lang.Integer r29, io.realm.RealmList r30, int r31, p626l.p641z.p643d.C15145g r32) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject.<init>(long, java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, java.lang.Integer, long, long, java.lang.Integer, java.lang.Integer, io.realm.RealmList, int, l.z.d.g):void");
    }

    public boolean equals(Object obj) {
        return obj instanceof FavoriteListRealmObject ? C15149k.m384a((Object) ((FavoriteListRealmObject) obj).realmGet$_e164(), (Object) realmGet$_e164()) : false;
    }

    public final RealmList<FavoriteGroupRealmObject> getFavoriteGroupRealmObjects() {
        return realmGet$favoriteGroupRealmObjects();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final Integer get_auto_cate() {
        return realmGet$_auto_cate();
    }

    public final Integer get_count() {
        return realmGet$_count();
    }

    public final long get_createtime() {
        return realmGet$_createtime();
    }

    public final String get_e164() {
        return realmGet$_e164();
    }

    public final String get_parentid() {
        return realmGet$_parentid();
    }

    public final Integer get_source() {
        return realmGet$_source();
    }

    public final Integer get_status() {
        return realmGet$_status();
    }

    public final Integer get_transaction() {
        return realmGet$_transaction();
    }

    public final long get_updatetime() {
        return realmGet$_updatetime();
    }

    @Override // io.realm.AbstractC10910x6debb867
    public Integer realmGet$_auto_cate() {
        return this._auto_cate;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public Integer realmGet$_count() {
        return this._count;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public long realmGet$_createtime() {
        return this._createtime;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public String realmGet$_e164() {
        return this._e164;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public String realmGet$_parentid() {
        return this._parentid;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public Integer realmGet$_source() {
        return this._source;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public Integer realmGet$_status() {
        return this._status;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public Integer realmGet$_transaction() {
        return this._transaction;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public long realmGet$_updatetime() {
        return this._updatetime;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public RealmList realmGet$favoriteGroupRealmObjects() {
        return this.favoriteGroupRealmObjects;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public long realmGet$id() {
        return this.f12538id;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_auto_cate(Integer num) {
        this._auto_cate = num;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_count(Integer num) {
        this._count = num;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_createtime(long j) {
        this._createtime = j;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_e164(String str) {
        this._e164 = str;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_parentid(String str) {
        this._parentid = str;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_source(Integer num) {
        this._source = num;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_status(Integer num) {
        this._status = num;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_transaction(Integer num) {
        this._transaction = num;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$_updatetime(long j) {
        this._updatetime = j;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$favoriteGroupRealmObjects(RealmList realmList) {
        this.favoriteGroupRealmObjects = realmList;
    }

    @Override // io.realm.AbstractC10910x6debb867
    public void realmSet$id(long j) {
        this.f12538id = j;
    }

    public final void setFavoriteGroupRealmObjects(RealmList<FavoriteGroupRealmObject> realmList) {
        realmSet$favoriteGroupRealmObjects(realmList);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void set_auto_cate(Integer num) {
        realmSet$_auto_cate(num);
    }

    public final void set_count(Integer num) {
        realmSet$_count(num);
    }

    public final void set_createtime(long j) {
        realmSet$_createtime(j);
    }

    public final void set_e164(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$_e164(str);
    }

    public final void set_parentid(String str) {
        realmSet$_parentid(str);
    }

    public final void set_source(Integer num) {
        realmSet$_source(num);
    }

    public final void set_status(Integer num) {
        realmSet$_status(num);
    }

    public final void set_transaction(Integer num) {
        realmSet$_transaction(num);
    }

    public final void set_updatetime(long j) {
        realmSet$_updatetime(j);
    }
}
