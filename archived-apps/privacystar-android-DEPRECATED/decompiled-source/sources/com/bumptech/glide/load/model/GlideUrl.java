package com.bumptech.glide.load.model;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/GlideUrl.class */
public class GlideUrl implements Key {
    private static final String ALLOWED_URI_CHARS = "@#&=*+-_.,:!?()/~'%;$";
    @Nullable
    private volatile byte[] cacheKeyBytes;
    private int hashCode;
    private final Headers headers;
    @Nullable
    private String safeStringUrl;
    @Nullable
    private URL safeUrl;
    @Nullable
    private final String stringUrl;
    @Nullable
    private final URL url;

    public GlideUrl(String str) {
        this(str, Headers.DEFAULT);
    }

    public GlideUrl(String str, Headers headers) {
        this.url = null;
        this.stringUrl = Preconditions.checkNotEmpty(str);
        this.headers = (Headers) Preconditions.checkNotNull(headers);
    }

    public GlideUrl(URL url) {
        this(url, Headers.DEFAULT);
    }

    public GlideUrl(URL url, Headers headers) {
        this.url = (URL) Preconditions.checkNotNull(url);
        this.stringUrl = null;
        this.headers = (Headers) Preconditions.checkNotNull(headers);
    }

    private byte[] getCacheKeyBytes() {
        if (this.cacheKeyBytes == null) {
            this.cacheKeyBytes = getCacheKey().getBytes(CHARSET);
        }
        return this.cacheKeyBytes;
    }

    private String getSafeStringUrl() {
        if (TextUtils.isEmpty(this.safeStringUrl)) {
            String str = this.stringUrl;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = ((URL) Preconditions.checkNotNull(this.url)).toString();
            }
            this.safeStringUrl = Uri.encode(str2, ALLOWED_URI_CHARS);
        }
        return this.safeStringUrl;
    }

    private URL getSafeUrl() throws MalformedURLException {
        if (this.safeUrl == null) {
            this.safeUrl = new URL(getSafeStringUrl());
        }
        return this.safeUrl;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof GlideUrl)) {
            return false;
        }
        GlideUrl glideUrl = (GlideUrl) obj;
        boolean z = false;
        if (getCacheKey().equals(glideUrl.getCacheKey())) {
            z = false;
            if (this.headers.equals(glideUrl.headers)) {
                z = true;
            }
        }
        return z;
    }

    public String getCacheKey() {
        return this.stringUrl != null ? this.stringUrl : ((URL) Preconditions.checkNotNull(this.url)).toString();
    }

    public Map<String, String> getHeaders() {
        return this.headers.getHeaders();
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = getCacheKey().hashCode();
            this.hashCode = (this.hashCode * 31) + this.headers.hashCode();
        }
        return this.hashCode;
    }

    public String toString() {
        return getCacheKey();
    }

    public String toStringUrl() {
        return getSafeStringUrl();
    }

    public URL toURL() throws MalformedURLException {
        return getSafeUrl();
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(getCacheKeyBytes());
    }
}
