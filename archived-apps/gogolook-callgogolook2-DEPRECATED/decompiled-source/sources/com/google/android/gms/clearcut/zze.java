package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p234c.C6777a;
import p081h.p203i.p204a.p224e.p234c.C6785e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p266g.C7649m5;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/zze.class */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new C6785e();

    /* renamed from: a */
    public zzr f6484a;

    /* renamed from: b */
    public byte[] f6485b;

    /* renamed from: c */
    public int[] f6486c;

    /* renamed from: d */
    public String[] f6487d;

    /* renamed from: e */
    public int[] f6488e;

    /* renamed from: f */
    public byte[][] f6489f;

    /* renamed from: g */
    public ExperimentTokens[] f6490g;

    /* renamed from: h */
    public boolean f6491h;

    /* renamed from: i */
    public final C7649m5 f6492i;

    /* renamed from: j */
    public final C6777a.AbstractC6780c f6493j;

    /* renamed from: k */
    public final C6777a.AbstractC6780c f6494k;

    public zze(zzr zzrVar, C7649m5 m5Var, C6777a.AbstractC6780c cVar, C6777a.AbstractC6780c cVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, ExperimentTokens[] experimentTokensArr, boolean z) {
        this.f6484a = zzrVar;
        this.f6492i = m5Var;
        this.f6493j = cVar;
        this.f6494k = null;
        this.f6486c = iArr;
        this.f6487d = null;
        this.f6488e = iArr2;
        this.f6489f = null;
        this.f6490g = null;
        this.f6491h = z;
    }

    public zze(zzr zzrVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, ExperimentTokens[] experimentTokensArr) {
        this.f6484a = zzrVar;
        this.f6485b = bArr;
        this.f6486c = iArr;
        this.f6487d = strArr;
        this.f6492i = null;
        this.f6493j = null;
        this.f6494k = null;
        this.f6488e = iArr2;
        this.f6489f = bArr2;
        this.f6490g = experimentTokensArr;
        this.f6491h = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return C7018s.m21297a(this.f6484a, zzeVar.f6484a) && Arrays.equals(this.f6485b, zzeVar.f6485b) && Arrays.equals(this.f6486c, zzeVar.f6486c) && Arrays.equals(this.f6487d, zzeVar.f6487d) && C7018s.m21297a(this.f6492i, zzeVar.f6492i) && C7018s.m21297a(this.f6493j, zzeVar.f6493j) && C7018s.m21297a(this.f6494k, zzeVar.f6494k) && Arrays.equals(this.f6488e, zzeVar.f6488e) && Arrays.deepEquals(this.f6489f, zzeVar.f6489f) && Arrays.equals(this.f6490g, zzeVar.f6490g) && this.f6491h == zzeVar.f6491h;
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f6484a, this.f6485b, this.f6486c, this.f6487d, this.f6492i, this.f6493j, this.f6494k, this.f6488e, this.f6489f, this.f6490g, Boolean.valueOf(this.f6491h));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.f6484a);
        sb.append(", LogEventBytes: ");
        byte[] bArr = this.f6485b;
        sb.append(bArr == null ? null : new String(bArr));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.f6486c));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f6487d));
        sb.append(", LogEvent: ");
        sb.append(this.f6492i);
        sb.append(", ExtensionProducer: ");
        sb.append(this.f6493j);
        sb.append(", VeProducer: ");
        sb.append(this.f6494k);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.f6488e));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.f6489f));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.f6490g));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.f6491h);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6484a, i, false);
        C7031b.m21211a(parcel, 3, this.f6485b, false);
        C7031b.m21210a(parcel, 4, this.f6486c, false);
        C7031b.m21208a(parcel, 5, this.f6487d, false);
        C7031b.m21210a(parcel, 6, this.f6488e, false);
        C7031b.m21207a(parcel, 7, this.f6489f, false);
        C7031b.m21212a(parcel, 8, this.f6491h);
        C7031b.m21209a(parcel, 9, (Parcelable[]) this.f6490g, i, false);
        C7031b.m21229a(parcel, a);
    }
}
