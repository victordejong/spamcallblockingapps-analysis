package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.util.SlidingPercentile;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/SlidingPercentile$$Lambda$1.class */
public final /* synthetic */ class SlidingPercentile$$Lambda$1 implements Comparator {
    public static final Comparator $instance = new SlidingPercentile$$Lambda$1();

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compare;
        compare = Float.compare(((SlidingPercentile.Sample) obj).value, ((SlidingPercentile.Sample) obj2).value);
        return compare;
    }
}
