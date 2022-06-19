package p193e.p194a.p793g3;

import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.ads.provider.fetch.AdsConfigurationManager;
import s1.z.c.l;
/* renamed from: e.a.g3.x */
/* loaded from: classes7-dex2jar.jar:e/a/g3/x.class */
public final class C14444x extends AbstractC14434n {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14444x(AdsConfigurationManager.PromotionState promotionState) {
        super("PromotionStatus", promotionState.name());
        l.e(promotionState, UpdateKey.STATUS);
    }
}
