package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import p599h.AbstractC10095b0;
import p599h.C10091a0;
import p599h.C10105d;
import p599h.C10250y;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/NetworkRequestHandler.class */
public class NetworkRequestHandler extends RequestHandler {
    public static final String SCHEME_HTTP = "http";
    public static final String SCHEME_HTTPS = "https";
    public final Downloader downloader;
    public final Stats stats;

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/NetworkRequestHandler$ContentLengthException.class */
    public static class ContentLengthException extends IOException {
        public ContentLengthException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/NetworkRequestHandler$ResponseException.class */
    public static final class ResponseException extends IOException {
        public final int code;
        public final int networkPolicy;

        public ResponseException(int i, int i2) {
            super("HTTP " + i);
            this.code = i;
            this.networkPolicy = i2;
        }
    }

    public NetworkRequestHandler(Downloader downloader, Stats stats) {
        this.downloader = downloader;
        this.stats = stats;
    }

    public static C10250y createRequest(Request request, int i) {
        C10105d dVar;
        if (i == 0) {
            dVar = null;
        } else if (NetworkPolicy.isOfflineOnly(i)) {
            dVar = C10105d.f37290n;
        } else {
            C10105d.C10106a aVar = new C10105d.C10106a();
            if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                aVar.m1472b();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                aVar.m1471c();
            }
            dVar = aVar.m1474a();
        }
        C10250y.C10251a aVar2 = new C10250y.C10251a();
        aVar2.m805b(request.uri.toString());
        if (dVar != null) {
            aVar2.m811a(dVar);
        }
        return aVar2.m812a();
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        String scheme = request.uri.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // com.squareup.picasso.RequestHandler
    public int getRetryCount() {
        return 2;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        C10091a0 load = this.downloader.load(createRequest(request, i));
        AbstractC10095b0 a = load.m1543a();
        if (load.m1535g()) {
            Picasso.LoadedFrom loadedFrom = load.m1539c() == null ? Picasso.LoadedFrom.NETWORK : Picasso.LoadedFrom.DISK;
            if (loadedFrom == Picasso.LoadedFrom.DISK && a.mo1302b() == 0) {
                a.close();
                throw new ContentLengthException("Received response with 0 content-length header.");
            }
            if (loadedFrom == Picasso.LoadedFrom.NETWORK && a.mo1302b() > 0) {
                this.stats.dispatchDownloadFinished(a.mo1302b());
            }
            return new RequestHandler.Result(a.mo1300d(), loadedFrom);
        }
        a.close();
        throw new ResponseException(load.m1538d(), request.networkPolicy);
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean supportsReplay() {
        return true;
    }
}
