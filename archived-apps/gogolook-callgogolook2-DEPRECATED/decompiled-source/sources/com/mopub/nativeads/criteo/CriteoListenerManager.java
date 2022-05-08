package com.mopub.nativeads.criteo;

import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.p168n.C6260a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005J \u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m815d2 = {"Lcom/mopub/nativeads/criteo/CriteoListenerManager;", "", "()V", "criteoNativeAdListenerSet", "", "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;", "getCriteoNativeAdListenerSet", "()Ljava/util/Set;", "criteoNativeAdListenerSet$delegate", "Lkotlin/Lazy;", "clearCriteoNativeAdListener", "", "criteoNativeAdListener", "createCriteoNativeAdListener", "adUnitName", "", "adFetchLog", "Lcom/gogolook/adsdk/logs/AdFetchLog;", "customEventNativeListener", "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoListenerManager.class */
public final class CriteoListenerManager {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f9340a;
    public static final CriteoListenerManager INSTANCE = new CriteoListenerManager();

    /* renamed from: b */
    public static final AbstractC14974f f9341b = C14975g.m662a(C4024a.INSTANCE);

    /* renamed from: com.mopub.nativeads.criteo.CriteoListenerManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoListenerManager$a.class */
    public static final class C4024a extends AbstractC15150l implements AbstractC15107a<Set<CriteoNativeAdListener>> {
        public static final C4024a INSTANCE = new C4024a();

        public C4024a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Set<CriteoNativeAdListener> invoke() {
            return new LinkedHashSet();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(CriteoListenerManager.class), "criteoNativeAdListenerSet", "getCriteoNativeAdListenerSet()Ljava/util/Set;");
        C15131a0.m412a(sVar);
        f9340a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public final Set<CriteoNativeAdListener> m30046a() {
        AbstractC14974f fVar = f9341b;
        AbstractC14906i iVar = f9340a[0];
        return (Set) fVar.getValue();
    }

    public final void clearCriteoNativeAdListener(CriteoNativeAdListener criteoNativeAdListener) {
        C15149k.m377b(criteoNativeAdListener, "criteoNativeAdListener");
        if (m30046a().contains(criteoNativeAdListener)) {
            m30046a().remove(criteoNativeAdListener);
        }
    }

    public final CriteoNativeAdListener createCriteoNativeAdListener(String str, C6260a aVar, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        C15149k.m377b(str, "adUnitName");
        C15149k.m377b(customEventNativeListener, "customEventNativeListener");
        CriteoCustomEventNative.CriteoNativeAdEventListener criteoNativeAdEventListener = new CriteoCustomEventNative.CriteoNativeAdEventListener(str, aVar, customEventNativeListener);
        INSTANCE.m30046a().add(criteoNativeAdEventListener);
        return criteoNativeAdEventListener;
    }
}
