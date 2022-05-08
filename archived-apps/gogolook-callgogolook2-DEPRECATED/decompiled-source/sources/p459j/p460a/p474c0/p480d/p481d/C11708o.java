package p459j.p460a.p474c0.p480d.p481d;

import android.net.Uri;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
/* renamed from: j.a.c0.d.d.o */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/o.class */
public class C11708o {

    /* renamed from: d */
    public static final byte[] f26259d = "from-data".getBytes();

    /* renamed from: e */
    public static final byte[] f26260e = "attachment".getBytes();

    /* renamed from: f */
    public static final byte[] f26261f = "inline".getBytes();

    /* renamed from: a */
    public SparseArray<Object> f26262a;

    /* renamed from: b */
    public Uri f26263b = null;

    /* renamed from: c */
    public byte[] f26264c = null;

    public C11708o() {
        this.f26262a = null;
        this.f26262a = new SparseArray<>();
    }

    /* renamed from: a */
    public int m8499a() {
        Integer num = (Integer) this.f26262a.get(129);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: a */
    public void m8498a(int i) {
        this.f26262a.put(129, Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m8497a(Uri uri) {
        this.f26263b = uri;
    }

    /* renamed from: a */
    public void m8496a(byte[] bArr) {
        if (bArr != null) {
            this.f26262a.put(197, bArr);
            return;
        }
        throw new NullPointerException("null content-disposition");
    }

    /* renamed from: b */
    public void m8494b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Content-Id may not be null or empty.");
        } else if (bArr.length > 1 && ((char) bArr[0]) == '<' && ((char) bArr[bArr.length - 1]) == '>') {
            this.f26262a.put(PsExtractor.AUDIO_STREAM, bArr);
        } else {
            byte[] bArr2 = new byte[bArr.length + 2];
            bArr2[0] = (byte) 60;
            bArr2[bArr2.length - 1] = (byte) 62;
            System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
            this.f26262a.put(PsExtractor.AUDIO_STREAM, bArr2);
        }
    }

    /* renamed from: b */
    public byte[] m8495b() {
        return (byte[]) this.f26262a.get(197);
    }

    /* renamed from: c */
    public void m8492c(byte[] bArr) {
        if (bArr != null) {
            this.f26262a.put(142, bArr);
            return;
        }
        throw new NullPointerException("null content-location");
    }

    /* renamed from: c */
    public byte[] m8493c() {
        return (byte[]) this.f26262a.get(PsExtractor.AUDIO_STREAM);
    }

    /* renamed from: d */
    public void m8490d(byte[] bArr) {
        if (bArr != null) {
            this.f26262a.put(200, bArr);
            return;
        }
        throw new NullPointerException("null content-transfer-encoding");
    }

    /* renamed from: d */
    public byte[] m8491d() {
        return (byte[]) this.f26262a.get(142);
    }

    /* renamed from: e */
    public void m8488e(byte[] bArr) {
        if (bArr != null) {
            this.f26262a.put(145, bArr);
            return;
        }
        throw new NullPointerException("null content-type");
    }

    /* renamed from: e */
    public byte[] m8489e() {
        return (byte[]) this.f26262a.get(200);
    }

    /* renamed from: f */
    public void m8486f(byte[] bArr) {
        this.f26264c = bArr;
    }

    /* renamed from: f */
    public byte[] m8487f() {
        return (byte[]) this.f26262a.get(145);
    }

    /* renamed from: g */
    public void m8484g(byte[] bArr) {
        if (bArr != null) {
            this.f26262a.put(152, bArr);
            return;
        }
        throw new NullPointerException("null content-id");
    }

    /* renamed from: g */
    public byte[] m8485g() {
        return this.f26264c;
    }

    /* renamed from: h */
    public Uri m8483h() {
        return this.f26263b;
    }

    /* renamed from: h */
    public void m8482h(byte[] bArr) {
        if (bArr != null) {
            this.f26262a.put(151, bArr);
            return;
        }
        throw new NullPointerException("null content-id");
    }

    /* renamed from: i */
    public byte[] m8481i() {
        return (byte[]) this.f26262a.get(152);
    }

    /* renamed from: j */
    public byte[] m8480j() {
        return (byte[]) this.f26262a.get(151);
    }
}
