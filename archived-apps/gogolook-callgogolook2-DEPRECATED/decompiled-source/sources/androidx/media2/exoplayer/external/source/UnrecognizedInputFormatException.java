package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/UnrecognizedInputFormatException.class */
public class UnrecognizedInputFormatException extends ParserException {
    public final Uri uri;

    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str);
        this.uri = uri;
    }
}
