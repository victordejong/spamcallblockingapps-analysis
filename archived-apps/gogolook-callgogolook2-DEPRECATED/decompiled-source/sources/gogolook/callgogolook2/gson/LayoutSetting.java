package gogolook.callgogolook2.gson;

import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/gson/LayoutSetting;", "", "adUnit", "", "layoutType", "", "(Ljava/lang/String;I)V", "getAdUnit", "()Ljava/lang/String;", "getLayoutType", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/LayoutSetting.class */
public final class LayoutSetting {
    @AbstractC10120c(AdsSettingsKt.KEY_AD_UNIT)
    public final String adUnit;
    @AbstractC10120c(AdsSettingsKt.KEY_LAYOUT_TYPE)
    public final int layoutType;

    public LayoutSetting() {
        this(null, 0, 3, null);
    }

    public LayoutSetting(String str, int i) {
        C15149k.m377b(str, "adUnit");
        this.adUnit = str;
        this.layoutType = i;
    }

    public /* synthetic */ LayoutSetting(String str, int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public final String m28406a() {
        return this.adUnit;
    }

    /* renamed from: b */
    public final int m28405b() {
        return this.layoutType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LayoutSetting)) {
            return false;
        }
        LayoutSetting layoutSetting = (LayoutSetting) obj;
        if (!C15149k.m384a((Object) this.adUnit, (Object) layoutSetting.adUnit)) {
            return false;
        }
        return this.layoutType == layoutSetting.layoutType;
    }

    public int hashCode() {
        int hashCode;
        String str = this.adUnit;
        int hashCode2 = str != null ? str.hashCode() : 0;
        hashCode = Integer.valueOf(this.layoutType).hashCode();
        return (hashCode2 * 31) + hashCode;
    }

    public String toString() {
        return "LayoutSetting(adUnit=" + this.adUnit + ", layoutType=" + this.layoutType + ")";
    }
}
