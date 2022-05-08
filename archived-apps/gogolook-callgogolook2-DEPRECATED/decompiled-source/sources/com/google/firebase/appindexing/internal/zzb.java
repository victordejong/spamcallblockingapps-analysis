package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p325c.p334l.p335c.C9474e;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/appindexing/internal/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new C9474e();

    /* renamed from: a */
    public int f7734a;

    /* renamed from: b */
    public final boolean f7735b;

    /* renamed from: c */
    public final String f7736c;

    /* renamed from: d */
    public final String f7737d;

    /* renamed from: e */
    public final byte[] f7738e;

    /* renamed from: f */
    public final boolean f7739f;

    public zzb(int i, boolean z, String str, String str2, byte[] bArr, boolean z2) {
        this.f7734a = 0;
        this.f7734a = i;
        this.f7735b = z;
        this.f7736c = str;
        this.f7737d = str2;
        this.f7738e = bArr;
        this.f7739f = z2;
    }

    public final String toString() {
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        sb.append("MetadataImpl { ");
        sb.append("{ eventStatus: '");
        sb.append(this.f7734a);
        sb.append("' } ");
        sb.append("{ uploadable: '");
        sb.append(this.f7735b);
        sb.append("' } ");
        if (this.f7736c != null) {
            sb.append("{ completionToken: '");
            sb.append(this.f7736c);
            sb.append("' } ");
        }
        if (this.f7737d != null) {
            sb.append("{ accountName: '");
            sb.append(this.f7737d);
            sb.append("' } ");
        }
        if (this.f7738e != null) {
            sb.append("{ ssbContext: [ ");
            for (byte b : this.f7738e) {
                sb.append("0x");
                sb.append(Integer.toHexString(b));
                sb.append(" ");
            }
            sb.append("] } ");
        }
        sb.append("{ contextOnly: '");
        sb.append(this.f7739f);
        sb.append("' } ");
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7734a);
        C7031b.m21212a(parcel, 2, this.f7735b);
        C7031b.m21215a(parcel, 3, this.f7736c, false);
        C7031b.m21215a(parcel, 4, this.f7737d, false);
        C7031b.m21211a(parcel, 5, this.f7738e, false);
        C7031b.m21212a(parcel, 6, this.f7739f);
        C7031b.m21229a(parcel, a);
    }
}
