package gogolook.callgogolook2.gson;

import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\b\u0018��2\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J1\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\r¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/gson/InAppAdSetting;", "", "adUnit", "", AdsSettingsKt.KEY_ENABLE, "", "feqPerDay", "", "displayDelayDaysForNewUser", "(Ljava/lang/String;ZII)V", "getAdUnit", "()Ljava/lang/String;", "getDisplayDelayDaysForNewUser", "()I", "getEnable", "()Z", "getFeqPerDay", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/InAppAdSetting.class */
public final class InAppAdSetting {
    @AbstractC10120c(AdsSettingsKt.KEY_AD_UNIT)
    public final String adUnit;
    @AbstractC10120c(AdsSettingsKt.KEY_DISPLAY_DELAY_DAYS_FOR_NEW_USERS)
    public final int displayDelayDaysForNewUser;
    @AbstractC10120c(AdsSettingsKt.KEY_ENABLE)
    public final boolean enable;
    @AbstractC10120c(AdsSettingsKt.KEY_FEQ_PER_DAY)
    public final int feqPerDay;

    public InAppAdSetting() {
        this(null, false, 0, 0, 15, null);
    }

    public InAppAdSetting(String str, boolean z, int i, int i2) {
        C15149k.m377b(str, "adUnit");
        this.adUnit = str;
        this.enable = z;
        this.feqPerDay = i;
        this.displayDelayDaysForNewUser = i2;
    }

    public /* synthetic */ InAppAdSetting(String str, boolean z, int i, int i2, int i3, C15145g gVar) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? false : z, (i3 & 4) != 0 ? -1 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* renamed from: a */
    public final String m28414a() {
        return this.adUnit;
    }

    /* renamed from: b */
    public final int m28413b() {
        return this.displayDelayDaysForNewUser;
    }

    /* renamed from: c */
    public final boolean m28412c() {
        return this.enable;
    }

    /* renamed from: d */
    public final int m28411d() {
        return this.feqPerDay;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InAppAdSetting)) {
            return false;
        }
        InAppAdSetting inAppAdSetting = (InAppAdSetting) obj;
        if (!C15149k.m384a((Object) this.adUnit, (Object) inAppAdSetting.adUnit)) {
            return false;
        }
        if (!(this.enable == inAppAdSetting.enable)) {
            return false;
        }
        if (!(this.feqPerDay == inAppAdSetting.feqPerDay)) {
            return false;
        }
        return this.displayDelayDaysForNewUser == inAppAdSetting.displayDelayDaysForNewUser;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.adUnit;
        int hashCode3 = str != null ? str.hashCode() : 0;
        boolean z = this.enable;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        hashCode = Integer.valueOf(this.feqPerDay).hashCode();
        hashCode2 = Integer.valueOf(this.displayDelayDaysForNewUser).hashCode();
        return (((((hashCode3 * 31) + i) * 31) + hashCode) * 31) + hashCode2;
    }

    public String toString() {
        return "InAppAdSetting(adUnit=" + this.adUnit + ", enable=" + this.enable + ", feqPerDay=" + this.feqPerDay + ", displayDelayDaysForNewUser=" + this.displayDelayDaysForNewUser + ")";
    }
}
