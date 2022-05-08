package okhttp3.internal.cache;

import com.zendesk.service.HttpConstants;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Date;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.StatusLine;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy.class */
public final class CacheStrategy {
    @Nullable
    public final Response cacheResponse;
    @Nullable
    public final Request networkRequest;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy$Factory.class */
    public static class Factory {
        private int ageSeconds;
        final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        final long nowMillis;
        private long receivedResponseMillis;
        final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long j, Request request, Response response) {
            this.ageSeconds = -1;
            this.nowMillis = j;
            this.request = request;
            this.cacheResponse = response;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = response.receivedResponseAtMillis();
                Headers headers = response.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String name = headers.name(i);
                    String value = headers.value(i);
                    if (HttpRequest.HEADER_DATE.equalsIgnoreCase(name)) {
                        this.servedDate = HttpDate.parse(value);
                        this.servedDateString = value;
                    } else if (HttpRequest.HEADER_EXPIRES.equalsIgnoreCase(name)) {
                        this.expires = HttpDate.parse(value);
                    } else if (HttpRequest.HEADER_LAST_MODIFIED.equalsIgnoreCase(name)) {
                        this.lastModified = HttpDate.parse(value);
                        this.lastModifiedString = value;
                    } else if (HttpRequest.HEADER_ETAG.equalsIgnoreCase(name)) {
                        this.etag = value;
                    } else if ("Age".equalsIgnoreCase(name)) {
                        this.ageSeconds = HttpHeaders.parseSeconds(value, -1);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long cacheResponseAge() {
            /*
                r7 = this;
                r0 = r7
                java.util.Date r0 = r0.servedDate
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x001c
                r0 = 0
                r1 = r7
                long r1 = r1.receivedResponseMillis
                r2 = r7
                java.util.Date r2 = r2.servedDate
                long r2 = r2.getTime()
                long r1 = r1 - r2
                long r0 = java.lang.Math.max(r0, r1)
                r9 = r0
            L_0x001c:
                r0 = r9
                r11 = r0
                r0 = r7
                int r0 = r0.ageSeconds
                r1 = -1
                if (r0 == r1) goto L_0x0038
                r0 = r9
                java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
                r2 = r7
                int r2 = r2.ageSeconds
                long r2 = (long) r2
                long r1 = r1.toMillis(r2)
                long r0 = java.lang.Math.max(r0, r1)
                r11 = r0
            L_0x0038:
                r0 = r11
                r1 = r7
                long r1 = r1.receivedResponseMillis
                r2 = r7
                long r2 = r2.sentRequestMillis
                long r1 = r1 - r2
                long r0 = r0 + r1
                r1 = r7
                long r1 = r1.nowMillis
                r2 = r7
                long r2 = r2.receivedResponseMillis
                long r1 = r1 - r2
                long r0 = r0 + r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.Factory.cacheResponseAge():long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r7v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long computeFreshnessLifetime() {
            /*
                r5 = this;
                r0 = r5
                okhttp3.Response r0 = r0.cacheResponse
                okhttp3.CacheControl r0 = r0.cacheControl()
                r6 = r0
                r0 = r6
                int r0 = r0.maxAgeSeconds()
                r1 = -1
                if (r0 == r1) goto L_0x001c
                java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
                r1 = r6
                int r1 = r1.maxAgeSeconds()
                long r1 = (long) r1
                long r0 = r0.toMillis(r1)
                return r0
            L_0x001c:
                r0 = r5
                java.util.Date r0 = r0.expires
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0058
                r0 = r5
                java.util.Date r0 = r0.servedDate
                if (r0 == 0) goto L_0x003a
                r0 = r5
                java.util.Date r0 = r0.servedDate
                long r0 = r0.getTime()
                r9 = r0
                goto L_0x0040
            L_0x003a:
                r0 = r5
                long r0 = r0.receivedResponseMillis
                r9 = r0
            L_0x0040:
                r0 = r5
                java.util.Date r0 = r0.expires
                long r0 = r0.getTime()
                r1 = r9
                long r0 = r0 - r1
                r9 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0056
                r0 = r9
                r7 = r0
            L_0x0056:
                r0 = r7
                return r0
            L_0x0058:
                r0 = r5
                java.util.Date r0 = r0.lastModified
                if (r0 == 0) goto L_0x00a4
                r0 = r5
                okhttp3.Response r0 = r0.cacheResponse
                okhttp3.Request r0 = r0.request()
                okhttp3.HttpUrl r0 = r0.url()
                java.lang.String r0 = r0.query()
                if (r0 != 0) goto L_0x00a4
                r0 = r5
                java.util.Date r0 = r0.servedDate
                if (r0 == 0) goto L_0x0082
                r0 = r5
                java.util.Date r0 = r0.servedDate
                long r0 = r0.getTime()
                r9 = r0
                goto L_0x0088
            L_0x0082:
                r0 = r5
                long r0 = r0.sentRequestMillis
                r9 = r0
            L_0x0088:
                r0 = r9
                r1 = r5
                java.util.Date r1 = r1.lastModified
                long r1 = r1.getTime()
                long r0 = r0 - r1
                r9 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00a2
                r0 = r9
                r1 = 10
                long r0 = r0 / r1
                r7 = r0
            L_0x00a2:
                r0 = r7
                return r0
            L_0x00a4:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.Factory.computeFreshnessLifetime():long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v4 */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private okhttp3.internal.cache.CacheStrategy getCandidate() {
            /*
                Method dump skipped, instructions count: 462
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.Factory.getCandidate():okhttp3.internal.cache.CacheStrategy");
        }

        private static boolean hasConditions(Request request) {
            return (request.header("If-Modified-Since") == null && request.header(HttpRequest.HEADER_IF_NONE_MATCH) == null) ? false : true;
        }

        private boolean isFreshnessLifetimeHeuristic() {
            return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        public CacheStrategy get() {
            CacheStrategy candidate = getCandidate();
            return (candidate.networkRequest == null || !this.request.cacheControl().onlyIfCached()) ? candidate : new CacheStrategy(null, null);
        }
    }

    CacheStrategy(Request request, Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    public static boolean isCacheable(Response response, Request request) {
        switch (response.code()) {
            case 200:
            case HttpConstants.HTTP_NOT_AUTHORITATIVE /* 203 */:
            case HttpConstants.HTTP_NO_CONTENT /* 204 */:
            case 300:
            case HttpConstants.HTTP_MOVED_PERM /* 301 */:
            case StatusLine.HTTP_PERM_REDIRECT /* 308 */:
            case 404:
            case HttpConstants.HTTP_BAD_METHOD /* 405 */:
            case HttpConstants.HTTP_GONE /* 410 */:
            case HttpConstants.HTTP_REQ_TOO_LONG /* 414 */:
            case 501:
                break;
            default:
                return false;
            case HttpConstants.HTTP_MOVED_TEMP /* 302 */:
            case StatusLine.HTTP_TEMP_REDIRECT /* 307 */:
                if (response.header(HttpRequest.HEADER_EXPIRES) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().isPublic() && !response.cacheControl().isPrivate()) {
                    return false;
                }
                break;
        }
        boolean z = false;
        if (!response.cacheControl().noStore()) {
            z = false;
            if (!request.cacheControl().noStore()) {
                z = true;
            }
        }
        return z;
    }
}
