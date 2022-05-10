package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    @VisibleForTesting
    @SafeParcelable.Class
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();
        @SafeParcelable.VersionField

        /* renamed from: a */
        public final int f23512a;
        @SafeParcelable.Field

        /* renamed from: b */
        public final int f23513b;
        @SafeParcelable.Field

        /* renamed from: c */
        public final boolean f23514c;
        @SafeParcelable.Field

        /* renamed from: d */
        public final int f23515d;
        @SafeParcelable.Field

        /* renamed from: e */
        public final boolean f23516e;
        @SafeParcelable.Field

        /* renamed from: f */
        public final String f23517f;
        @SafeParcelable.Field

        /* renamed from: g */
        public final int f23518g;

        /* renamed from: h */
        public final Class<? extends FastJsonResponse> f23519h;
        @SafeParcelable.Field

        /* renamed from: i */
        public final String f23520i;

        /* renamed from: j */
        public zal f23521j;
        @SafeParcelable.Field

        /* renamed from: k */
        public FieldConverter<I, O> f23522k;

        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) zaa zaaVar) {
            this.f23512a = i;
            this.f23513b = i2;
            this.f23514c = z;
            this.f23515d = i3;
            this.f23516e = z2;
            this.f23517f = str;
            this.f23518g = i4;
            if (str2 == null) {
                this.f23519h = null;
                this.f23520i = null;
            } else {
                this.f23519h = SafeParcelResponse.class;
                this.f23520i = str2;
            }
            if (zaaVar == null) {
                this.f23522k = null;
            } else {
                this.f23522k = (FieldConverter<I, O>) zaaVar.m17151f();
            }
        }

        /* renamed from: a */
        public final void m17147a(zal zalVar) {
            this.f23521j = zalVar;
        }

        /* renamed from: b */
        public final I m17146b(O o) {
            Preconditions.m17288a(this.f23522k);
            return this.f23522k.mo17140a(o);
        }

        @KeepForSdk
        /* renamed from: f */
        public int m17145f() {
            return this.f23518g;
        }

        /* renamed from: i */
        public final boolean m17144i() {
            return this.f23522k != null;
        }

        public String toString() {
            Objects.ToStringHelper a = Objects.m17296a(this);
            a.m17293a("versionCode", Integer.valueOf(this.f23512a));
            a.m17293a("typeIn", Integer.valueOf(this.f23513b));
            a.m17293a("typeInArray", Boolean.valueOf(this.f23514c));
            a.m17293a("typeOut", Integer.valueOf(this.f23515d));
            a.m17293a("typeOutArray", Boolean.valueOf(this.f23516e));
            a.m17293a("outputFieldName", this.f23517f);
            a.m17293a("safeParcelFieldId", Integer.valueOf(this.f23518g));
            a.m17293a("concreteTypeName", m17142v());
            Class<? extends FastJsonResponse> cls = this.f23519h;
            if (cls != null) {
                a.m17293a("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.f23522k;
            if (fieldConverter != null) {
                a.m17293a("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return a.toString();
        }

        /* renamed from: u */
        public final Map<String, Field<?, ?>> m17143u() {
            Preconditions.m17288a(this.f23520i);
            Preconditions.m17288a(this.f23521j);
            Map<String, Field<?, ?>> a = this.f23521j.m17133a(this.f23520i);
            Preconditions.m17288a(a);
            return a;
        }

        /* renamed from: v */
        public final String m17142v() {
            String str = this.f23520i;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            return str2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int a = SafeParcelWriter.m17235a(parcel);
            SafeParcelWriter.m17231a(parcel, 1, this.f23512a);
            SafeParcelWriter.m17231a(parcel, 2, this.f23513b);
            SafeParcelWriter.m17218a(parcel, 3, this.f23514c);
            SafeParcelWriter.m17231a(parcel, 4, this.f23515d);
            SafeParcelWriter.m17218a(parcel, 5, this.f23516e);
            SafeParcelWriter.m17221a(parcel, 6, this.f23517f, false);
            SafeParcelWriter.m17231a(parcel, 7, m17145f());
            SafeParcelWriter.m17221a(parcel, 8, m17142v(), false);
            SafeParcelWriter.m17226a(parcel, 9, (Parcelable) m17141y(), i, false);
            SafeParcelWriter.m17234a(parcel, a);
        }

        /* renamed from: y */
        public final zaa m17141y() {
            FieldConverter<I, O> fieldConverter = this.f23522k;
            if (fieldConverter == null) {
                return null;
            }
            return zaa.m17152a(fieldConverter);
        }
    }

    @ShowFirstParty
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        /* renamed from: a */
        I mo17140a(O o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <O, I> I m17149a(Field<I, O> field, Object obj) {
        return field.f23522k != null ? field.m17146b(obj) : obj;
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract Map<String, Field<?, ?>> mo17139a();

    @KeepForSdk
    /* renamed from: a */
    public boolean m17150a(Field field) {
        if (field.f23515d != 11) {
            mo17138a(field.f23517f);
            throw null;
        } else if (field.f23516e) {
            String str = field.f23517f;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        } else {
            String str2 = field.f23517f;
            throw new UnsupportedOperationException("Concrete types not supported");
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract boolean mo17138a(String str);

    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> a = mo17139a();
        StringBuilder sb = new StringBuilder(100);
        Iterator<String> it = a.keySet().iterator();
        if (!it.hasNext()) {
            if (sb.length() > 0) {
                sb.append("}");
            } else {
                sb.append("{}");
            }
            return sb.toString();
        }
        m17150a(a.get(it.next()));
        throw null;
    }
}
