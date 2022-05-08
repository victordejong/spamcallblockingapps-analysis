package p459j.p460a.p604y0.p605c.p606c;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Entity(tableName = VasMessageRealm.TABLE_NAME)
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b1\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018�� H2\u00020\u0001:\u0001HBu\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007¢\u0006\u0002\u0010\u0011J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0007HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0007HÆ\u0003J\t\u00109\u001a\u00020\u0007HÆ\u0003J\t\u0010:\u001a\u00020\nHÆ\u0003J\t\u0010;\u001a\u00020\u0007HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u000eHÆ\u0003Jw\u0010>\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0007HÆ\u0001J\u0013\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010B\u001a\u00020CJ\u0006\u0010D\u001a\u00020EJ\t\u0010F\u001a\u00020\u0003HÖ\u0001J\b\u0010G\u001a\u00020\u0007H\u0016R\u001e\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001e\u0010\u001c\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001e\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\u001e\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\u0017\"\u0004\b$\u0010\u0019R\u001e\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0013\"\u0004\b&\u0010\u0015R\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u0013\"\u0004\b,\u0010\u0015R\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010\u0013\"\u0004\b.\u0010\u0015R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u0010\u0013\"\u0004\b0\u0010\u0015R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u0010\u001e\"\u0004\b2\u0010 ¨\u0006I"}, m815d2 = {"Lgogolook/callgogolook2/vas/data/local/VasMessage;", "", "subscriptionType", "", "promotionType", "cancelType", "e164", "", "content", "time", "", "name", VasMessageRealm.PRICE_TYPE, "price", "", VasMessageRealm.PERIOD_TYPE, "period", "(IIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IDILjava/lang/String;)V", "getCancelType", "()I", "setCancelType", "(I)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getE164", "setE164", "id", "getId", "()J", "setId", "(J)V", "getName", "setName", "getPeriod", "setPeriod", "getPeriod_type", "setPeriod_type", "getPrice", "()D", "setPrice", "(D)V", "getPrice_type", "setPrice_type", "getPromotionType", "setPromotionType", "getSubscriptionType", "setSubscriptionType", "getTime", "setTime", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "extractVasInfoPack", "Lgogolook/callgogolook2/vas/util/SimpleVasInfoPack;", "getVasPeriod", "Lgogolook/callgogolook2/vas/data/local/VasPeriod;", "hashCode", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.c.c.d */
/* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/d.class */
public final class C14492d {
    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = "id")

    /* renamed from: a */
    public long f32397a;
    @ColumnInfo(name = VasMessageRealm.SUBSCRIPTION_TYPE)

    /* renamed from: b */
    public int f32398b;
    @ColumnInfo(name = VasMessageRealm.PROMOTION_TYPE)

    /* renamed from: c */
    public int f32399c;
    @ColumnInfo(name = VasMessageRealm.CANCEL_TYPE)

    /* renamed from: d */
    public int f32400d;
    @ColumnInfo(name = "e164")

    /* renamed from: e */
    public String f32401e;
    @ColumnInfo(name = "content")

    /* renamed from: f */
    public String f32402f;
    @ColumnInfo(name = "time")

    /* renamed from: g */
    public long f32403g;
    @ColumnInfo(name = "name")

    /* renamed from: h */
    public String f32404h;
    @ColumnInfo(name = VasMessageRealm.PRICE_TYPE)

    /* renamed from: i */
    public int f32405i;
    @ColumnInfo(name = "price")

    /* renamed from: j */
    public double f32406j;
    @ColumnInfo(name = VasMessageRealm.PERIOD_TYPE)

    /* renamed from: k */
    public int f32407k;
    @ColumnInfo(name = "period")

    /* renamed from: l */
    public String f32408l;

    /* renamed from: j.a.y0.c.c.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/d$a.class */
    public static final class C14493a {
        public C14493a() {
        }

        public /* synthetic */ C14493a(C15145g gVar) {
            this();
        }
    }

    static {
        new C14493a(null);
    }

    public C14492d() {
        this(0, 0, 0, null, null, 0L, null, 0, 0.0d, 0, null, 2047, null);
    }

    public C14492d(int i, int i2, int i3, String str, String str2, long j, String str3, int i4, double d, int i5, String str4) {
        C15149k.m377b(str, "e164");
        C15149k.m377b(str2, "content");
        C15149k.m377b(str3, "name");
        C15149k.m377b(str4, "period");
        this.f32398b = i;
        this.f32399c = i2;
        this.f32400d = i3;
        this.f32401e = str;
        this.f32402f = str2;
        this.f32403g = j;
        this.f32404h = str3;
        this.f32405i = i4;
        this.f32406j = d;
        this.f32407k = i5;
        this.f32408l = str4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C14492d(int r16, int r17, int r18, java.lang.String r19, java.lang.String r20, long r21, java.lang.String r23, int r24, double r25, int r27, java.lang.String r28, int r29, p626l.p641z.p643d.C15145g r30) {
        /*
            r15 = this;
            r0 = r29
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000e
            int r0 = p459j.p460a.p604y0.p610e.C14568b.f32544k
            r16 = r0
            goto L_0x000e
        L_0x000e:
            r0 = r29
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001c
            int r0 = p459j.p460a.p604y0.p610e.C14568b.f32544k
            r17 = r0
            goto L_0x001c
        L_0x001c:
            r0 = r29
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002a
            int r0 = p459j.p460a.p604y0.p610e.C14568b.f32544k
            r18 = r0
            goto L_0x002a
        L_0x002a:
            java.lang.String r0 = ""
            r30 = r0
            r0 = r29
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003d
            java.lang.String r0 = ""
            r19 = r0
            goto L_0x003d
        L_0x003d:
            r0 = r29
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004c
            java.lang.String r0 = ""
            r20 = r0
            goto L_0x004c
        L_0x004c:
            r0 = r29
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x005a
            r0 = 0
            r21 = r0
            goto L_0x005a
        L_0x005a:
            r0 = r29
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0069
            r0 = r30
            r23 = r0
            goto L_0x0069
        L_0x0069:
            r0 = r29
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x007a
            int r0 = p459j.p460a.p604y0.p610e.C14568b.f32549p
            r24 = r0
            goto L_0x007a
        L_0x007a:
            r0 = r29
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0089
            r0 = 0
            r25 = r0
            goto L_0x0089
        L_0x0089:
            r0 = r29
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x009a
            int r0 = p459j.p460a.p604y0.p610e.C14568b.f32549p
            r27 = r0
            goto L_0x009a
        L_0x009a:
            r0 = r29
            r1 = 1024(0x400, float:1.435E-42)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x00ae
            j.a.y0.c.c.g r0 = p459j.p460a.p604y0.p605c.p606c.EnumC14499g.NONE
            java.lang.String r0 = r0.name()
            r28 = r0
            goto L_0x00ae
        L_0x00ae:
            r0 = r15
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            r7 = r23
            r8 = r24
            r9 = r25
            r10 = r27
            r11 = r28
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p605c.p606c.C14492d.<init>(int, int, int, java.lang.String, java.lang.String, long, java.lang.String, int, double, int, java.lang.String, int, l.z.d.g):void");
    }

    /* renamed from: a */
    public final int m1243a() {
        return this.f32400d;
    }

    /* renamed from: a */
    public final void m1242a(long j) {
        this.f32397a = j;
    }

    /* renamed from: b */
    public final String m1241b() {
        return this.f32402f;
    }

    /* renamed from: c */
    public final String m1240c() {
        return this.f32401e;
    }

    /* renamed from: d */
    public final long m1239d() {
        return this.f32397a;
    }

    /* renamed from: e */
    public final String m1238e() {
        return this.f32404h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14492d)) {
            return false;
        }
        C14492d dVar = (C14492d) obj;
        if (!(this.f32398b == dVar.f32398b)) {
            return false;
        }
        if (!(this.f32399c == dVar.f32399c)) {
            return false;
        }
        if (!(this.f32400d == dVar.f32400d) || !C15149k.m384a((Object) this.f32401e, (Object) dVar.f32401e) || !C15149k.m384a((Object) this.f32402f, (Object) dVar.f32402f)) {
            return false;
        }
        if (!(this.f32403g == dVar.f32403g) || !C15149k.m384a((Object) this.f32404h, (Object) dVar.f32404h)) {
            return false;
        }
        if (!(this.f32405i == dVar.f32405i) || Double.compare(this.f32406j, dVar.f32406j) != 0) {
            return false;
        }
        return (this.f32407k == dVar.f32407k) && C15149k.m384a((Object) this.f32408l, (Object) dVar.f32408l);
    }

    /* renamed from: f */
    public final String m1237f() {
        return this.f32408l;
    }

    /* renamed from: g */
    public final int m1236g() {
        return this.f32407k;
    }

    /* renamed from: h */
    public final double m1235h() {
        return this.f32406j;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        hashCode = Integer.valueOf(this.f32398b).hashCode();
        hashCode2 = Integer.valueOf(this.f32399c).hashCode();
        hashCode3 = Integer.valueOf(this.f32400d).hashCode();
        String str = this.f32401e;
        int i = 0;
        int hashCode8 = str != null ? str.hashCode() : 0;
        String str2 = this.f32402f;
        int hashCode9 = str2 != null ? str2.hashCode() : 0;
        hashCode4 = Long.valueOf(this.f32403g).hashCode();
        String str3 = this.f32404h;
        int hashCode10 = str3 != null ? str3.hashCode() : 0;
        hashCode5 = Integer.valueOf(this.f32405i).hashCode();
        hashCode6 = Double.valueOf(this.f32406j).hashCode();
        hashCode7 = Integer.valueOf(this.f32407k).hashCode();
        String str4 = this.f32408l;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode4) * 31) + hashCode10) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    /* renamed from: i */
    public final int m1234i() {
        return this.f32405i;
    }

    /* renamed from: j */
    public final int m1233j() {
        return this.f32399c;
    }

    /* renamed from: k */
    public final int m1232k() {
        return this.f32398b;
    }

    /* renamed from: l */
    public final long m1231l() {
        return this.f32403g;
    }

    public String toString() {
        return "[e164: " + this.f32401e + UserProfile.CARD_CATE_SEPARATOR + "subscription_type: " + this.f32398b + UserProfile.CARD_CATE_SEPARATOR + "promotion_type: " + this.f32399c + UserProfile.CARD_CATE_SEPARATOR + "content: " + this.f32402f + UserProfile.CARD_CATE_SEPARATOR + "name: " + this.f32404h + UserProfile.CARD_CATE_SEPARATOR + "time: " + this.f32403g + UserProfile.CARD_CATE_SEPARATOR + "price_type: " + this.f32405i + UserProfile.CARD_CATE_SEPARATOR + "price: " + this.f32406j + UserProfile.CARD_CATE_SEPARATOR + "period_type: " + this.f32407k + UserProfile.CARD_CATE_SEPARATOR + "period: " + this.f32408l + ']';
    }
}
