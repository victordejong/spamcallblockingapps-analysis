package p081h.p160h.p179e.p180a.p187n;

import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import com.gogolook.whoscallsdk.core.realm.SdkNumber;
import com.gogolook.whoscallsdk.core.realm.WCRealmManager;
import com.google.gson.Gson;
import io.realm.Realm;
import kotlin.Metadata;
import p626l.C14984n;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/RealmNumDbHelper;", "", "()V", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.n.e */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/n/e.class */
public final class C6395e {

    /* renamed from: b */
    public static final C6396a f15918b = new C6396a(null);

    /* renamed from: a */
    public static final Gson f15917a = new Gson();

    /* renamed from: h.h.e.a.n.e$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/e$a.class */
    public static final class C6396a {
        public C6396a() {
        }

        public /* synthetic */ C6396a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Gson m22829a() {
            return C6395e.f15917a;
        }

        /* renamed from: a */
        public final C14984n<NumInfo, Long, String> m22827a(String str) {
            String str2;
            C15149k.m377b(str, "e164");
            Realm realmDatabase = WCRealmManager.INSTANCE.getRealmDatabase();
            NumInfo numInfo = null;
            numInfo = null;
            long j = 0;
            if (realmDatabase != null) {
                SdkNumber sdkNumber = (SdkNumber) realmDatabase.where(SdkNumber.class).equalTo("e164", str).findFirst();
                if (sdkNumber != null) {
                    j = sdkNumber.realmGet$expiredtime();
                    str2 = sdkNumber.realmGet$etag();
                    numInfo = (NumInfo) m22829a().m30982a(sdkNumber.realmGet$data(), (Class<Object>) NumInfo.class);
                    if (numInfo != null) {
                        numInfo.setExpiredTime$whoscallSDK_core_whoscallDebug(j);
                    }
                } else {
                    str2 = null;
                }
                realmDatabase.close();
            } else {
                str2 = null;
            }
            return new C14984n<>(numInfo, Long.valueOf(j), str2);
        }

        /* renamed from: a */
        public final void m22828a(long j) {
            Realm realmDatabase = WCRealmManager.INSTANCE.getRealmDatabase();
            if (realmDatabase != null) {
                realmDatabase.beginTransaction();
                realmDatabase.where(SdkNumber.class).lessThan("expiredtime", j).findAll().deleteAllFromRealm();
                realmDatabase.commitTransaction();
                realmDatabase.close();
            }
        }

        /* renamed from: a */
        public final void m22826a(String str, String str2, long j, NumInfo numInfo) {
            C15149k.m377b(str, "e164");
            C15149k.m377b(str2, "etag");
            C15149k.m377b(numInfo, "numInfo");
            Realm realmDatabase = WCRealmManager.INSTANCE.getRealmDatabase();
            if (realmDatabase != null) {
                String a = m22829a().m30988a(numInfo);
                SdkNumber sdkNumber = new SdkNumber();
                sdkNumber.realmSet$e164(str);
                sdkNumber.realmSet$etag(str2);
                sdkNumber.realmSet$expiredtime(j);
                sdkNumber.realmSet$data(a);
                realmDatabase.beginTransaction();
                SdkNumber sdkNumber2 = (SdkNumber) realmDatabase.where(SdkNumber.class).equalTo("e164", str).findFirst();
                if (sdkNumber2 != null) {
                    sdkNumber2.realmSet$etag(str2);
                    sdkNumber2.realmSet$expiredtime(j);
                    sdkNumber2.realmSet$data(a);
                } else {
                    realmDatabase.insertOrUpdate(sdkNumber);
                }
                realmDatabase.commitTransaction();
                realmDatabase.close();
            }
        }

        /* renamed from: a */
        public final void m22825a(String str, String str2, Long l, NumInfo numInfo) {
            C15149k.m377b(str, "e164");
            Realm realmDatabase = WCRealmManager.INSTANCE.getRealmDatabase();
            if (realmDatabase != null) {
                realmDatabase.beginTransaction();
                SdkNumber sdkNumber = (SdkNumber) realmDatabase.where(SdkNumber.class).equalTo("e164", str).findFirst();
                if (sdkNumber != null) {
                    if (!(str2 == null || str2.length() == 0)) {
                        sdkNumber.realmSet$etag(str2);
                    }
                    if (l != null && l.longValue() > 0) {
                        sdkNumber.realmSet$expiredtime(l.longValue());
                    }
                    if (numInfo != null) {
                        sdkNumber.realmSet$data(C6395e.f15918b.m22829a().m30988a(numInfo));
                    }
                }
                realmDatabase.commitTransaction();
                realmDatabase.close();
            }
        }

        /* renamed from: b */
        public final void m22824b() {
            Realm realmDatabase = WCRealmManager.INSTANCE.getRealmDatabase();
            if (realmDatabase != null) {
                realmDatabase.beginTransaction();
                realmDatabase.where(SdkNumber.class).findAll().deleteAllFromRealm();
                realmDatabase.commitTransaction();
                realmDatabase.close();
            }
        }
    }
}
