package p459j.p460a.p503e0;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import androidx.collection.SparseArrayCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.maps.model.LatLng;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0011\bÆ\u0002\u0018��2\u00020\u0001:\u000f\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jt\u0010\u0003\u001a\u00020\u0004\"\b\b��\u0010\u0005*\u00020\u0006\"\n\b\u0001\u0010\u0007\u0018\u0001*\u00020\b2\u0006\u0010\t\u001a\u0002H\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r26\u0010\u000e\u001a2\u0012\u0013\u0012\u0011H\u0005¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\t\u0012\u0013\u0012\u0011H\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00120\u000fH\u0086\b¢\u0006\u0002\u0010\u0013¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NdpInfoViewData;", "", "()V", "bindViewIfDataExist", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "Lgogolook/callgogolook2/adapter/ViewData;", "view", "type", "", "data", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$TypeViewData;", "bindViewAction", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "", "(Landroid/view/View;ILgogolook/callgogolook2/ndp/NdpInfoViewData$TypeViewData;Lkotlin/jvm/functions/Function2;)Z", "AdViewData", "AddressData", "BusinessHourData", "CommunityReviewViewData", "ContactInfoViewData", "DisclaimerViewData", "IntroductionViewData", "KeywordViewData", "MapData", "NumberViewData", "PhotoListViewData", "PublicSearchViewData", "RatingViewData", "ServiceAreaData", "TypeViewData", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.f */
/* loaded from: classes3-dex2jar.jar:j/a/e0/f.class */
public final class C12300f {

    /* renamed from: a */
    public static final C12300f f27753a = new C12300f();

    /* renamed from: j.a.e0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$a.class */
    public static final class C12301a implements AbstractC12391a {

        /* renamed from: a */
        public final AbstractC6207d f27754a;

        /* renamed from: b */
        public final AbstractC6207d.AbstractC6208a f27755b;

        /* renamed from: c */
        public final BaseNativeAdRenderer.AdCustomActionListener f27756c;

        /* renamed from: d */
        public boolean f27757d;

        /* renamed from: e */
        public boolean f27758e;

        /* renamed from: f */
        public boolean f27759f;

        /* renamed from: g */
        public final int f27760g;

        public C12301a(AbstractC6207d dVar, AbstractC6207d.AbstractC6208a aVar, BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener, boolean z, boolean z2, boolean z3, int i) {
            C15149k.m377b(dVar, "adObject");
            C15149k.m377b(aVar, "adEventListener");
            C15149k.m377b(adCustomActionListener, "adCustomEventListener");
            this.f27754a = dVar;
            this.f27755b = aVar;
            this.f27756c = adCustomActionListener;
            this.f27757d = z;
            this.f27758e = z2;
            this.f27759f = z3;
            this.f27760g = i;
        }

        public /* synthetic */ C12301a(AbstractC6207d dVar, AbstractC6207d.AbstractC6208a aVar, BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener, boolean z, boolean z2, boolean z3, int i, int i2, C15145g gVar) {
            this(dVar, aVar, adCustomActionListener, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? false : z3, (i2 & 64) != 0 ? 200 : i);
        }

        /* renamed from: a */
        public final BaseNativeAdRenderer.AdCustomActionListener m6437a() {
            return this.f27756c;
        }

        /* renamed from: a */
        public final void m6436a(boolean z) {
            this.f27757d = z;
        }

        /* renamed from: b */
        public final AbstractC6207d.AbstractC6208a m6435b() {
            return this.f27755b;
        }

        /* renamed from: b */
        public final void m6434b(boolean z) {
            this.f27759f = z;
        }

        /* renamed from: c */
        public final AbstractC6207d m6433c() {
            return this.f27754a;
        }

        /* renamed from: c */
        public final void m6432c(boolean z) {
            this.f27758e = z;
        }

        /* renamed from: d */
        public final boolean m6431d() {
            return this.f27757d;
        }

