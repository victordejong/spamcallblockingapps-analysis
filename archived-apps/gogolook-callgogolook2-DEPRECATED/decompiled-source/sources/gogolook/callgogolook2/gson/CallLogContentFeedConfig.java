package gogolook.callgogolook2.gson;

import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p632u.C15020l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J-\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000eR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, m815d2 = {"Lgogolook/callgogolook2/gson/CallLogContentFeedConfig;", "", AdsSettingsKt.KEY_ENABLE, "", AdsSettingsKt.KEY_PLACES, "", "", "expiredTimeInSec", "", "(ZLjava/util/List;J)V", "getEnable", "()Z", "expiredTimeInMillis", "getExpiredTimeInMillis", "()J", "getExpiredTimeInSec", "getPlaces", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallLogContentFeedConfig.class */
public final class CallLogContentFeedConfig {
    @AbstractC10120c(AdsSettingsKt.KEY_ENABLE)
    public final boolean enable;
    @AbstractC10120c(AdsSettingsKt.KEY_EXPIRED_TIME_IN_SEC)
    public final long expiredTimeInSec;
    @AbstractC10120c(AdsSettingsKt.KEY_PLACES)
    public final List<Integer> places;

    public CallLogContentFeedConfig() {
        this(false, null, 0L, 7, null);
    }

    public CallLogContentFeedConfig(boolean z, List<Integer> list, long j) {
        C15149k.m377b(list, AdsSettingsKt.KEY_PLACES);
        this.enable = z;
        this.places = list;
        this.expiredTimeInSec = j;
    }

    public /* synthetic */ CallLogContentFeedConfig(boolean z, List list, long j, int i, C15145g gVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? C15020l.m567a(4) : list, (i & 4) != 0 ? 300L : j);
    }

    /* renamed from: a */
    public final boolean m28549a() {
        return this.enable;
    }

    /* renamed from: b */
    public final long m28548b() {
        return this.expiredTimeInSec * 1000;
    }

    /* renamed from: c */
    public final List<Integer> m28547c() {
        return this.places;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CallLogContentFeedConfig)) {
            return false;
        }
        CallLogContentFeedConfig callLogContentFeedConfig = (CallLogContentFeedConfig) obj;
        if (!(this.enable == callLogContentFeedConfig.enable) || !C15149k.m384a(this.places, callLogContentFeedConfig.places)) {
            return false;
        }
        return (this.expiredTimeInSec > callLogContentFeedConfig.expiredTimeInSec ? 1 : (this.expiredTimeInSec == callLogContentFeedConfig.expiredTimeInSec ? 0 : -1)) == 0;
    }

    public int hashCode() {
        int hashCode;
        boolean z = this.enable;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        List<Integer> list = this.places;
        int hashCode2 = list != null ? list.hashCode() : 0;
        int i = z2 ? 1 : 0;
        int i2 = z2 ? 1 : 0;
        hashCode = Long.valueOf(this.expiredTimeInSec).hashCode();
        return (((i * 31) + hashCode2) * 31) + hashCode;
    }

    public String toString() {
        return "CallLogContentFeedConfig(enable=" + this.enable + ", places=" + this.places + ", expiredTimeInSec=" + this.expiredTimeInSec + ")";
    }
}
