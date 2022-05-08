package gogolook.callgogolook2.realm.obj.iap;

import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import io.realm.AbstractC10914xa7a50c;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b#\b\u0017\u0018�� 02\u00020\u0001:\u00010B\u008d\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000e¢\u0006\u0002\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u0013\"\u0004\b%\u0010\u0015R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015R\u001a\u0010\u0010\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010!\"\u0004\b)\u0010#R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010\u0013\"\u0004\b+\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\u0013\"\u0004\b-\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0013\"\u0004\b/\u0010\u0015¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/iap/IapProductRealmObject;", "Lio/realm/RealmObject;", "productId", "", "type", "title", "description", "price", IapProductRealmObject.PRICE_CURRENCY_CODE, IapProductRealmObject.PRICE_AMOUNT_MICROS, "", IapProductRealmObject.SUBSCRIPTION_PERIOD, "productType", IapProductRealmObject.PRIORITY, "", IapProductRealmObject.EXPIRED_TIME, IapProductRealmObject.STATE, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJI)V", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "getExpiredTime", "()J", "setExpiredTime", "(J)V", "getPrice", "setPrice", "getPriceAmountMicros", "setPriceAmountMicros", "getPriceCurrencyCode", "setPriceCurrencyCode", "getPriority", "()I", "setPriority", "(I)V", "getProductId", "setProductId", "getProductType", "setProductType", "getState", "setState", "getSubscriptionPeriod", "setSubscriptionPeriod", "getTitle", "setTitle", "getType", "setType", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/IapProductRealmObject.class */
public class IapProductRealmObject extends RealmObject implements AbstractC10914xa7a50c {
    public static final C5071a Companion = new C5071a(null);
    public static final String DESCRIPTION = "description";
    public static final String EXPIRED_TIME = "expiredTime";
    public static final long ID_DEFAULT = -1;
    public static final String PRICE = "price";
    public static final String PRICE_AMOUNT_MICROS = "priceAmountMicros";
    public static final double PRICE_AMOUNT_MICROS_NUM = 1000000.0d;
    public static final String PRICE_CURRENCY_CODE = "priceCurrencyCode";
    public static final String PRIORITY = "priority";
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_PROMOTE = 1;
    public static final String PRODUCT_ID = "productId";
    public static final String PRODUCT_TYPE = "productType";
    public static final String PRODUCT_TYPE_DEFAULT_BIANNUAL = "ad_free_biannual";
    public static final String PRODUCT_TYPE_DEFAULT_M = "ad_free_m";
    public static final String PRODUCT_TYPE_DEFAULT_Y = "ad_free_y";
    public static final String STATE = "state";
    public static final int STATE_AVAILABLE = 1;
    public static final int STATE_DEFAULT = -1;
    public static final int STATE_SYNC_FAILED = 2;
    public static final int STATE_TERMINATED = 0;
    public static final String SUBSCRIPTION_PERIOD = "subscriptionPeriod";
    public static final long TIME_DEFAULT = -1;
    public static final String TITLE = "title";
    public static final String TYPE = "type";
    public String description;
    public long expiredTime;
    public String price;
    public long priceAmountMicros;
    public String priceCurrencyCode;
    public int priority;
    @PrimaryKey
    public String productId;
    public String productType;
    public int state;
    public String subscriptionPeriod;
    public String title;
    public String type;

    /* renamed from: gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/iap/IapProductRealmObject$a.class */
    public static final class C5071a {
        public C5071a() {
        }

        public /* synthetic */ C5071a(C15145g gVar) {
            this();
        }
    }

