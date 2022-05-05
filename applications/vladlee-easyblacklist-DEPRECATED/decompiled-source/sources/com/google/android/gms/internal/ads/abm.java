package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abm.class */
public final class abm<K, V> extends zzdey<K, V> {

    /* renamed from: a */
    private static final zzdey<Object, Object> f7170a = new abm(null, new Object[0], 0);

    /* renamed from: b */
    private final transient Object f7171b;

    /* renamed from: c */
    private final transient Object[] f7172c;

    /* renamed from: d */
    private final transient int f7173d;

    private abm(Object obj, Object[] objArr, int i) {
        this.f7171b = obj;
        this.f7172c = objArr;
        this.f7173d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> abm<K, V> m5493a(Object[] objArr) {
        int[] iArr;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        zzdei.zzt(5, 5);
        int a = zzdfb.m3587a(5);
        int i7 = a - 1;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        if (a <= 128) {
            byte[] bArr = new byte[a];
            Arrays.fill(bArr, (byte) -1);
            while (true) {
                iArr = bArr;
                if (i10 >= 5) {
                    break;
                }
                i5 = i10 * 2;
                Object obj = objArr[i5];
                Object obj2 = objArr[i5 ^ 1];
                abc.m5500a(obj, obj2);
                int a2 = abe.m5499a(obj.hashCode());
                while (true) {
                    i6 = a2 & i7;
                    int i11 = bArr[i6] & 255;
                    if (i11 == 255) {
                        break;
                    } else if (!objArr[i11].equals(obj)) {
                        a2 = i6 + 1;
                    } else {
                        throw m5494a(obj, obj2, objArr, i11);
                    }
                }
                bArr[i6] = (byte) i5;
                i10++;
            }
        } else if (a <= 32768) {
            short[] sArr = new short[a];
            Arrays.fill(sArr, (short) -1);
            while (true) {
                iArr = sArr;
                if (i8 >= 5) {
                    break;
                }
                i3 = i8 * 2;
                Object obj3 = objArr[i3];
                Object obj4 = objArr[i3 ^ 1];
                abc.m5500a(obj3, obj4);
                int a3 = abe.m5499a(obj3.hashCode());
                while (true) {
                    i4 = a3 & i7;
                    int i12 = sArr[i4] & 65535;
                    if (i12 == 65535) {
                        break;
                    } else if (!objArr[i12].equals(obj3)) {
                        a3 = i4 + 1;
                    } else {
                        throw m5494a(obj3, obj4, objArr, i12);
                    }
                }
                sArr[i4] = (short) i3;
                i8++;
            }
        } else {
            int[] iArr2 = new int[a];
            Arrays.fill(iArr2, -1);
            while (true) {
                iArr = iArr2;
                if (i9 >= 5) {
                    break;
                }
                i = i9 * 2;
                Object obj5 = objArr[i];
                Object obj6 = objArr[i ^ 1];
                abc.m5500a(obj5, obj6);
                int a4 = abe.m5499a(obj5.hashCode());
                while (true) {
                    i2 = a4 & i7;
                    int i13 = iArr2[i2];
                    if (i13 == -1) {
                        break;
                    } else if (!objArr[i13].equals(obj5)) {
                        a4 = i2 + 1;
                    } else {
                        throw m5494a(obj5, obj6, objArr, i13);
                    }
                }
                iArr2[i2] = i;
                i9++;
            }
        }
        return new abm<>(iArr, objArr, 5);
    }

    /* renamed from: a */
    private static IllegalArgumentException m5494a(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("Multiple entries with same key: ");
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        sb.append(" and ");
        sb.append(valueOf3);
        sb.append("=");
        sb.append(valueOf4);
        return new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzdey
    /* renamed from: a */
    final zzdfb<Map.Entry<K, V>> mo3590a() {
        return new abl(this, this.f7172c, this.f7173d);
    }

    @Override // com.google.android.gms.internal.ads.zzdey
    /* renamed from: b */
    final zzdfb<K> mo3589b() {
        return new abn(this, new abq(this.f7172c, 0, this.f7173d));
    }

    @Override // com.google.android.gms.internal.ads.zzdey
    /* renamed from: c */
    final zzdet<V> mo3588c() {
        return new abq(this.f7172c, 1, this.f7173d);
    }

    @Override // com.google.android.gms.internal.ads.zzdey, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.f7171b;
        Object[] objArr = this.f7172c;
        int i = this.f7173d;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length;
                int a = abe.m5499a(obj.hashCode());
                while (true) {
                    int i2 = a & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    a = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int a2 = abe.m5499a(obj.hashCode());
                while (true) {
                    int i4 = a2 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    a2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int a3 = abe.m5499a(obj.hashCode());
                while (true) {
                    int i6 = a3 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    a3 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f7173d;
    }
}
