package androidx.media2.exoplayer.external.text.ttml;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/ttml/TtmlSubtitle.class */
public final class TtmlSubtitle implements Subtitle {
    public final long[] eventTimesUs;
    public final Map<String, TtmlStyle> globalStyles;
    public final Map<String, String> imageMap;
    public final Map<String, TtmlRegion> regionMap;
    public final TtmlNode root;

    public TtmlSubtitle(TtmlNode ttmlNode, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        this.root = ttmlNode;
        this.regionMap = map2;
        this.imageMap = map3;
        this.globalStyles = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.eventTimesUs = ttmlNode.getEventTimesUs();
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.root.getCues(j, this.globalStyles, this.regionMap, this.imageMap);
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public long getEventTime(int i) {
        return this.eventTimesUs[i];
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @VisibleForTesting
    public Map<String, TtmlStyle> getGlobalStyles() {
        return this.globalStyles;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j, false, false);
        if (binarySearchCeil >= this.eventTimesUs.length) {
            binarySearchCeil = -1;
        }
        return binarySearchCeil;
    }

    @VisibleForTesting
    public TtmlNode getRoot() {
        return this.root;
    }
}
