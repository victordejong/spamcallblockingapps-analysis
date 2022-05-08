package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p325c.p334l.AbstractC9468b;
import p081h.p203i.p325c.p334l.p335c.C9470a;
import p081h.p203i.p325c.p334l.p335c.C9473d;
import p081h.p203i.p325c.p334l.p335c.C9476g;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/appindexing/internal/Thing.class */
public final class Thing extends AbstractSafeParcelable implements ReflectedParcelable, AbstractC9468b {
    public static final Parcelable.Creator<Thing> CREATOR = new C9470a();

    /* renamed from: a */
    public final int f7718a;

    /* renamed from: b */
    public final Bundle f7719b;

    /* renamed from: c */
    public final zza f7720c;

    /* renamed from: d */
    public final String f7721d;

    /* renamed from: e */
    public final String f7722e;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/appindexing/internal/Thing$zza.class */
    public static final class zza extends AbstractSafeParcelable implements AbstractC9468b.AbstractC9469a {
        public static final Parcelable.Creator<zza> CREATOR = new C9473d();

        /* renamed from: a */
        public final boolean f7723a;

        /* renamed from: b */
        public final int f7724b;

        /* renamed from: c */
        public final String f7725c;

        /* renamed from: d */
        public final Bundle f7726d;

        public zza(boolean z, int i, String str, Bundle bundle) {
            this.f7723a = z;
            this.f7724b = i;
            this.f7725c = str;
            this.f7726d = bundle == null ? new Bundle() : bundle;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("worksOffline: ");
            sb.append(this.f7723a);
            sb.append(", score: ");
            sb.append(this.f7724b);
            if (!this.f7725c.isEmpty()) {
                sb.append(", accountEmail: ");
                sb.append(this.f7725c);
            }
            Bundle bundle = this.f7726d;
            if (bundle != null && !bundle.isEmpty()) {
                sb.append(", Properties { ");
                Thing.m31114a(this.f7726d, sb);
                sb.append(CssParser.BLOCK_END);
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a = C7031b.m21230a(parcel);
            C7031b.m21212a(parcel, 1, this.f7723a);
            C7031b.m21225a(parcel, 2, this.f7724b);
            C7031b.m21215a(parcel, 3, this.f7725c, false);
            C7031b.m21223a(parcel, 4, this.f7726d, false);
            C7031b.m21229a(parcel, a);
        }
    }

    public Thing(int i, Bundle bundle, zza zzaVar, String str, String str2) {
        this.f7718a = i;
        this.f7719b = bundle;
        this.f7720c = zzaVar;
        this.f7721d = str;
        this.f7722e = str2;
        this.f7719b.setClassLoader(Thing.class.getClassLoader());
    }

    /* renamed from: a */
    public static final /* synthetic */ int m31113a(String str, String str2) {
        if (str == null) {
            return str2 == null ? 0 : -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    /* renamed from: a */
    public static void m31114a(@NonNull Bundle bundle, @NonNull StringBuilder sb) {
        String obj;
        try {
            Set<String> keySet = bundle.keySet();
            String[] strArr = (String[]) keySet.toArray(new String[keySet.size()]);
            Arrays.sort(strArr, C9476g.f21612a);
            for (String str : strArr) {
                sb.append("{ key: '");
                sb.append(str);
                sb.append("' value: ");
                Object obj2 = bundle.get(str);
                if (obj2 == null) {
                    obj = "<null>";
                } else if (obj2.getClass().isArray()) {
                    sb.append("[ ");
                    for (int i = 0; i < Array.getLength(obj2); i++) {
                        sb.append("'");
                        sb.append(Array.get(obj2, i));
                        sb.append("' ");
                    }
                    obj = "]";
                } else {
                    obj = obj2.toString();
                }
                sb.append(obj);
                sb.append(" } ");
            }
        } catch (RuntimeException e) {
            sb.append("<error>");
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f7722e.equals("Thing") ? "Indexable" : this.f7722e);
        sb.append(" { { id: ");
        if (this.f7721d == null) {
            str = "<null>";
        } else {
            str = "'";
            sb.append("'");
            sb.append(this.f7721d);
        }
        sb.append(str);
        sb.append(" } Properties { ");
        m31114a(this.f7719b, sb);
        sb.append("} ");
        sb.append("Metadata { ");
        sb.append(this.f7720c.toString());
        sb.append(" } ");
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21223a(parcel, 1, this.f7719b, false);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7720c, i, false);
        C7031b.m21215a(parcel, 3, this.f7721d, false);
        C7031b.m21215a(parcel, 4, this.f7722e, false);
        C7031b.m21225a(parcel, 1000, this.f7718a);
        C7031b.m21229a(parcel, a);
    }
}
