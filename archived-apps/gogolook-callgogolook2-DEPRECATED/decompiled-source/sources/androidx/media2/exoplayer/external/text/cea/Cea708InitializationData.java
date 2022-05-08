package androidx.media2.exoplayer.external.text.cea;

import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea708InitializationData.class */
public final class Cea708InitializationData {
    public final boolean isWideAspectRatio;

    public Cea708InitializationData(List<byte[]> list) {
        this.isWideAspectRatio = list.get(0)[0] != 0;
    }

    public static List<byte[]> buildData(boolean z) {
        return Collections.singletonList(new byte[]{z ? (byte) 1 : (byte) 0});
    }

    public static Cea708InitializationData fromData(List<byte[]> list) {
        return new Cea708InitializationData(list);
    }
}
