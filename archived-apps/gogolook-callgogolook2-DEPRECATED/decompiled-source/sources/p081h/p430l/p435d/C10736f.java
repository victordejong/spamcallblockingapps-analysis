package p081h.p430l.p435d;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.NativeAd;
import java.util.Iterator;
import java.util.List;
/* renamed from: h.l.d.f */
/* loaded from: classes2-dex2jar.jar:h/l/d/f.class */
public class C10736f {
    public static final int NOT_FOUND = -1;

    /* renamed from: c */
    public int f24474c;
    @NonNull

    /* renamed from: a */
    public final int[] f24472a = new int[200];
    @NonNull

    /* renamed from: b */
    public final int[] f24473b = new int[200];
    @NonNull

    /* renamed from: d */
    public final int[] f24475d = new int[200];
    @NonNull

    /* renamed from: e */
    public final int[] f24476e = new int[200];
    @NonNull

    /* renamed from: f */
    public final NativeAd[] f24477f = new NativeAd[200];

    /* renamed from: g */
    public int f24478g = 0;

    public C10736f(@NonNull int[] iArr) {
        this.f24474c = 0;
        this.f24474c = Math.min(iArr.length, 200);
        System.arraycopy(iArr, 0, this.f24473b, 0, this.f24474c);
        System.arraycopy(iArr, 0, this.f24472a, 0, this.f24474c);
    }

    /* renamed from: a */
    public static int m10773a(int[] iArr, int i, int i2) {
        int a = m10772a(iArr, 0, i, i2);
        if (a < 0) {
            return a ^ (-1);
        }
        int i3 = iArr[a];
        while (a >= 0 && iArr[a] == i3) {
            a--;
        }
        return a + 1;
    }

