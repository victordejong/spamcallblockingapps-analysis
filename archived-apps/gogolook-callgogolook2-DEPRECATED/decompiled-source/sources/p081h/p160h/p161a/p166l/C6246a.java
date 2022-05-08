package p081h.p160h.p161a.p166l;

import android.content.Context;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.CustomMoPubNative;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.C6202b;
import p081h.p160h.p161a.p164j.AbstractC6217b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14985o;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15005e0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, m815d2 = {"Lcom/gogolook/adsdk/fetcher/AotterTrekAdFetcher;", "Lcom/gogolook/adsdk/fetcher/BaseAdFetcher;", "context", "Landroid/content/Context;", "adUnitName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "moPubNativeNetworkListener", "Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;", "getMoPubNativeNetworkListener", "()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;", "moPubNativeNetworkListener$delegate", "Lkotlin/Lazy;", "fetch", "", "moPubNativeFactory", "Lcom/mopub/nativeads/MoPubNative;", "adUnitId", "configuration", "Lcom/gogolook/adsdk/config/IAotterTrekConfiguration;", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.l.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/l/a.class */
public final class C6246a extends AbstractC6252c {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f15475i;

    /* renamed from: h */
    public final AbstractC14974f f15476h;

    /* renamed from: h.h.a.l.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/l/a$a.class */
    public static final class C6247a {
        public C6247a() {
        }

        public /* synthetic */ C6247a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\t\n��\n\u0002\b\u0003*\u0001\u0001\u0010��\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m815d2 = {"<anonymous>", "com/gogolook/adsdk/fetcher/AotterTrekAdFetcher$moPubNativeNetworkListener$2$1", "invoke", "()Lcom/gogolook/adsdk/fetcher/AotterTrekAdFetcher$moPubNativeNetworkListener$2$1;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: h.h.a.l.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/l/a$b.class */
    public static final class C6248b extends AbstractC15150l implements AbstractC15107a<C6249a> {

        /* renamed from: b */
        public final /* synthetic */ String f15478b;

        /* renamed from: h.h.a.l.a$b$a */
        /* loaded from: classes2-dex2jar.jar:h/h/a/l/a$b$a.class */
        public static final class C6249a implements MoPubNative.MoPubNativeNetworkListener {
            public C6249a() {
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeFail(NativeErrorCode nativeErrorCode) {
                String str = "[AotterTrek][onNativeFail], adUnitName: " + C6248b.this.f15478b;
                C6246a aVar = C6246a.this;
                aVar.m23489a(aVar.m23493a(nativeErrorCode));
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeLoad(NativeAd nativeAd) {
                if (nativeAd != null) {
                    String str = "[AotterTrek][onNativeLoad], adUnitName: " + C6248b.this.f15478b + ", adSource: " + C6246a.this.m23487b();
                    C6246a.this.m23492a(new C6202b(nativeAd, 479));
                    return;
                }
                C6246a.this.m23489a(C6262a.EnumC6266d.ERROR_AD_OBJECT_INVALID.m23447a());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6248b(String str) {
            super(0);
            this.f15478b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C6249a invoke() {
            return new C6249a();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6246a.class), "moPubNativeNetworkListener", "getMoPubNativeNetworkListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;");
        C15131a0.m412a(sVar);
        f15475i = new AbstractC14906i[]{sVar};
        new C6247a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6246a(Context context, String str) {
        super(context, str, EnumC6184a.AOTTER_TREK);
        C15149k.m377b(str, "adUnitName");
        this.f15476h = C14975g.m662a(new C6248b(str));
    }

    /* renamed from: a */
    public final MoPubNative m23496a(Context context, String str, AbstractC6217b bVar) {
        if (!bVar.mo23557a()) {
            return new MoPubNative(context, str, m23495k());
        }
        Map<String, String> b = C15005e0.m621b(C14985o.m644a(AotterTrekCustomEvent.PLACE_NAME_KEY, m23485d()), C14985o.m644a("isNeedUsingTestSource", String.valueOf(m23484e())));
        CustomMoPubNative customMoPubNative = new CustomMoPubNative(context, str, m23495k());
        customMoPubNative.setServerExtras(b);
        String name = AotterTrekCustomEvent.class.getName();
        C15149k.m383a((Object) name, "AotterTrekCustomEvent::class.java.name");
        customMoPubNative.setCustomNativeClassName(name);
        return customMoPubNative;
    }

    @Override // p081h.p160h.p161a.p166l.AbstractC6252c
    /* renamed from: a */
    public void mo23478a(Context context) {
        C15149k.m377b(context, "context");
        String str = "[AotterTrek][fetch], adUnitName: " + m23485d();
        AbstractC6217b b = m23486c().m23560b();
        if (b != null) {
            MoPubNative a = m23496a(context, m23486c().m23562a(), b);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("com.gogolook.adsdk.fetcher.AdUnitName", m23485d());
            C6260a a2 = m23494a();
            if (a2 != null) {
                linkedHashMap.put("com.gogolook.adsdk.fetcher.AdFetchLog", a2);
            }
            linkedHashMap.put("com.gogolook.adsdk.fetcher.AotterTrekConfiguration", b);
            a.setLocalExtras(linkedHashMap);
            a.registerAdRenderer(m23486c().m23558d());
            a.makeRequest(m23486c().m23559c());
            return;
        }
        m23489a(C6262a.EnumC6266d.ERROR_AOTTERTREK_CONFIGURATION_IS_NULL.m23447a());
    }

    /* renamed from: k */
    public final MoPubNative.MoPubNativeNetworkListener m23495k() {
        AbstractC14974f fVar = this.f15476h;
        AbstractC14906i iVar = f15475i[0];
        return (MoPubNative.MoPubNativeNetworkListener) fVar.getValue();
    }
}
