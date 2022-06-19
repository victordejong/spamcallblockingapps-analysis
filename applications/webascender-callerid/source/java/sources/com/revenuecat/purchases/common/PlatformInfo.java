package com.revenuecat.purchases.common;

import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PlatformInfo.class */
public final class PlatformInfo {
    private final String flavor;
    private final String version;

    public PlatformInfo(String str, String str2) {
        k.f(str, "flavor");
        this.flavor = str;
        this.version = str2;
    }

    public static /* synthetic */ PlatformInfo copy$default(PlatformInfo platformInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = platformInfo.flavor;
        }
        if ((i & 2) != 0) {
            str2 = platformInfo.version;
        }
        return platformInfo.copy(str, str2);
    }

    public final String component1() {
        return this.flavor;
    }

    public final String component2() {
        return this.version;
    }

    public final PlatformInfo copy(String str, String str2) {
        k.f(str, "flavor");
        return new PlatformInfo(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PlatformInfo)) {
                return false;
            }
            PlatformInfo platformInfo = (PlatformInfo) obj;
            return k.b(this.flavor, platformInfo.flavor) && k.b(this.version, platformInfo.version);
        }
        return true;
    }

    public final String getFlavor() {
        return this.flavor;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.flavor;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.version;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "PlatformInfo(flavor=" + this.flavor + ", version=" + this.version + ")";
    }
}
