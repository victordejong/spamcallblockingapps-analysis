package com.revenuecat.purchases;

import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/UpgradeInfo.class */
public final class UpgradeInfo {
    private final String oldSku;
    private final Integer prorationMode;

    public UpgradeInfo(String str, Integer num) {
        k.f(str, "oldSku");
        this.oldSku = str;
        this.prorationMode = num;
    }

    public /* synthetic */ UpgradeInfo(String str, Integer num, int i, g gVar) {
        this(str, (i & 2) != 0 ? null : num);
    }

    public static /* synthetic */ UpgradeInfo copy$default(UpgradeInfo upgradeInfo, String str, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = upgradeInfo.oldSku;
        }
        if ((i & 2) != 0) {
            num = upgradeInfo.prorationMode;
        }
        return upgradeInfo.copy(str, num);
    }

    public final String component1() {
        return this.oldSku;
    }

    public final Integer component2() {
        return this.prorationMode;
    }

    public final UpgradeInfo copy(String str, Integer num) {
        k.f(str, "oldSku");
        return new UpgradeInfo(str, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpgradeInfo)) {
            return false;
        }
        UpgradeInfo upgradeInfo = (UpgradeInfo) obj;
        return k.b(this.oldSku, upgradeInfo.oldSku) && k.b(this.prorationMode, upgradeInfo.prorationMode);
    }

    public final String getOldSku() {
        return this.oldSku;
    }

    public final Integer getProrationMode() {
        return this.prorationMode;
    }

    public int hashCode() {
        String str = this.oldSku;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Integer num = this.prorationMode;
        if (num != null) {
            i = num.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "UpgradeInfo(oldSku=" + this.oldSku + ", prorationMode=" + this.prorationMode + ")";
    }
}
