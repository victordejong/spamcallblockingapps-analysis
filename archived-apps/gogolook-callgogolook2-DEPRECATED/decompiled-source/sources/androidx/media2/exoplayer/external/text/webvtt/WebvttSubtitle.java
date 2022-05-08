package androidx.media2.exoplayer.external.text.webvtt;

import android.text.SpannableStringBuilder;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttSubtitle.class */
public final class WebvttSubtitle implements Subtitle {
    public final long[] cueTimesUs;
    public final List<WebvttCue> cues;
    public final int numCues;
    public final long[] sortedCueTimesUs;

    public WebvttSubtitle(List<WebvttCue> list) {
        this.cues = list;
        this.numCues = list.size();
        this.cueTimesUs = new long[this.numCues * 2];
        for (int i = 0; i < this.numCues; i++) {
            WebvttCue webvttCue = list.get(i);
            int i2 = i * 2;
            long[] jArr = this.cueTimesUs;
            jArr[i2] = webvttCue.startTime;
            jArr[i2 + 1] = webvttCue.endTime;
        }
        long[] jArr2 = this.cueTimesUs;
        this.sortedCueTimesUs = Arrays.copyOf(jArr2, jArr2.length);
        Arrays.sort(this.sortedCueTimesUs);
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public List<Cue> getCues(long j) {
        SpannableStringBuilder spannableStringBuilder = null;
        WebvttCue webvttCue = null;
        ArrayList arrayList = null;
        for (int i = 0; i < this.numCues; i++) {
            long[] jArr = this.cueTimesUs;
            int i2 = i * 2;
            spannableStringBuilder = spannableStringBuilder;
            webvttCue = webvttCue;
            arrayList = arrayList;
            if (jArr[i2] <= j) {
                spannableStringBuilder = spannableStringBuilder;
                webvttCue = webvttCue;
                arrayList = arrayList;
                if (j < jArr[i2 + 1]) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    webvttCue = this.cues.get(i);
                    if (!webvttCue.isNormalCue()) {
                        arrayList.add(webvttCue);
                        webvttCue = webvttCue;
                        spannableStringBuilder = spannableStringBuilder;
                    } else if (webvttCue == null) {
                        spannableStringBuilder = spannableStringBuilder;
                    } else if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        spannableStringBuilder.append(webvttCue.text).append((CharSequence) "\n").append(webvttCue.text);
                        webvttCue = webvttCue;
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n").append(webvttCue.text);
                        spannableStringBuilder = spannableStringBuilder;
                        webvttCue = webvttCue;
                    }
                }
            }
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new WebvttCue(spannableStringBuilder));
        } else if (webvttCue != null) {
            arrayList.add(webvttCue);
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public long getEventTime(int i) {
        boolean z = true;
        Assertions.checkArgument(i >= 0);
        if (i >= this.sortedCueTimesUs.length) {
            z = false;
        }
        Assertions.checkArgument(z);
        return this.sortedCueTimesUs[i];
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getEventTimeCount() {
        return this.sortedCueTimesUs.length;
    }

    @Override // androidx.media2.exoplayer.external.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.sortedCueTimesUs, j, false, false);
        if (binarySearchCeil >= this.sortedCueTimesUs.length) {
            binarySearchCeil = -1;
        }
        return binarySearchCeil;
    }
}