    /* renamed from: a */
    public static int m10772a(int[] iArr, int i, int i2, int i3) {
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i3) {
                i = i5 + 1;
            } else if (i6 <= i3) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return i ^ (-1);
    }

    @NonNull
    /* renamed from: a */
    public static C10736f m10774a(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        int i;
        List<Integer> a = moPubClientPositioning.m30131a();
        int b = moPubClientPositioning.m30128b();
        int size = b == Integer.MAX_VALUE ? a.size() : 200;
        int[] iArr = new int[size];
        Iterator<Integer> it = a.iterator();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (it.hasNext()) {
                i3 = it.next().intValue() - i2;
                iArr[i2] = i3;
                i2++;
            }
        }
        for (i = i2; i < size; i++) {
            i3 = (i3 + b) - 1;
            iArr[i] = i3;
        }
        return new C10736f(iArr);
    }

    /* renamed from: b */
    public static int m10768b(int[] iArr, int i, int i2) {
        int a = m10772a(iArr, 0, i, i2);
        if (a < 0) {
            return a ^ (-1);
        }
        int i3 = iArr[a];
        while (a < i && iArr[a] == i3) {
            a++;
        }
        return a;
    }

    @NonNull
    /* renamed from: c */
    public static C10736f m10767c() {
        return new C10736f(new int[0]);
    }

    /* renamed from: a */
    public int m10777a(int i) {
        if (i == 0) {
            return 0;
        }
        return m10770b(i - 1) + 1;
    }

    /* renamed from: a */
    public int m10776a(int i, int i2) {
        int i3 = this.f24478g;
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f24478g; i5++) {
            int i6 = this.f24475d[i5];
            int i7 = this.f24476e[i5];
            if (i > i7 || i7 >= i2) {
                i4 = i4;
                if (i4 > 0) {
                    int i8 = i5 - i4;
                    this.f24475d[i8] = i6;
                    this.f24476e[i8] = i7 - i4;
                    NativeAd[] nativeAdArr = this.f24477f;
                    nativeAdArr[i8] = nativeAdArr[i5];
                    i4 = i4;
                }
            } else {
                iArr[i4] = i6;
                iArr2[i4] = i7 - i4;
                this.f24477f[i5].destroy();
                this.f24477f[i5] = null;
                i4++;
            }
        }
        if (i4 == 0) {
            return 0;
        }
        int a = m10773a(this.f24473b, this.f24474c, iArr2[0]);
        for (int i9 = this.f24474c - 1; i9 >= a; i9--) {
            int[] iArr3 = this.f24472a;
            int i10 = i9 + i4;
            iArr3[i10] = iArr3[i9];
            int[] iArr4 = this.f24473b;
            iArr4[i10] = iArr4[i9] - i4;
        }
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = a + i11;
            this.f24472a[i12] = iArr[i11];
            this.f24473b[i12] = iArr2[i11];
        }
        this.f24474c += i4;
        this.f24478g -= i4;
        return i4;
    }

    /* renamed from: a */
    public void m10778a() {
        int i = this.f24478g;
        if (i != 0) {
            m10776a(0, this.f24476e[i - 1] + 1);
        }
    }

    /* renamed from: a */
    public void m10775a(int i, NativeAd nativeAd) {
        int a = m10773a(this.f24473b, this.f24474c, i);
        if (a == this.f24474c || this.f24473b[a] != i) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to insert an ad at an invalid position");
            return;
        }
        int i2 = this.f24472a[a];
        int b = m10768b(this.f24475d, this.f24478g, i2);
        int i3 = this.f24478g;
        if (b < i3) {
            int i4 = i3 - b;
            int[] iArr = this.f24475d;
            int i5 = b + 1;
            System.arraycopy(iArr, b, iArr, i5, i4);
            int[] iArr2 = this.f24476e;
            System.arraycopy(iArr2, b, iArr2, i5, i4);
            NativeAd[] nativeAdArr = this.f24477f;
            System.arraycopy(nativeAdArr, b, nativeAdArr, i5, i4);
        }
        this.f24475d[b] = i2;
        this.f24476e[b] = i;
        this.f24477f[b] = nativeAd;
        this.f24478g++;
        int i6 = (this.f24474c - a) - 1;
        int[] iArr3 = this.f24473b;
        int i7 = a + 1;
        System.arraycopy(iArr3, i7, iArr3, a, i6);
        int[] iArr4 = this.f24472a;
        System.arraycopy(iArr4, i7, iArr4, a, i6);
        this.f24474c--;
        for (int i8 = a; i8 < this.f24474c; i8++) {
            int[] iArr5 = this.f24473b;
            iArr5[i8] = iArr5[i8] + 1;
        }
        for (int i9 = b + 1; i9 < this.f24478g; i9++) {
            int[] iArr6 = this.f24476e;
            iArr6[i9] = iArr6[i9] + 1;
        }
    }

    /* renamed from: b */
    public int m10770b(int i) {
        return i + m10768b(this.f24475d, this.f24478g, i);
    }

    /* renamed from: b */
    public void m10769b(int i, int i2) {
        m10760i(i);
        m10763f(i2);
    }

    @NonNull
    /* renamed from: b */
    public int[] m10771b() {
        int i = this.f24478g;
        int[] iArr = new int[i];
        System.arraycopy(this.f24476e, 0, iArr, 0, i);
        return iArr;
    }

    /* renamed from: c */
    public int m10766c(int i) {
        if (i == 0) {
            return 0;
        }
        int d = m10765d(i - 1);
        int i2 = -1;
        if (d != -1) {
            i2 = d + 1;
        }
        return i2;
    }

    /* renamed from: d */
    public int m10765d(int i) {
        int a = m10772a(this.f24476e, 0, this.f24478g, i);
        if (a < 0) {
            return i - (a ^ (-1));
        }
        return -1;
    }

    @Nullable
    /* renamed from: e */
    public NativeAd m10764e(int i) {
        int a = m10772a(this.f24476e, 0, this.f24478g, i);
        if (a < 0) {
            return null;
        }
        return this.f24477f[a];
    }

    /* renamed from: f */
    public void m10763f(int i) {
        for (int a = m10773a(this.f24472a, this.f24474c, i); a < this.f24474c; a++) {
            int[] iArr = this.f24472a;
            iArr[a] = iArr[a] + 1;
            int[] iArr2 = this.f24473b;
            iArr2[a] = iArr2[a] + 1;
        }
        for (int a2 = m10773a(this.f24475d, this.f24478g, i); a2 < this.f24478g; a2++) {
            int[] iArr3 = this.f24475d;
            iArr3[a2] = iArr3[a2] + 1;
            int[] iArr4 = this.f24476e;
            iArr4[a2] = iArr4[a2] + 1;
        }
    }

    /* renamed from: g */
    public boolean m10762g(int i) {
        boolean z = false;
        if (m10772a(this.f24476e, 0, this.f24478g, i) >= 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public int m10761h(int i) {
        int b = m10768b(this.f24473b, this.f24474c, i);
        if (b == this.f24474c) {
            return -1;
        }
        return this.f24473b[b];
    }

    /* renamed from: i */
    public void m10760i(int i) {
        for (int b = m10768b(this.f24472a, this.f24474c, i); b < this.f24474c; b++) {
            int[] iArr = this.f24472a;
            iArr[b] = iArr[b] - 1;
            int[] iArr2 = this.f24473b;
            iArr2[b] = iArr2[b] - 1;
        }
        for (int b2 = m10768b(this.f24475d, this.f24478g, i); b2 < this.f24478g; b2++) {
            int[] iArr3 = this.f24475d;
            iArr3[b2] = iArr3[b2] - 1;
            int[] iArr4 = this.f24476e;
            iArr4[b2] = iArr4[b2] - 1;
        }
    }

    /* renamed from: j */
    public boolean m10759j(int i) {
        boolean z = false;
        if (m10772a(this.f24473b, 0, this.f24474c, i) >= 0) {
            z = true;
        }
        return z;
    }
}
