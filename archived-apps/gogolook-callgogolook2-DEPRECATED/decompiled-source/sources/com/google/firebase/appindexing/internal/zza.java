package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p325c.p334l.AbstractC9467a;
import p081h.p203i.p325c.p334l.p335c.C9471b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/appindexing/internal/zza.class */
public final class zza extends AbstractSafeParcelable implements AbstractC9467a {
    public static final Parcelable.Creator<zza> CREATOR = new C9471b();

    /* renamed from: a */
    public final String f7727a;

    /* renamed from: b */
    public final String f7728b;

    /* renamed from: c */
    public final String f7729c;

    /* renamed from: d */
    public final String f7730d;

    /* renamed from: e */
    public final zzb f7731e;

    /* renamed from: f */
    public final String f7732f;

    /* renamed from: g */
    public final Bundle f7733g;

    public zza(String str, String str2, String str3, String str4, zzb zzbVar, String str5, Bundle bundle) {
        this.f7727a = str;
        this.f7728b = str2;
        this.f7729c = str3;
        this.f7730d = str4;
        this.f7731e = zzbVar;
        this.f7732f = str5;
        if (bundle != null) {
            this.f7733g = bundle;
        } else {
            this.f7733g = Bundle.EMPTY;
        }
        this.f7733g.setClassLoader(zza.class.getClassLoader());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActionImpl { ");
        sb.append("{ actionType: '");
        sb.append(this.f7727a);
        sb.append("' } ");
        sb.append("{ objectName: '");
        sb.append(this.f7728b);
        sb.append("' } ");
        sb.append("{ objectUrl: '");
        sb.append(this.f7729c);
        sb.append("' } ");
        if (this.f7730d != null) {
            sb.append("{ objectSameAs: '");
            sb.append(this.f7730d);
            sb.append("' } ");
        }
        if (this.f7731e != null) {
            sb.append("{ metadata: '");
            sb.append(this.f7731e.toString());
            sb.append("' } ");
        }
        if (this.f7732f != null) {
            sb.append("{ actionStatus: '");
            sb.append(this.f7732f);
            sb.append("' } ");
        }
        if (!this.f7733g.isEmpty()) {
            sb.append("{ ");
            sb.append(this.f7733g);
            sb.append(" } ");
        }
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f7727a, false);
        C7031b.m21215a(parcel, 2, this.f7728b, false);
        C7031b.m21215a(parcel, 3, this.f7729c, false);
        C7031b.m21215a(parcel, 4, this.f7730d, false);
        C7031b.m21220a(parcel, 5, (Parcelable) this.f7731e, i, false);
        C7031b.m21215a(parcel, 6, this.f7732f, false);
        C7031b.m21223a(parcel, 7, this.f7733g, false);
        C7031b.m21229a(parcel, a);
    }
}
