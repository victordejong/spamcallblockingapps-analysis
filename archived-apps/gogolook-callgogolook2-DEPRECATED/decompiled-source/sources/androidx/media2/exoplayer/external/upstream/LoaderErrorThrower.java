package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.RestrictTo;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/LoaderErrorThrower.class */
public interface LoaderErrorThrower {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/LoaderErrorThrower$Dummy.class */
    public static final class Dummy implements LoaderErrorThrower {
        @Override // androidx.media2.exoplayer.external.upstream.LoaderErrorThrower
        public void maybeThrowError() throws IOException {
        }

        @Override // androidx.media2.exoplayer.external.upstream.LoaderErrorThrower
        public void maybeThrowError(int i) throws IOException {
        }
    }

    void maybeThrowError() throws IOException;

    void maybeThrowError(int i) throws IOException;
}
