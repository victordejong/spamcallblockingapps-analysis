package p530d.p531a.p533w0.p534o.p535f;

import okio.ByteString;
/* renamed from: d.a.w0.o.f.c */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/c.class */
public final class C9601c {

    /* renamed from: d */
    public static final ByteString f36630d = ByteString.encodeUtf8(":status");

    /* renamed from: e */
    public static final ByteString f36631e = ByteString.encodeUtf8(":method");

    /* renamed from: f */
    public static final ByteString f36632f = ByteString.encodeUtf8(":path");

    /* renamed from: g */
    public static final ByteString f36633g = ByteString.encodeUtf8(":scheme");

    /* renamed from: h */
    public static final ByteString f36634h = ByteString.encodeUtf8(":authority");

    /* renamed from: a */
    public final ByteString f36635a;

    /* renamed from: b */
    public final ByteString f36636b;

    /* renamed from: c */
    public final int f36637c;

    static {
        ByteString.encodeUtf8(":host");
        ByteString.encodeUtf8(":version");
    }

    public C9601c(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public C9601c(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public C9601c(ByteString byteString, ByteString byteString2) {
        this.f36635a = byteString;
        this.f36636b = byteString2;
        this.f36637c = byteString.size() + 32 + byteString2.size();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C9601c) {
            C9601c cVar = (C9601c) obj;
            z = false;
            if (this.f36635a.equals(cVar.f36635a)) {
                z = false;
                if (this.f36636b.equals(cVar.f36636b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f36635a.hashCode()) * 31) + this.f36636b.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", this.f36635a.utf8(), this.f36636b.utf8());
    }
}
