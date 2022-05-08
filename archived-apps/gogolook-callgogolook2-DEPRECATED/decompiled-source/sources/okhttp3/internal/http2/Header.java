package okhttp3.internal.http2;

import okhttp3.Headers;
import okhttp3.internal.Util;
import p645m.C15175f;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Header.class */
public final class Header {
    public final int hpackSize;
    public final C15175f name;
    public final C15175f value;
    public static final C15175f PSEUDO_PREFIX = C15175f.m336d(":");
    public static final C15175f RESPONSE_STATUS = C15175f.m336d(":status");
    public static final C15175f TARGET_METHOD = C15175f.m336d(":method");
    public static final C15175f TARGET_PATH = C15175f.m336d(":path");
    public static final C15175f TARGET_SCHEME = C15175f.m336d(":scheme");
    public static final C15175f TARGET_AUTHORITY = C15175f.m336d(":authority");

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Header$Listener.class */
    public interface Listener {
        void onHeaders(Headers headers);
    }

    public Header(String str, String str2) {
        this(C15175f.m336d(str), C15175f.m336d(str2));
    }

    public Header(C15175f fVar, String str) {
        this(fVar, C15175f.m336d(str));
    }

    public Header(C15175f fVar, C15175f fVar2) {
        this.name = fVar;
        this.value = fVar2;
        this.hpackSize = fVar.mo268f() + 32 + fVar2.mo268f();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Header) {
            Header header = (Header) obj;
            z = false;
            if (this.name.equals(header.name)) {
                z = false;
                if (this.value.equals(header.value)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.name.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return Util.format("%s: %s", this.name.mo265i(), this.value.mo265i());
    }
}
