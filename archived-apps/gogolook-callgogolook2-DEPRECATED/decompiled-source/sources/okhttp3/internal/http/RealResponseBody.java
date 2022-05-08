package okhttp3.internal.http;

import javax.annotation.Nullable;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import p645m.AbstractC15174e;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http/RealResponseBody.class */
public final class RealResponseBody extends ResponseBody {
    public final long contentLength;
    @Nullable
    public final String contentTypeString;
    public final AbstractC15174e source;

    public RealResponseBody(@Nullable String str, long j, AbstractC15174e eVar) {
        this.contentTypeString = str;
        this.contentLength = j;
        this.source = eVar;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        return str != null ? MediaType.parse(str) : null;
    }

    @Override // okhttp3.ResponseBody
    public AbstractC15174e source() {
        return this.source;
    }
}
