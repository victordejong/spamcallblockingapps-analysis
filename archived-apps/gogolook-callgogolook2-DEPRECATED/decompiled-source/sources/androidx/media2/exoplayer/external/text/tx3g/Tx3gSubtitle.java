package androidx.media2.exoplayer.external.text.tx3g;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/tx3g/Tx3gSubtitle.class */
public final class Tx3gSubtitle implements Subtitle {
    public static final Tx3gSubtitle EMPTY = new Tx3gSubtitle();
    public final List<Cue> cues;

    public Tx3gSubtitle() {
        this.cues = Collections.emptyList();
    }

    public Tx3gSubtitle(Cue cue) {
        this.cues = Collections.singletonList(cue);
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public List<Cue> getCues(long j) {
        return j >= 0 ? this.cues : Collections.emptyList();
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i == 0);
        return 0L;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }
}
