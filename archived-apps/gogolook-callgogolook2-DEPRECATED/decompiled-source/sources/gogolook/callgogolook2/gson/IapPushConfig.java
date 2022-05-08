package gogolook.callgogolook2.gson;

import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/gson/IapPushConfig;", "", "first", "", "interval", "(II)V", "getFirst", "()I", "getInterval", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/IapPushConfig.class */
public final class IapPushConfig {
    @AbstractC10120c("first")
    public final int first;
    @AbstractC10120c("interval")
    public final int interval;

    public IapPushConfig() {
        this(0, 0, 3, null);
    }

    public IapPushConfig(int i, int i2) {
        this.first = i;
        this.interval = i2;
    }

    public /* synthetic */ IapPushConfig(int i, int i2, int i3, C15145g gVar) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }

    /* renamed from: a */
    public final int m28423a() {
        return this.first;
    }

    /* renamed from: b */
    public final int m28422b() {
        return this.interval;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IapPushConfig)) {
            return false;
        }
        IapPushConfig iapPushConfig = (IapPushConfig) obj;
        if (!(this.first == iapPushConfig.first)) {
            return false;
        }
        return this.interval == iapPushConfig.interval;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        hashCode = Integer.valueOf(this.first).hashCode();
        hashCode2 = Integer.valueOf(this.interval).hashCode();
        return (hashCode * 31) + hashCode2;
    }

    public String toString() {
        return "IapPushConfig(first=" + this.first + ", interval=" + this.interval + ")";
    }
}