        /* renamed from: e */
        public final boolean m6430e() {
            return this.f27759f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12301a)) {
                return false;
            }
            C12301a aVar = (C12301a) obj;
            if (!C15149k.m384a(this.f27754a, aVar.f27754a) || !C15149k.m384a(this.f27755b, aVar.f27755b) || !C15149k.m384a(this.f27756c, aVar.f27756c)) {
                return false;
            }
            if (!(this.f27757d == aVar.f27757d)) {
                return false;
            }
            if (!(this.f27758e == aVar.f27758e)) {
                return false;
            }
            if (!(this.f27759f == aVar.f27759f)) {
                return false;
            }
            return getViewType() == aVar.getViewType();
        }

        /* renamed from: f */
        public final boolean m6429f() {
            return this.f27758e;
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27760g;
        }

        public int hashCode() {
            int hashCode;
            AbstractC6207d dVar = this.f27754a;
            int i = 0;
            int hashCode2 = dVar != null ? dVar.hashCode() : 0;
            AbstractC6207d.AbstractC6208a aVar = this.f27755b;
            int hashCode3 = aVar != null ? aVar.hashCode() : 0;
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = this.f27756c;
            if (adCustomActionListener != null) {
                i = adCustomActionListener.hashCode();
            }
            boolean z = this.f27757d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            boolean z2 = this.f27758e;
            int i3 = z2 ? 1 : 0;
            if (z2) {
                i3 = 1;
            }
            boolean z3 = this.f27759f;
            int i4 = z3 ? 1 : 0;
            if (z3) {
                i4 = 1;
            }
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (((((((((((hashCode2 * 31) + hashCode3) * 31) + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode;
        }

        public String toString() {
            return "AdViewData(adObject=" + this.f27754a + ", adEventListener=" + this.f27755b + ", adCustomEventListener=" + this.f27756c + ", isBound=" + this.f27757d + ", isClosed=" + this.f27758e + ", isClicked=" + this.f27759f + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$b.class */
    public static final class C12302b implements AbstractC12391a {

        /* renamed from: a */
        public final String f27761a;

        /* renamed from: b */
        public final int f27762b;

        public C12302b(String str, int i) {
            C15149k.m377b(str, "address");
            this.f27761a = str;
            this.f27762b = i;
        }

        public /* synthetic */ C12302b(String str, int i, int i2, C15145g gVar) {
            this(str, (i2 & 2) != 0 ? 200 : i);
        }

        /* renamed from: a */
        public final String m6428a() {
            return this.f27761a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12302b)) {
                return false;
            }
            C12302b bVar = (C12302b) obj;
            if (!C15149k.m384a((Object) this.f27761a, (Object) bVar.f27761a)) {
                return false;
            }
            return getViewType() == bVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27762b;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f27761a;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "AddressData(address=" + this.f27761a + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$c.class */
    public static final class C12303c implements AbstractC12391a {

        /* renamed from: a */
        public final C14978j<SpannableStringBuilder, SpannableStringBuilder> f27763a;

        /* renamed from: b */
        public final String f27764b;

        /* renamed from: c */
        public final boolean f27765c;

        /* renamed from: d */
        public final String f27766d;

        /* renamed from: e */
        public boolean f27767e;

        /* renamed from: f */
        public final int f27768f;

        /* JADX WARN: Multi-variable type inference failed */
        public C12303c(C14978j<? extends SpannableStringBuilder, ? extends SpannableStringBuilder> jVar, String str, boolean z, String str2, boolean z2, int i) {
            this.f27763a = jVar;
            this.f27764b = str;
            this.f27765c = z;
            this.f27766d = str2;
            this.f27767e = z2;
            this.f27768f = i;
        }

        public /* synthetic */ C12303c(C14978j jVar, String str, boolean z, String str2, boolean z2, int i, int i2, C15145g gVar) {
            this(jVar, str, z, str2, (i2 & 16) != 0 ? true : z2, (i2 & 32) != 0 ? 203 : i);
        }

        /* renamed from: a */
        public final void m6426a(boolean z) {
            this.f27767e = z;
        }

        /* renamed from: a */
        public final boolean m6427a() {
            return this.f27767e;
        }

        /* renamed from: b */
        public final String m6425b() {
            return this.f27766d;
        }

        /* renamed from: c */
        public final String m6424c() {
            return this.f27764b;
        }

        /* renamed from: d */
        public final C14978j<SpannableStringBuilder, SpannableStringBuilder> m6423d() {
            return this.f27763a;
        }

        /* renamed from: e */
        public final boolean m6422e() {
            return this.f27765c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12303c)) {
                return false;
            }
            C12303c cVar = (C12303c) obj;
            if (!C15149k.m384a(this.f27763a, cVar.f27763a) || !C15149k.m384a((Object) this.f27764b, (Object) cVar.f27764b)) {
                return false;
            }
            if (!(this.f27765c == cVar.f27765c) || !C15149k.m384a((Object) this.f27766d, (Object) cVar.f27766d)) {
                return false;
            }
            if (!(this.f27767e == cVar.f27767e)) {
                return false;
            }
            return getViewType() == cVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27768f;
        }

        public int hashCode() {
            int hashCode;
            C14978j<SpannableStringBuilder, SpannableStringBuilder> jVar = this.f27763a;
            int i = 0;
            int hashCode2 = jVar != null ? jVar.hashCode() : 0;
            String str = this.f27764b;
            int hashCode3 = str != null ? str.hashCode() : 0;
            boolean z = this.f27765c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            String str2 = this.f27766d;
            if (str2 != null) {
                i = str2.hashCode();
            }
            boolean z2 = this.f27767e;
            int i3 = z2 ? 1 : 0;
            if (z2) {
                i3 = 1;
            }
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (((((((((hashCode2 * 31) + hashCode3) * 31) + i2) * 31) + i) * 31) + i3) * 31) + hashCode;
        }

        public String toString() {
            return "BusinessHourData(openHourString=" + this.f27763a + ", openHourNote=" + this.f27764b + ", isOpenNow=" + this.f27765c + ", hoursToday=" + this.f27766d + ", expanded=" + this.f27767e + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$d.class */
    public static final class C12304d implements AbstractC12391a {

        /* renamed from: a */
        public final NumberInfo.Whoscall.Tag f27769a;

        /* renamed from: b */
        public final List<String> f27770b;

        /* renamed from: c */
        public final AbstractC15107a<C14989s> f27771c;

        /* renamed from: d */
        public final int f27772d;

        public C12304d(NumberInfo.Whoscall.Tag tag, List<String> list, AbstractC15107a<C14989s> aVar, int i) {
            C15149k.m377b(aVar, "addTagClickAction");
            this.f27769a = tag;
            this.f27770b = list;
            this.f27771c = aVar;
            this.f27772d = i;
        }

        public /* synthetic */ C12304d(NumberInfo.Whoscall.Tag tag, List list, AbstractC15107a aVar, int i, int i2, C15145g gVar) {
            this(tag, list, aVar, (i2 & 8) != 0 ? 400 : i);
        }

        /* renamed from: a */
        public final AbstractC15107a<C14989s> m6421a() {
            return this.f27771c;
        }

        /* renamed from: b */
        public final List<String> m6420b() {
            return this.f27770b;
        }

        /* renamed from: c */
        public final NumberInfo.Whoscall.Tag m6419c() {
            return this.f27769a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12304d)) {
                return false;
            }
            C12304d dVar = (C12304d) obj;
            if (!C15149k.m384a(this.f27769a, dVar.f27769a) || !C15149k.m384a(this.f27770b, dVar.f27770b) || !C15149k.m384a(this.f27771c, dVar.f27771c)) {
                return false;
            }
            return getViewType() == dVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27772d;
        }

        public int hashCode() {
            int hashCode;
            NumberInfo.Whoscall.Tag tag = this.f27769a;
            int i = 0;
            int hashCode2 = tag != null ? tag.hashCode() : 0;
            List<String> list = this.f27770b;
            int hashCode3 = list != null ? list.hashCode() : 0;
            AbstractC15107a<C14989s> aVar = this.f27771c;
            if (aVar != null) {
                i = aVar.hashCode();
            }
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (((((hashCode2 * 31) + hashCode3) * 31) + i) * 31) + hashCode;
        }

        public String toString() {
            return "CommunityReviewViewData(myTag=" + this.f27769a + ", candidateList=" + this.f27770b + ", addTagClickAction=" + this.f27771c + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$e */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$e.class */
    public static final class C12305e implements AbstractC12391a {

        /* renamed from: a */
        public final String f27773a;

        /* renamed from: b */
        public final int f27774b;

        public C12305e(String str, int i) {
            C15149k.m377b(str, "contactInfoString");
            this.f27773a = str;
            this.f27774b = i;
        }

        public /* synthetic */ C12305e(String str, int i, int i2, C15145g gVar) {
            this(str, (i2 & 2) != 0 ? 5 : i);
        }

        /* renamed from: a */
        public final String m6418a() {
            return this.f27773a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12305e)) {
                return false;
            }
            C12305e eVar = (C12305e) obj;
            if (!C15149k.m384a((Object) this.f27773a, (Object) eVar.f27773a)) {
                return false;
            }
            return getViewType() == eVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27774b;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f27773a;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "ContactInfoViewData(contactInfoString=" + this.f27773a + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$f */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$f.class */
    public static final class C12306f implements AbstractC12391a {

        /* renamed from: a */
        public final AbstractC15107a<C14989s> f27775a;

        /* renamed from: b */
        public final int f27776b;

        /* renamed from: a */
        public final AbstractC15107a<C14989s> m6417a() {
            return this.f27775a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12306f)) {
                return false;
            }
            C12306f fVar = (C12306f) obj;
            if (!C15149k.m384a(this.f27775a, fVar.f27775a)) {
                return false;
            }
            return getViewType() == fVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27776b;
        }

        public int hashCode() {
            int hashCode;
            AbstractC15107a<C14989s> aVar = this.f27775a;
            int hashCode2 = aVar != null ? aVar.hashCode() : 0;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "DisclaimerViewData(clickDisclaimer=" + this.f27775a + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$g */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$g.class */
    public static final class C12307g implements AbstractC12391a {

        /* renamed from: a */
        public final String f27777a;

        /* renamed from: b */
        public final int f27778b;

        public C12307g(String str, int i) {
            C15149k.m377b(str, "description");
            this.f27777a = str;
            this.f27778b = i;
        }

        public /* synthetic */ C12307g(String str, int i, int i2, C15145g gVar) {
            this(str, (i2 & 2) != 0 ? 2 : i);
        }

        /* renamed from: a */
        public final String m6416a() {
            return this.f27777a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12307g)) {
                return false;
            }
            C12307g gVar = (C12307g) obj;
            if (!C15149k.m384a((Object) this.f27777a, (Object) gVar.f27777a)) {
                return false;
            }
            return getViewType() == gVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27778b;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f27777a;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "IntroductionViewData(description=" + this.f27777a + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$h */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$h.class */
    public static final class C12308h implements AbstractC12391a {

        /* renamed from: a */
        public final String f27779a;

        /* renamed from: b */
        public final int f27780b;

        public C12308h(String str, int i) {
            C15149k.m377b(str, "keywordListString");
            this.f27779a = str;
            this.f27780b = i;
        }

        public /* synthetic */ C12308h(String str, int i, int i2, C15145g gVar) {
            this(str, (i2 & 2) != 0 ? 4 : i);
        }

        /* renamed from: a */
        public final String m6415a() {
            return this.f27779a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12308h)) {
                return false;
            }
            C12308h hVar = (C12308h) obj;
            if (!C15149k.m384a((Object) this.f27779a, (Object) hVar.f27779a)) {
                return false;
            }
            return getViewType() == hVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27780b;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f27779a;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "KeywordViewData(keywordListString=" + this.f27779a + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$i */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$i.class */
    public static final class C12309i implements AbstractC12391a {

        /* renamed from: a */
        public final LatLng f27781a;

        /* renamed from: b */
        public final AbstractC15107a<C14989s> f27782b;

        /* renamed from: c */
        public final int f27783c;

        public C12309i(LatLng latLng, AbstractC15107a<C14989s> aVar, int i) {
            C15149k.m377b(latLng, "latLng");
            C15149k.m377b(aVar, "clickMapAction");
            this.f27781a = latLng;
            this.f27782b = aVar;
            this.f27783c = i;
        }

        public /* synthetic */ C12309i(LatLng latLng, AbstractC15107a aVar, int i, int i2, C15145g gVar) {
            this(latLng, aVar, (i2 & 4) != 0 ? 201 : i);
        }

        /* renamed from: a */
        public final LatLng m6414a() {
            return this.f27781a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12309i)) {
                return false;
            }
            C12309i iVar = (C12309i) obj;
            if (!C15149k.m384a(this.f27781a, iVar.f27781a) || !C15149k.m384a(this.f27782b, iVar.f27782b)) {
                return false;
            }
            return getViewType() == iVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27783c;
        }

        public int hashCode() {
            int hashCode;
            LatLng latLng = this.f27781a;
            int i = 0;
            int hashCode2 = latLng != null ? latLng.hashCode() : 0;
            AbstractC15107a<C14989s> aVar = this.f27782b;
            if (aVar != null) {
                i = aVar.hashCode();
            }
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (((hashCode2 * 31) + i) * 31) + hashCode;
        }

        public String toString() {
            return "MapData(latLng=" + this.f27781a + ", clickMapAction=" + this.f27782b + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$j */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$j.class */
    public static final class C12310j implements AbstractC12391a {

        /* renamed from: a */
        public final SpannableString f27784a;

        /* renamed from: b */
        public final int f27785b;

        /* renamed from: c */
        public final boolean f27786c;

        /* renamed from: d */
        public final AbstractC15107a<C14989s> f27787d;

        /* renamed from: e */
        public final int f27788e;

        public C12310j(SpannableString spannableString, int i, boolean z, AbstractC15107a<C14989s> aVar, int i2) {
            C15149k.m377b(spannableString, "displayNumber");
            C15149k.m377b(aVar, "clickSearchIcon");
            this.f27784a = spannableString;
            this.f27785b = i;
            this.f27786c = z;
            this.f27787d = aVar;
            this.f27788e = i2;
        }

        public /* synthetic */ C12310j(SpannableString spannableString, int i, boolean z, AbstractC15107a aVar, int i2, int i3, C15145g gVar) {
            this(spannableString, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? false : z, aVar, (i3 & 16) != 0 ? 0 : i2);
        }

        /* renamed from: a */
        public final int m6413a() {
            return this.f27785b;
        }

        /* renamed from: b */
        public final AbstractC15107a<C14989s> m6412b() {
            return this.f27787d;
        }

        /* renamed from: c */
        public final SpannableString m6411c() {
            return this.f27784a;
        }

        /* renamed from: d */
        public final boolean m6410d() {
            return this.f27786c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12310j)) {
                return false;
            }
            C12310j jVar = (C12310j) obj;
            if (!C15149k.m384a(this.f27784a, jVar.f27784a)) {
                return false;
            }
            if (!(this.f27785b == jVar.f27785b)) {
                return false;
            }
            if (!(this.f27786c == jVar.f27786c) || !C15149k.m384a(this.f27787d, jVar.f27787d)) {
                return false;
            }
            return getViewType() == jVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27788e;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            SpannableString spannableString = this.f27784a;
            int i = 0;
            int hashCode3 = spannableString != null ? spannableString.hashCode() : 0;
            hashCode = Integer.valueOf(this.f27785b).hashCode();
            boolean z = this.f27786c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            AbstractC15107a<C14989s> aVar = this.f27787d;
            if (aVar != null) {
                i = aVar.hashCode();
            }
            hashCode2 = Integer.valueOf(getViewType()).hashCode();
            return (((((((hashCode3 * 31) + hashCode) * 31) + i2) * 31) + i) * 31) + hashCode2;
        }

        public String toString() {
            return "NumberViewData(displayNumber=" + ((Object) this.f27784a) + ", blockKind=" + this.f27785b + ", isInWhitelist=" + this.f27786c + ", clickSearchIcon=" + this.f27787d + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$k */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$k.class */
    public static final class C12311k implements AbstractC12391a {

        /* renamed from: a */
        public final List<String> f27789a;

        /* renamed from: b */
        public final AbstractC15118l<Integer, C14989s> f27790b;

        /* renamed from: c */
        public final int f27791c;

        /* JADX WARN: Multi-variable type inference failed */
        public C12311k(List<String> list, AbstractC15118l<? super Integer, C14989s> lVar, int i) {
            C15149k.m377b(list, "photoUrlList");
            C15149k.m377b(lVar, "clickPhotoItem");
            this.f27789a = list;
            this.f27790b = lVar;
            this.f27791c = i;
        }

        public /* synthetic */ C12311k(List list, AbstractC15118l lVar, int i, int i2, C15145g gVar) {
            this(list, lVar, (i2 & 4) != 0 ? 300 : i);
        }

        /* renamed from: a */
        public final AbstractC15118l<Integer, C14989s> m6409a() {
            return this.f27790b;
        }

        /* renamed from: b */
        public final List<String> m6408b() {
            return this.f27789a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12311k)) {
                return false;
            }
            C12311k kVar = (C12311k) obj;
            if (!C15149k.m384a(this.f27789a, kVar.f27789a) || !C15149k.m384a(this.f27790b, kVar.f27790b)) {
                return false;
            }
            return getViewType() == kVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27791c;
        }

        public int hashCode() {
            int hashCode;
            List<String> list = this.f27789a;
            int i = 0;
            int hashCode2 = list != null ? list.hashCode() : 0;
            AbstractC15118l<Integer, C14989s> lVar = this.f27790b;
            if (lVar != null) {
                i = lVar.hashCode();
            }
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (((hashCode2 * 31) + i) * 31) + hashCode;
        }

        public String toString() {
            return "PhotoListViewData(photoUrlList=" + this.f27789a + ", clickPhotoItem=" + this.f27790b + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$l */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$l.class */
    public static final class C12312l implements AbstractC12391a {

        /* renamed from: a */
        public final List<NumberInfo.PublicSearch> f27792a;

        /* renamed from: b */
        public final AbstractC15118l<NumberInfo.PublicSearch, C14989s> f27793b;

        /* renamed from: c */
        public final int f27794c;

        /* JADX WARN: Multi-variable type inference failed */
        public C12312l(List<? extends NumberInfo.PublicSearch> list, AbstractC15118l<? super NumberInfo.PublicSearch, C14989s> lVar, int i) {
            C15149k.m377b(list, "searchResult");
            C15149k.m377b(lVar, "clickResult");
            this.f27792a = list;
            this.f27793b = lVar;
            this.f27794c = i;
        }

        public /* synthetic */ C12312l(List list, AbstractC15118l lVar, int i, int i2, C15145g gVar) {
            this(list, lVar, (i2 & 4) != 0 ? 500 : i);
        }

        /* renamed from: a */
        public final AbstractC15118l<NumberInfo.PublicSearch, C14989s> m6407a() {
            return this.f27793b;
        }

        /* renamed from: b */
        public final List<NumberInfo.PublicSearch> m6406b() {
            return this.f27792a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12312l)) {
                return false;
            }
            C12312l lVar = (C12312l) obj;
            if (!C15149k.m384a(this.f27792a, lVar.f27792a) || !C15149k.m384a(this.f27793b, lVar.f27793b)) {
                return false;
            }
            return getViewType() == lVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27794c;
        }

        public int hashCode() {
            int hashCode;
            List<NumberInfo.PublicSearch> list = this.f27792a;
            int i = 0;
            int hashCode2 = list != null ? list.hashCode() : 0;
            AbstractC15118l<NumberInfo.PublicSearch, C14989s> lVar = this.f27793b;
            if (lVar != null) {
                i = lVar.hashCode();
            }
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (((hashCode2 * 31) + i) * 31) + hashCode;
        }

        public String toString() {
            return "PublicSearchViewData(searchResult=" + this.f27792a + ", clickResult=" + this.f27793b + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$m */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$m.class */
    public static final class C12313m implements AbstractC12391a {

        /* renamed from: a */
        public final float f27795a;

        /* renamed from: b */
        public final int f27796b;

        public C12313m(float f, int i) {
            this.f27795a = f;
            this.f27796b = i;
        }

        public /* synthetic */ C12313m(float f, int i, int i2, C15145g gVar) {
            this(f, (i2 & 2) != 0 ? 3 : i);
        }

        /* renamed from: a */
        public final float m6405a() {
            return this.f27795a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12313m)) {
                return false;
            }
            C12313m mVar = (C12313m) obj;
            if (Float.compare(this.f27795a, mVar.f27795a) != 0) {
                return false;
            }
            return getViewType() == mVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27796b;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            hashCode = Float.valueOf(this.f27795a).hashCode();
            hashCode2 = Integer.valueOf(getViewType()).hashCode();
            return (hashCode * 31) + hashCode2;
        }

        public String toString() {
            return "RatingViewData(starValue=" + this.f27795a + ", viewType=" + getViewType() + ")";
        }
    }

    /* renamed from: j.a.e0.f$n */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$n.class */
    public static final class C12314n implements AbstractC12391a {

        /* renamed from: a */
        public final String f27797a;

        /* renamed from: b */
        public final int f27798b;

        public C12314n(String str, int i) {
            C15149k.m377b(str, "serviceArea");
            this.f27797a = str;
            this.f27798b = i;
        }

        public /* synthetic */ C12314n(String str, int i, int i2, C15145g gVar) {
            this(str, (i2 & 2) != 0 ? 202 : i);
        }

        /* renamed from: a */
        public final String m6404a() {
            return this.f27797a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12314n)) {
                return false;
            }
            C12314n nVar = (C12314n) obj;
            if (!C15149k.m384a((Object) this.f27797a, (Object) nVar.f27797a)) {
                return false;
            }
            return getViewType() == nVar.getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27798b;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f27797a;
            int hashCode2 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return (hashCode2 * 31) + hashCode;
        }

        public String toString() {
            return "ServiceAreaData(serviceArea=" + this.f27797a + ", viewType=" + getViewType() + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J$\u0010\u0013\u001a\u0004\u0018\u0001H\u0014\"\n\b��\u0010\u0014\u0018\u0001*\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0003H\u0086\b¢\u0006\u0002\u0010\u0016J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NdpInfoViewData$TypeViewData;", "Lgogolook/callgogolook2/adapter/ViewData;", "viewType", "", "(I)V", "viewDataArray", "Landroidx/collection/SparseArrayCompat;", "getViewDataArray", "()Landroidx/collection/SparseArrayCompat;", "viewDataArray$delegate", "Lkotlin/Lazy;", "getViewType", "()I", "component1", "copy", "equals", "", "other", "", "getValueFromMap", ExifInterface.GPS_DIRECTION_TRUE, "type", "(I)Lgogolook/callgogolook2/adapter/ViewData;", "hashCode", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.f$o */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/f$o.class */
    public static final class C12315o implements AbstractC12391a {

        /* renamed from: c */
        public static final /* synthetic */ AbstractC14906i[] f27799c;

        /* renamed from: a */
        public final AbstractC14974f f27800a;

        /* renamed from: b */
        public final int f27801b;

        /* renamed from: j.a.e0.f$o$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/f$o$a.class */
        public static final class C12316a extends AbstractC15150l implements AbstractC15107a<SparseArrayCompat<AbstractC12391a>> {

            /* renamed from: a */
            public static final C12316a f27802a = new C12316a();

            public C12316a() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p626l.p641z.p642c.AbstractC15107a
            public final SparseArrayCompat<AbstractC12391a> invoke() {
                return new SparseArrayCompat<>();
            }
        }

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C12315o.class), "viewDataArray", "getViewDataArray()Landroidx/collection/SparseArrayCompat;");
            C15131a0.m412a(sVar);
            f27799c = new AbstractC14906i[]{sVar};
        }

        public C12315o() {
            this(0, 1, null);
        }

        public C12315o(int i) {
            this.f27801b = i;
            this.f27800a = C14975g.m662a(C12316a.f27802a);
        }

        public /* synthetic */ C12315o(int i, int i2, C15145g gVar) {
            this((i2 & 1) != 0 ? 0 : i);
        }

        /* renamed from: a */
        public final SparseArrayCompat<AbstractC12391a> m6403a() {
            AbstractC14974f fVar = this.f27800a;
            AbstractC14906i iVar = f27799c[0];
            return (SparseArrayCompat) fVar.getValue();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12315o)) {
                return false;
            }
            return getViewType() == ((C12315o) obj).getViewType();
        }

        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return this.f27801b;
        }

        public int hashCode() {
            int hashCode;
            hashCode = Integer.valueOf(getViewType()).hashCode();
            return hashCode;
        }

        public String toString() {
            return "TypeViewData(viewType=" + getViewType() + ")";
        }
    }
}
