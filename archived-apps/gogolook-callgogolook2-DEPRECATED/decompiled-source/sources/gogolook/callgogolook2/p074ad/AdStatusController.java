package gogolook.callgogolook2.p074ad;
/* renamed from: gogolook.callgogolook2.ad.AdStatusController */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdStatusController.class */
public class AdStatusController {
    public int AD_STATUS_FREE;
    public int AD_STATUS_NOT_FREE;
    public int AD_STATUS_NOT_INIT;
    public int mAdStatus;

    /* renamed from: gogolook.callgogolook2.ad.AdStatusController$1 */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdStatusController$1.class */
    public static /* synthetic */ class C43931 {
        public static final /* synthetic */ int[] $SwitchMap$gogolook$callgogolook2$ad$AdUnit = new int[AdUnit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$gogolook$callgogolook2$ad$AdUnit[AdUnit.CALL_END_FULL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$gogolook$callgogolook2$ad$AdUnit[AdUnit.CALL_END_BANNER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$gogolook$callgogolook2$ad$AdUnit[AdUnit.CALL_END_DIALOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$gogolook$callgogolook2$ad$AdUnit[AdUnit.ENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$gogolook$callgogolook2$ad$AdUnit[AdUnit.AFTER_DB_UPDATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ad.AdStatusController$Loader */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdStatusController$Loader.class */
    public static class Loader {
        public static volatile AdStatusController INSTANCE = new AdStatusController(null);
    }

    public AdStatusController() {
        this.AD_STATUS_NOT_INIT = -1;
        this.AD_STATUS_NOT_FREE = 0;
        this.AD_STATUS_FREE = 1;
        this.mAdStatus = this.AD_STATUS_NOT_INIT;
    }

    public /* synthetic */ AdStatusController(C43931 r3) {
        this();
    }

    /* renamed from: c */
    public static AdStatusController m28827c() {
        return Loader.INSTANCE;
    }

    /* renamed from: a */
    public void m28829a(boolean z) {
        this.mAdStatus = z ? this.AD_STATUS_NOT_FREE : this.AD_STATUS_FREE;
    }

    /* renamed from: a */
    public boolean m28831a() {
        if (this.mAdStatus == this.AD_STATUS_NOT_INIT) {
            m28828b();
        }
        return this.mAdStatus == this.AD_STATUS_NOT_FREE;
    }

    /* renamed from: a */
    public boolean m28830a(AdUnit adUnit) {
        AdStatusController c = m28827c();
        if (!c.m28831a()) {
            return false;
        }
        int i = C43931.$SwitchMap$gogolook$callgogolook2$ad$AdUnit[adUnit.ordinal()];
        if (i == 1 || i == 2) {
            boolean z = false;
            if (AppAdsSettingsUtils.m28789a(adUnit, (Boolean) true)) {
                z = false;
                if (AppAdsSettingsUtils.m28775e(adUnit)) {
                    z = false;
                    if (AppAdsSettingsUtils.m28778d(adUnit)) {
                        z = true;
                    }
                }
            }
            return z;
        } else if (i != 3 && i != 4 && i != 5) {
            return c.m28831a();
        } else {
            boolean z2 = false;
            if (AppAdsSettingsUtils.m28789a(adUnit, (Boolean) false)) {
                z2 = false;
                if (AppAdsSettingsUtils.m28775e(adUnit)) {
                    z2 = false;
                    if (AppAdsSettingsUtils.m28778d(adUnit)) {
                        z2 = true;
                    }
                }
            }
            return z2;
        }
    }

    /* renamed from: b */
    public void m28828b() {
        m28827c().m28829a(!AdUtils.m28802g());
    }
}