    public IapProductRealmObject() {
        this(null, null, null, null, null, null, 0L, null, null, 0, 0L, 0, 4095, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str) {
        this(str, null, null, null, null, null, 0L, null, null, 0, 0L, 0, 4094, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2) {
        this(str, str2, null, null, null, null, 0L, null, null, 0, 0L, 0, 4092, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3) {
        this(str, str2, str3, null, null, null, 0L, null, null, 0, 0L, 0, 4088, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, null, null, 0L, null, null, 0, 0L, 0, 4080, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5) {
        this(str, str2, str3, str4, str5, null, 0L, null, null, 0, 0L, 0, 4064, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6) {
        this(str, str2, str3, str4, str5, str6, 0L, null, null, 0, 0L, 0, 4032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6, long j) {
        this(str, str2, str3, str4, str5, str6, j, null, null, 0, 0L, 0, 3968, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6, long j, String str7) {
        this(str, str2, str3, str4, str5, str6, j, str7, null, 0, 0L, 0, OpusReader.DEFAULT_SEEK_PRE_ROLL_SAMPLES, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6, long j, String str7, String str8) {
        this(str, str2, str3, str4, str5, str6, j, str7, str8, 0, 0L, 0, 3584, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6, long j, String str7, String str8, int i) {
        this(str, str2, str3, str4, str5, str6, j, str7, str8, i, 0L, 0, 3072, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6, long j, String str7, String str8, int i, long j2) {
        this(str, str2, str3, str4, str5, str6, j, str7, str8, i, j2, 0, 2048, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public IapProductRealmObject(String str, String str2, String str3, String str4, String str5, String str6, long j, String str7, String str8, int i, long j2, int i2) {
        C15149k.m377b(str, "productId");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$productId(str);
        realmSet$type(str2);
        realmSet$title(str3);
        realmSet$description(str4);
        realmSet$price(str5);
        realmSet$priceCurrencyCode(str6);
        realmSet$priceAmountMicros(j);
        realmSet$subscriptionPeriod(str7);
        realmSet$productType(str8);
        realmSet$priority(i);
        realmSet$expiredTime(j2);
        realmSet$state(i2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ IapProductRealmObject(java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, long r23, java.lang.String r25, java.lang.String r26, int r27, long r28, int r30, int r31, p626l.p641z.p643d.C15145g r32) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, long, java.lang.String, java.lang.String, int, long, int, int, l.z.d.g):void");
    }

    public final String getDescription() {
        return realmGet$description();
    }

    public final long getExpiredTime() {
        return realmGet$expiredTime();
    }

    public final String getPrice() {
        return realmGet$price();
    }

    public final long getPriceAmountMicros() {
        return realmGet$priceAmountMicros();
    }

    public final String getPriceCurrencyCode() {
        return realmGet$priceCurrencyCode();
    }

    public final int getPriority() {
        return realmGet$priority();
    }

    public final String getProductId() {
        return realmGet$productId();
    }

    public final String getProductType() {
        return realmGet$productType();
    }

    public final int getState() {
        return realmGet$state();
    }

    public final String getSubscriptionPeriod() {
        return realmGet$subscriptionPeriod();
    }

    public final String getTitle() {
        return realmGet$title();
    }

    public final String getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$description() {
        return this.description;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public long realmGet$expiredTime() {
        return this.expiredTime;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$price() {
        return this.price;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public long realmGet$priceAmountMicros() {
        return this.priceAmountMicros;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$priceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public int realmGet$priority() {
        return this.priority;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$productId() {
        return this.productId;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$productType() {
        return this.productType;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public int realmGet$state() {
        return this.state;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$subscriptionPeriod() {
        return this.subscriptionPeriod;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$title() {
        return this.title;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public String realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$description(String str) {
        this.description = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$expiredTime(long j) {
        this.expiredTime = j;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$price(String str) {
        this.price = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$priceAmountMicros(long j) {
        this.priceAmountMicros = j;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$priceCurrencyCode(String str) {
        this.priceCurrencyCode = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$priority(int i) {
        this.priority = i;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$productId(String str) {
        this.productId = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$productType(String str) {
        this.productType = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$state(int i) {
        this.state = i;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$subscriptionPeriod(String str) {
        this.subscriptionPeriod = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$title(String str) {
        this.title = str;
    }

    @Override // io.realm.AbstractC10914xa7a50c
    public void realmSet$type(String str) {
        this.type = str;
    }

    public final void setDescription(String str) {
        realmSet$description(str);
    }

    public final void setExpiredTime(long j) {
        realmSet$expiredTime(j);
    }

    public final void setPrice(String str) {
        realmSet$price(str);
    }

    public final void setPriceAmountMicros(long j) {
        realmSet$priceAmountMicros(j);
    }

    public final void setPriceCurrencyCode(String str) {
        realmSet$priceCurrencyCode(str);
    }

    public final void setPriority(int i) {
        realmSet$priority(i);
    }

    public final void setProductId(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$productId(str);
    }

    public final void setProductType(String str) {
        realmSet$productType(str);
    }

    public final void setState(int i) {
        realmSet$state(i);
    }

    public final void setSubscriptionPeriod(String str) {
        realmSet$subscriptionPeriod(str);
    }

    public final void setTitle(String str) {
        realmSet$title(str);
    }

    public final void setType(String str) {
        realmSet$type(str);
    }
}
