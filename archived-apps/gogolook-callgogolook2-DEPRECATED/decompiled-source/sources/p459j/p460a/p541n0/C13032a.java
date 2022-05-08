package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.BlockRealmModule;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONArray;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13875a0;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001AB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J7\u0010\u001a\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001cH\u0007¢\u0006\u0002\u0010 J\b\u0010!\u001a\u00020\"H\u0007J\b\u0010#\u001a\u00020\u0004H\u0007J\u0014\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\"0%H\u0007J\u0017\u0010&\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u001cH\u0007¢\u0006\u0002\u0010'J$\u0010(\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)2\b\u0010+\u001a\u0004\u0018\u00010\u00062\b\u0010,\u001a\u0004\u0018\u00010\u0006H\u0007J$\u0010-\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)2\b\u0010.\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u00100\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)H\u0007J\b\u00101\u001a\u000202H\u0007J\u0010\u00103\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)H\u0007J\u001e\u00104\u001a\u00020\u00192\b\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u000108H\u0007J\u0010\u00109\u001a\u00020\"2\u0006\u0010:\u001a\u00020*H\u0007J\u0016\u00109\u001a\u00020\u00192\f\u0010;\u001a\b\u0012\u0004\u0012\u00020*0)H\u0007JY\u0010<\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001c2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001c2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001c2\b\u0010=\u001a\u0004\u0018\u00010\u00062\b\u0010>\u001a\u0004\u0018\u00010?H\u0007¢\u0006\u0002\u0010@R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0016\u0010\f\u001a\n \r*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R#\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u00110\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��¨\u0006B"}, m815d2 = {"Lgogolook/callgogolook2/realm/BlockListRealmHelper;", "", "()V", "BLOCK_MIGRATION_APP_VER", "", "DB_NAME", "", "DB_VERSION", "EXT", "GO_INSERT", "GO_UPDATE", "NO_CHANGE", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "VALUE", "VERSION", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "compact", "", "deleteBlockList", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)I", "dropBlockListTable", "", "getBlockListMaxId", "getBlockSettings", "", "getBlockedE164", "()[Ljava/lang/String;", "getBlockedListByNumber", "", "Lgogolook/callgogolook2/realm/obj/block/BlockListRealmObject;", "number", "e164", "getBlockedListForCheckBlock", "inputNumber", "inputE164", "getBlockedLogList", "getDbFile", "Ljava/io/File;", "getSmsBlockedList", "handleBlockListSyncResultFromServer", "blockDataArray", "Lorg/json/JSONArray;", "listener", "Lgogolook/callgogolook2/realm/BlockListRealmHelper$SyncBlockListListener;", "insertOrUpdateBlockListData", "blockListRealmObject", "blockListRealmObjects", "queryBlockListData", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "SyncBlockListListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.a */
/* loaded from: classes3-dex2jar.jar:j/a/n0/a.class */
public final class C13032a {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29459a;

    /* renamed from: h */
    public static final int f29466h = 0;

    /* renamed from: k */
    public static final C13032a f29469k = new C13032a();

    /* renamed from: b */
    public static long f29460b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29461c = C14975g.m662a(C13034b.f29470a);

    /* renamed from: d */
    public static final String f29462d = f29462d;

    /* renamed from: d */
    public static final String f29462d = f29462d;

    /* renamed from: e */
    public static final String f29463e = "version";

    /* renamed from: f */
    public static final String f29464f = f29464f;

    /* renamed from: f */
    public static final String f29464f = f29464f;

    /* renamed from: g */
    public static final int f29465g = f29465g;

    /* renamed from: g */
    public static final int f29465g = f29465g;

    /* renamed from: i */
    public static final int f29467i = 1;

    /* renamed from: j */
    public static final int f29468j = 2;

    /* renamed from: j.a.n0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$a.class */
    public interface AbstractC13033a {
        /* renamed from: a */
        void mo3764a();

        /* renamed from: a */
        void mo3763a(int i, String str, int i2);
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$b.class */
    public static final class C13034b extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13034b f29470a = new C13034b();

        /* renamed from: j.a.n0.a$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/a$b$a.class */
        public static final class C13035a implements RealmMigration {

            /* renamed from: a */
            public static final C13035a f29471a = new C13035a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13034b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("BlockList").schemaVersion(1L).modules(new BlockRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13035a.f29471a).build();
        }
    }

    /* renamed from: j.a.n0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$c.class */
    public static final class C13036c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ Map f29472a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13036c(Map map) {
            super(1);
            this.f29472a = map;
        }

        /* renamed from: a */
        public final C14989s invoke(Realm realm) {
            C14989s sVar;
            C15149k.m377b(realm, "realm");
            RealmResults<BlockListRealmObject> findAll = realm.where(BlockListRealmObject.class).notEqualTo("_type", (Integer) 0).notEqualTo("_status", (Integer) 2).distinct("_type").findAll();
            if (findAll != null) {
                for (BlockListRealmObject blockListRealmObject : findAll) {
                    Integer num = blockListRealmObject.get_type();
                    if (num != null) {
                        this.f29472a.put(Integer.valueOf(num.intValue()), true);
                    }
                }
                sVar = C14989s.f33022a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    /* renamed from: j.a.n0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$d.class */
    public static final class C13037d extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29473a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC13033a f29474b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13037d(JSONArray jSONArray, AbstractC13033a aVar) {
            super(1);
            this.f29473a = jSONArray;
            this.f29474b = aVar;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(20:15|16|171|17|18|181|19|20|165|21|(3:23|24|(2:26|(12:28|29|(8:32|(1:34)(1:35)|36|(2:38|39)(1:40)|41|(3:200|43|(3:199|45|203)(3:197|46|204))(3:196|47|(1:201)(2:49|205))|202|30)|198|50|51|(6:53|54|(8:57|(1:59)(1:60)|61|(2:63|64)(1:65)|66|(3:210|68|(3:209|70|213)(3:207|71|214))(3:206|72|(1:211)(2:74|215))|212|55)|208|75|76)|78|79|80|81|(10:83|84|86|(7:175|88|89|(3:91|92|(2:94|(2:96|(1:98)(1:99))(3:100|191|101)))|102|103|(12:177|105|(1:107)(1:108)|109|(1:111)|112|113|114|(1:116)(1:117)|118|187|119)(4:183|123|124|(7:169|126|(4:128|129|173|130)(3:131|190|132)|146|147|157|192)))(1:136)|137|138|185|139|140|(3:142|143|194)(1:193)))))|85|86|(0)(0)|137|138|185|139|140|(0)(0)) */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x03c1, code lost:
            r23 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:145:0x03c3, code lost:
            r18 = r16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x01e3, code lost:
            if (p626l.p631e0.C14966w.m712c(r0.subSequence(r39, r38 + 1).toString(), "+886", false, 2, null) != false) goto L_0x01e6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:136:0x038e A[Catch: Exception -> 0x03c9, TRY_ENTER, TryCatch #4 {Exception -> 0x03c9, blocks: (B:130:0x036f, B:131:0x0377, B:136:0x038e), top: B:173:0x036f }] */
        /* JADX WARN: Removed duplicated region for block: B:142:0x03a6 A[Catch: Exception -> 0x03c1, TRY_ENTER, TRY_LEAVE, TryCatch #10 {Exception -> 0x03c1, blocks: (B:139:0x0397, B:142:0x03a6), top: B:185:0x0397 }] */
        /* JADX WARN: Removed duplicated region for block: B:175:0x022c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:193:0x03f6 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [gogolook.callgogolook2.realm.obj.block.BlockListRealmObject] */
        /* JADX WARN: Type inference failed for: r26v1, types: [long] */
        /* JADX WARN: Type inference failed for: r30v0 */
        /* JADX WARN: Type inference failed for: r30v1, types: [long] */
        /* JADX WARN: Type inference failed for: r30v3 */
        /* JADX WARN: Unknown variable types count: 4 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p626l.C14989s invoke(io.realm.Realm r17) {
            /*
                Method dump skipped, instructions count: 1055
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13032a.C13037d.invoke(io.realm.Realm):l.s");
        }
    }

    /* renamed from: j.a.n0.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$e.class */
    public static final class C13038e extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29475a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13038e(List list) {
            super(1);
            this.f29475a = list;
        }

        /* renamed from: a */
        public final void m4731a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(BlockListRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13032a aVar = C13032a.f29469k;
            if (longValue <= C13032a.f29460b) {
                C13032a aVar2 = C13032a.f29469k;
                longValue = C13032a.f29460b + 1;
            }
            for (BlockListRealmObject blockListRealmObject : this.f29475a) {
                if (blockListRealmObject.getId() < 0) {
                    blockListRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29475a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4731a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$f.class */
    public static final class C13039f extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ BlockListRealmObject f29476a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13039f(BlockListRealmObject blockListRealmObject) {
            super(1);
            this.f29476a = blockListRealmObject;
        }

        /* renamed from: a */
        public final boolean m4730a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29476a.getId() < 0) {
                    RealmQuery where = realm.where(BlockListRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    BlockListRealmObject blockListRealmObject = this.f29476a;
                    C13032a aVar = C13032a.f29469k;
                    if (j2 <= C13032a.f29460b) {
                        C13032a aVar2 = C13032a.f29469k;
                        j2 = C13032a.f29460b + 1;
                    }
                    blockListRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29476a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4730a(realm));
        }
    }

    /* renamed from: j.a.n0.a$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/a$g.class */
    public static final class C13040g extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29477a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29478b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29479c;

        /* renamed from: d */
        public final /* synthetic */ String f29480d;

        /* renamed from: e */
        public final /* synthetic */ Sort f29481e;

        /* renamed from: f */
        public final /* synthetic */ C15164z f29482f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13040g(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort, C15164z zVar) {
            super(1);
            this.f29477a = strArr;
            this.f29478b = objArr;
            this.f29479c = aVarArr;
            this.f29480d = str;
            this.f29481e = sort;
            this.f29482f = zVar;
        }

        /* JADX WARN: Type inference failed for: r1v7, types: [java.util.List, T] */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.util.List, T] */
        /* renamed from: a */
        public final void m4729a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(BlockListRealmObject.class);
            C15149k.m383a((Object) where, "it.where(BlockListRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29477a, this.f29478b, this.f29479c);
            if (a == null) {
                throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.block.BlockListRealmObject>");
            } else if (this.f29480d == null || this.f29481e == null) {
                this.f29482f.f33152a = realm.copyFromRealm(a.findAll());
            } else {
                this.f29482f.f33152a = realm.copyFromRealm(a.findAll().sort(this.f29480d, this.f29481e));
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4729a(realm);
            return C14989s.f33022a;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13032a.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29459a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<BlockListRealmObject> m4751a(String str, String str2) {
        List<BlockListRealmObject> list;
        Realm b = C13193p.m4436b(f29469k.m4754a());
        if (b != null) {
            RealmQuery beginGroup = b.where(BlockListRealmObject.class).beginGroup().equalTo("_type", (Integer) 1).notEqualTo("_status", (Integer) 2).endGroup().beginGroup();
            RealmQuery realmQuery = beginGroup;
            if (!(str == null || str.length() == 0)) {
                realmQuery = beginGroup.m10371or().equalTo("_number", str);
            }
            boolean z = true;
            if (str2 != null) {
                z = str2.length() == 0;
            }
            RealmQuery realmQuery2 = realmQuery;
            if (!z) {
                realmQuery2 = realmQuery.m10371or().equalTo("_e164", str2);
            }
            list = b.copyFromRealm(realmQuery2.endGroup().findAll());
            b.close();
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public static final List<BlockListRealmObject> m4748a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        C15164z zVar = new C15164z();
        zVar.f33152a = null;
        RealmConfiguration a = f29469k.m4754a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4435b(a, new C13040g(strArr, objArr, aVarArr, str, sort, zVar));
        return (List) zVar.f33152a;
    }

    /* renamed from: a */
    public static final void m4750a(List<? extends BlockListRealmObject> list) {
        C15149k.m377b(list, "blockListRealmObjects");
        RealmConfiguration a = f29469k.m4754a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13038e(list));
        C14037j3.m2731a().mo2704a(new C13875a0());
    }

    /* renamed from: a */
    public static final void m4749a(JSONArray jSONArray, AbstractC13033a aVar) {
        if (jSONArray != null) {
            RealmConfiguration a = f29469k.m4754a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13037d(jSONArray, aVar));
        }
    }

    /* renamed from: a */
    public static final boolean m4753a(BlockListRealmObject blockListRealmObject) {
        C15149k.m377b(blockListRealmObject, "blockListRealmObject");
        RealmConfiguration a = f29469k.m4754a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13039f(blockListRealmObject));
        C14037j3.m2731a().mo2704a(new C13875a0());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final List<BlockListRealmObject> m4745b(String str, String str2) {
        List<BlockListRealmObject> list;
        Realm b = C13193p.m4436b(f29469k.m4754a());
        if (b != null) {
            boolean z = false;
            RealmQuery notEqualTo = b.where(BlockListRealmObject.class).beginGroup().notEqualTo("_type", (Integer) 0).notEqualTo("_status", (Integer) 2).endGroup().beginGroup().notEqualTo("_type", (Integer) 1);
            RealmQuery realmQuery = notEqualTo;
            if (!(str == null || str.length() == 0)) {
                realmQuery = notEqualTo.m10371or().equalTo("_number", str);
            }
            if (str2 == null || str2.length() == 0) {
                z = true;
            }
            RealmQuery realmQuery2 = realmQuery;
            if (!z) {
                realmQuery2 = realmQuery.m10371or().equalTo("_e164", str2);
            }
            list = b.copyFromRealm(realmQuery2.endGroup().sort("_type", Sort.ASCENDING).findAll());
            b.close();
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: b */
    public static final void m4747b() {
        Realm.compactRealm(f29469k.m4754a());
    }

    /* renamed from: c */
    public static final int m4744c() {
        Realm b = C13193p.m4436b(f29469k.m4754a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(BlockListRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: d */
    public static final Map<Integer, Boolean> m4742d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        RealmConfiguration a = f29469k.m4754a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4435b(a, new C13036c(linkedHashMap));
        return linkedHashMap;
    }

    /* renamed from: e */
    public static final String[] m4740e() {
        String[] strArr;
        List<BlockListRealmObject> f = m4738f();
        if (f != null && (!f.isEmpty())) {
            String[] strArr2 = new String[f.size()];
            int i = 0;
            int size = f.size();
            while (true) {
                strArr = strArr2;
                if (i >= size) {
                    break;
                }
                strArr2[i] = f.get(i).get_e164();
                i++;
            }
        } else {
            strArr = null;
        }
        return strArr;
    }

    /* renamed from: f */
    public static final List<BlockListRealmObject> m4738f() {
        List<BlockListRealmObject> list;
        Realm b = C13193p.m4436b(f29469k.m4754a());
        if (b != null) {
            list = b.copyFromRealm(b.where(BlockListRealmObject.class).notEqualTo("_type", (Integer) 0).notEqualTo("_status", (Integer) 2).sort("_createtime", Sort.DESCENDING).findAll());
            b.close();
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: g */
    public static final File m4736g() {
        RealmConfiguration a = f29469k.m4754a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: a */
    public final RealmConfiguration m4754a() {
        AbstractC14974f fVar = f29461c;
        AbstractC14906i iVar = f29459a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
