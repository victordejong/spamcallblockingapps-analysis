package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p247b.C7058a;
import p081h.p203i.p204a.p224e.p235d.p249s.C7071c;
import p081h.p203i.p204a.p224e.p235d.p249s.C7081m;
import p081h.p203i.p204a.p224e.p235d.p249s.C7082n;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final C7058a CREATOR = new C7058a();

        /* renamed from: a */
        public final int f6626a;

        /* renamed from: b */
        public final int f6627b;

        /* renamed from: c */
        public final boolean f6628c;

        /* renamed from: d */
        public final int f6629d;

        /* renamed from: e */
        public final boolean f6630e;

        /* renamed from: f */
        public final String f6631f;

        /* renamed from: g */
        public final int f6632g;

        /* renamed from: h */
        public final Class<? extends FastJsonResponse> f6633h;

        /* renamed from: i */
        public final String f6634i;

        /* renamed from: j */
        public zak f6635j;

        /* renamed from: k */
        public AbstractC3566a<I, O> f6636k;

        public Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zaa zaaVar) {
            this.f6626a = i;
            this.f6627b = i2;
            this.f6628c = z;
            this.f6629d = i3;
            this.f6630e = z2;
            this.f6631f = str;
            this.f6632g = i4;
            if (str2 == null) {
                this.f6633h = null;
                this.f6634i = null;
            } else {
                this.f6633h = SafeParcelResponse.class;
                this.f6634i = str2;
            }
            if (zaaVar == null) {
                this.f6636k = null;
            } else {
                this.f6636k = (AbstractC3566a<I, O>) zaaVar.m31933c();
            }
        }

        public Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, AbstractC3566a<I, O> aVar) {
            this.f6626a = 1;
            this.f6627b = i;
            this.f6628c = z;
            this.f6629d = i2;
            this.f6630e = z2;
            this.f6631f = str;
            this.f6632g = i3;
            this.f6633h = cls;
            if (cls == null) {
                this.f6634i = null;
            } else {
                this.f6634i = cls.getCanonicalName();
            }
            this.f6636k = aVar;
        }

        /* renamed from: a */
        public static Field<byte[], byte[]> m31921a(String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        /* renamed from: a */
        public static <T extends FastJsonResponse> Field<T, T> m31920a(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        /* renamed from: b */
        public static Field<Integer, Integer> m31919b(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        /* renamed from: b */
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> m31918b(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        /* renamed from: c */
        public static Field<String, String> m31916c(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        /* renamed from: d */
        public static Field<ArrayList<String>, ArrayList<String>> m31915d(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        /* renamed from: H */
        public final String m31928H() {
            String str = this.f6634i;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            return str2;
        }

        /* renamed from: I */
        public final boolean m31927I() {
            return this.f6636k != null;
        }

        /* renamed from: J */
        public final zaa m31926J() {
            AbstractC3566a<I, O> aVar = this.f6636k;
            if (aVar == null) {
                return null;
            }
            return zaa.m31934a(aVar);
        }

        /* renamed from: K */
        public final Map<String, Field<?, ?>> m31925K() {
            C7021t.m21290a(this.f6634i);
            C7021t.m21290a(this.f6635j);
            return this.f6635j.m31905a(this.f6634i);
        }

        /* renamed from: a */
        public final I m31922a(O o) {
            return this.f6636k.mo31914a(o);
        }

        /* renamed from: a */
        public final void m31923a(zak zakVar) {
            this.f6635j = zakVar;
        }

        /* renamed from: c */
        public int m31917c() {
            return this.f6632g;
        }

        public String toString() {
            C7018s.C7019a a = C7018s.m21298a(this);
            a.m21295a("versionCode", Integer.valueOf(this.f6626a));
            a.m21295a("typeIn", Integer.valueOf(this.f6627b));
            a.m21295a("typeInArray", Boolean.valueOf(this.f6628c));
            a.m21295a("typeOut", Integer.valueOf(this.f6629d));
            a.m21295a("typeOutArray", Boolean.valueOf(this.f6630e));
            a.m21295a("outputFieldName", this.f6631f);
            a.m21295a("safeParcelFieldId", Integer.valueOf(this.f6632g));
            a.m21295a("concreteTypeName", m31928H());
            Class<? extends FastJsonResponse> cls = this.f6633h;
            if (cls != null) {
                a.m21295a("concreteType.class", cls.getCanonicalName());
            }
            AbstractC3566a<I, O> aVar = this.f6636k;
            if (aVar != null) {
                a.m21295a("converterName", aVar.getClass().getCanonicalName());
            }
            return a.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int a = C7031b.m21230a(parcel);
            C7031b.m21225a(parcel, 1, this.f6626a);
            C7031b.m21225a(parcel, 2, this.f6627b);
            C7031b.m21212a(parcel, 3, this.f6628c);
            C7031b.m21225a(parcel, 4, this.f6629d);
            C7031b.m21212a(parcel, 5, this.f6630e);
            C7031b.m21215a(parcel, 6, this.f6631f, false);
            C7031b.m21225a(parcel, 7, m31917c());
            C7031b.m21215a(parcel, 8, m31928H(), false);
            C7031b.m21220a(parcel, 9, (Parcelable) m31926J(), i, false);
            C7031b.m21229a(parcel, a);
        }
    }

    /* renamed from: com.google.android.gms.common.server.response.FastJsonResponse$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$a.class */
    public interface AbstractC3566a<I, O> {
        /* renamed from: a */
        I mo31914a(O o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <O, I> I m31931a(Field<I, O> field, Object obj) {
        return field.f6636k != null ? field.m31922a((Field<I, O>) obj) : obj;
    }

    /* renamed from: a */
    public static void m31930a(StringBuilder sb, Field field, Object obj) {
        int i = field.f6627b;
        if (i == 11) {
            sb.append(((FastJsonResponse) field.f6633h.cast(obj)).toString());
        } else if (i == 7) {
            sb.append("\"");
            sb.append(C7081m.m21133a((String) obj));
            sb.append("\"");
        } else {
            sb.append(obj);
        }
    }

    /* renamed from: a */
    public Object mo31932a(Field field) {
        String str = field.f6631f;
        if (field.f6633h == null) {
            return mo31912a(str);
        }
        C7021t.m21280b(mo31912a(str) == null, "Concrete field shouldn't be value object: %s", field.f6631f);
        boolean z = field.f6630e;
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public abstract Object mo31912a(String str);

    /* renamed from: a */
    public abstract Map<String, Field<?, ?>> mo31913a();

    /* renamed from: b */
    public boolean mo31929b(Field field) {
        if (field.f6629d != 11) {
            return mo31908b(field.f6631f);
        }
        if (field.f6630e) {
            String str = field.f6631f;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        String str2 = field.f6631f;
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    /* renamed from: b */
    public abstract boolean mo31908b(String str);

    public String toString() {
        Map<String, Field<?, ?>> a = mo31913a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : a.keySet()) {
            Field<?, ?> field = a.get(str);
            if (mo31929b(field)) {
                Object a2 = m31931a(field, mo31932a(field));
                if (sb.length() == 0) {
                    sb.append(CssParser.BLOCK_START);
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (a2 != null) {
                    switch (field.f6629d) {
                        case 8:
                            sb.append("\"");
                            sb.append(C7071c.m21160a((byte[]) a2));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(C7071c.m21159b((byte[]) a2));
                            sb.append("\"");
                            continue;
                        case 10:
                            C7082n.m21132a(sb, (HashMap) a2);
                            continue;
                        default:
                            if (!field.f6628c) {
                                m31930a(sb, field, a2);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) a2;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        m31930a(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                continue;
                            }
                    }
                } else {
                    sb.append(C14247d.f31851f);
                }
            }
        }
        if (sb.length() > 0) {
            sb.append(CssParser.BLOCK_END);
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
