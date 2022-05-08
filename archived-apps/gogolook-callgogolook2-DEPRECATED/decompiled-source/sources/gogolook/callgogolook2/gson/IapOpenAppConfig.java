package gogolook.callgogolook2.gson;

import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\u000b¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/gson/IapOpenAppConfig;", "", AdsSettingsKt.KEY_ENABLE, "", "installedDays", "", "recurringDays", "(ZII)V", "getEnable", "()Z", "getInstalledDays", "()I", "getRecurringDays", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/IapOpenAppConfig.class */
public final class IapOpenAppConfig {
    @AbstractC10120c(AdsSettingsKt.KEY_ENABLE)
    public final boolean enable;
    @AbstractC10120c("installed_days")
    public final int installedDays;
    @AbstractC10120c("recurring_days")
    public final int recurringDays;

    public IapOpenAppConfig() {
        this(false, 0, 0, 7, null);
    }

    public IapOpenAppConfig(boolean z, int i, int i2) {
        this.enable = z;
        this.installedDays = i;
        this.recurringDays = i2;
    }

    public /* synthetic */ IapOpenAppConfig(boolean z, int i, int i2, int i3, C15145g gVar) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? 14 : i, (i3 & 4) != 0 ? 7 : i2);
    }

    /* renamed from: a */
    public final boolean m28431a() {
        return this.enable;
    }

    /* renamed from: b */
    public final int m28430b() {
        return this.installedDays;
    }

    /* renamed from: c */
    public final int m28429c() {
        return this.recurringDays;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IapOpenAppConfig)) {
            return false;
        }
        IapOpenAppConfig iapOpenAppConfig = (IapOpenAppConfig) obj;
        if (!(this.enable == iapOpenAppConfig.enable)) {
            return false;
        }
        if (!(this.installedDays == iapOpenAppConfig.installedDays)) {
            return false;
        }
        return this.recurringDays == iapOpenAppConfig.recurringDays;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        boolean z = this.enable;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        int i = z2 ? 1 : 0;
        int i2 = z2 ? 1 : 0;
        hashCode = Integer.valueOf(this.installedDays).hashCode();
        hashCode2 = Integer.valueOf(this.recurringDays).hashCode();
        return (((i * 31) + hashCode) * 31) + hashCode2;
    }

    public String toString() {
        return "IapOpenAppConfig(enable=" + this.enable + ", installedDays=" + this.installedDays + ", recurringDays=" + this.recurringDays + ")";
    }
}
