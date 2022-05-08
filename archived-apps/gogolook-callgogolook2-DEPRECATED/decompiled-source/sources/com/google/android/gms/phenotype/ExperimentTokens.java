package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p288n.C9099c;
import p081h.p203i.p204a.p224e.p288n.C9100d;
import p081h.p203i.p204a.p224e.p288n.C9101e;
import p081h.p203i.p204a.p224e.p288n.C9102f;
import p081h.p203i.p204a.p224e.p288n.C9103g;
import p081h.p203i.p204a.p224e.p288n.C9107k;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/phenotype/ExperimentTokens.class */
public class ExperimentTokens extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ExperimentTokens> CREATOR = new C9103g();

    /* renamed from: i */
    public static final byte[][] f7191i = new byte[0];

    /* renamed from: a */
    public final String f7192a;

    /* renamed from: b */
    public final byte[] f7193b;

    /* renamed from: c */
    public final byte[][] f7194c;

    /* renamed from: d */
    public final byte[][] f7195d;

    /* renamed from: e */
    public final byte[][] f7196e;

    /* renamed from: f */
    public final byte[][] f7197f;

    /* renamed from: g */
    public final int[] f7198g;

    /* renamed from: h */
    public final byte[][] f7199h;

    /* renamed from: com.google.android.gms.phenotype.ExperimentTokens$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/phenotype/ExperimentTokens$a.class */
    public interface AbstractC3588a {
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [byte[], byte[][]] */
    static {
        byte[][] bArr = f7191i;
        new ExperimentTokens("", null, bArr, bArr, bArr, bArr, null, null);
        new C9099c();
        new C9100d();
        new C9101e();
        new C9102f();
    }

    public ExperimentTokens(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.f7192a = str;
        this.f7193b = bArr;
        this.f7194c = bArr2;
        this.f7195d = bArr3;
        this.f7196e = bArr4;
        this.f7197f = bArr5;
        this.f7198g = iArr;
        this.f7199h = bArr6;
    }

    /* renamed from: a */
    public static List<Integer> m31655a(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static List<String> m31654a(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static void m31656a(StringBuilder sb, String str, byte[][] bArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            str2 = C14247d.f31851f;
        } else {
            sb.append("(");
            int length = bArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                byte[] bArr2 = bArr[i];
                if (!z) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append("'");
                sb.append(Base64.encodeToString(bArr2, 3));
                sb.append("'");
                i++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ExperimentTokens)) {
            return false;
        }
        ExperimentTokens experimentTokens = (ExperimentTokens) obj;
        return C9107k.m16083a(this.f7192a, experimentTokens.f7192a) && Arrays.equals(this.f7193b, experimentTokens.f7193b) && C9107k.m16083a(m31654a(this.f7194c), m31654a(experimentTokens.f7194c)) && C9107k.m16083a(m31654a(this.f7195d), m31654a(experimentTokens.f7195d)) && C9107k.m16083a(m31654a(this.f7196e), m31654a(experimentTokens.f7196e)) && C9107k.m16083a(m31654a(this.f7197f), m31654a(experimentTokens.f7197f)) && C9107k.m16083a(m31655a(this.f7198g), m31655a(experimentTokens.f7198g)) && C9107k.m16083a(m31654a(this.f7199h), m31654a(experimentTokens.f7199h));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str2 = this.f7192a;
        if (str2 == null) {
            str = C14247d.f31851f;
        } else {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 2);
            sb2.append("'");
            sb2.append(str2);
            sb2.append("'");
            str = sb2.toString();
        }
        sb.append(str);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        byte[] bArr = this.f7193b;
        sb.append("direct");
        sb.append("=");
        if (bArr == null) {
            sb.append(C14247d.f31851f);
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        m31656a(sb, "GAIA", this.f7194c);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        m31656a(sb, "PSEUDO", this.f7195d);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        m31656a(sb, "ALWAYS", this.f7196e);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        m31656a(sb, "OTHER", this.f7197f);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        int[] iArr = this.f7198g;
        sb.append("weak");
        sb.append("=");
        if (iArr == null) {
            sb.append(C14247d.f31851f);
        } else {
            sb.append("(");
            int length = iArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                int i2 = iArr[i];
                if (!z) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(i2);
                i++;
                z = false;
            }
            sb.append(")");
        }
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        m31656a(sb, "directs", this.f7199h);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7192a, false);
        C7031b.m21211a(parcel, 3, this.f7193b, false);
        C7031b.m21207a(parcel, 4, this.f7194c, false);
        C7031b.m21207a(parcel, 5, this.f7195d, false);
        C7031b.m21207a(parcel, 6, this.f7196e, false);
        C7031b.m21207a(parcel, 7, this.f7197f, false);
        C7031b.m21210a(parcel, 8, this.f7198g, false);
        C7031b.m21207a(parcel, 9, this.f7199h, false);
        C7031b.m21229a(parcel, a);
    }
}
