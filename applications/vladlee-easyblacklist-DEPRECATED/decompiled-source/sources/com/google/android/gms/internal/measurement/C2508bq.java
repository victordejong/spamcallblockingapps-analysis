package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.bq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bq.class */
public final class C2508bq {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2915a(int i, byte[] bArr, int i2, int i3, C2511bt btVar) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m2904b(bArr, i2, btVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m2907a(bArr, i2, btVar) + btVar.f15897a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a = m2907a(bArr, i2, btVar);
                    int i8 = btVar.f15897a;
                    i7 = i8;
                    i4 = a;
                    if (i8 == i6) {
                        break;
                    }
                    i2 = m2915a(i8, bArr, a, i3, btVar);
                    i7 = i8;
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzfo.m2261g();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzfo.m2264d();
            }
        } else {
            throw zzfo.m2264d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2914a(int i, byte[] bArr, int i2, int i3, zzfl<?> zzflVar, C2511bt btVar) {
        C2538ct ctVar = (C2538ct) zzflVar;
        int a = m2907a(bArr, i2, btVar);
        while (true) {
            ctVar.m2827b(btVar.f15897a);
            if (a >= i3) {
                break;
            }
            int a2 = m2907a(bArr, a, btVar);
            if (i != btVar.f15897a) {
                break;
            }
            a = m2907a(bArr, a2, btVar);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2913a(int i, byte[] bArr, int i2, int i3, zzhy zzhyVar, C2511bt btVar) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b = m2904b(bArr, i2, btVar);
                zzhyVar.m2248a(i, Long.valueOf(btVar.f15898b));
                return b;
            } else if (i5 == 1) {
                zzhyVar.m2248a(i, Long.valueOf(m2905b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m2907a(bArr, i2, btVar);
                int i6 = btVar.f15897a;
                if (i6 < 0) {
                    throw zzfo.m2266b();
                } else if (i6 <= bArr.length - a) {
                    zzhyVar.m2248a(i, i6 == 0 ? zzdu.zza : zzdu.zza(bArr, a, i6));
                    return a + i6;
                } else {
                    throw zzfo.m2267a();
                }
            } else if (i5 == 3) {
                zzhy a2 = zzhy.m2249a();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a3 = m2907a(bArr, i2, btVar);
                    i8 = btVar.f15897a;
                    if (i8 == i7) {
                        i4 = a3;
                        i8 = i8;
                        break;
                    }
                    i2 = m2913a(i8, bArr, a3, i3, a2, btVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzfo.m2261g();
                }
                zzhyVar.m2248a(i, a2);
                return i4;
            } else if (i5 == 5) {
                zzhyVar.m2248a(i, Integer.valueOf(m2908a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzfo.m2264d();
            }
        } else {
            throw zzfo.m2264d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2912a(int i, byte[] bArr, int i2, C2511bt btVar) {
        int i3;
        int i4;
        int i5;
        int i6 = i & 127;
        int i7 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            i5 = b << 7;
        } else {
            int i8 = i6 | ((b & Byte.MAX_VALUE) << 7);
            int i9 = i7 + 1;
            byte b2 = bArr[i7];
            if (b2 >= 0) {
                i4 = b2 << 14;
                i3 = i8;
            } else {
                int i10 = i8 | ((b2 & Byte.MAX_VALUE) << 14);
                int i11 = i9 + 1;
                byte b3 = bArr[i9];
                if (b3 >= 0) {
                    i5 = b3 << 21;
                    i7 = i11;
                    i6 = i10;
                } else {
                    i3 = i10 | ((b3 & Byte.MAX_VALUE) << 21);
                    i9 = i11 + 1;
                    byte b4 = bArr[i11];
                    if (b4 >= 0) {
                        i4 = b4 << 28;
                    } else {
                        while (true) {
                            int i12 = i9 + 1;
                            if (bArr[i9] >= 0) {
                                btVar.f15897a = i3 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i12;
                            }
                            i9 = i12;
                        }
                    }
                }
            }
            btVar.f15897a = i3 | i4;
            return i9;
        }
        btVar.f15897a = i6 | i5;
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2911a(AbstractC2566du<?> duVar, int i, byte[] bArr, int i2, int i3, zzfl<?> zzflVar, C2511bt btVar) {
        int a = m2909a(duVar, bArr, i2, i3, btVar);
        while (true) {
            zzflVar.add(btVar.f15899c);
            if (a >= i3) {
                break;
            }
            int a2 = m2907a(bArr, a, btVar);
            if (i != btVar.f15897a) {
                break;
            }
            a = m2909a(duVar, bArr, a2, i3, btVar);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2910a(AbstractC2566du duVar, byte[] bArr, int i, int i2, int i3, C2511bt btVar) {
        C2557dl dlVar = (C2557dl) duVar;
        Object a = dlVar.mo2741a();
        int a2 = dlVar.m2774a((C2557dl) a, bArr, i, i2, i3, btVar);
        dlVar.mo2733c((C2557dl) a);
        btVar.f15899c = a;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2909a(AbstractC2566du duVar, byte[] bArr, int i, int i2, C2511bt btVar) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m2912a(b, bArr, i3, btVar);
            i5 = btVar.f15897a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzfo.m2267a();
        }
        Object a = duVar.mo2741a();
        int i6 = i5 + i4;
        duVar.mo2736a(a, bArr, i4, i6, btVar);
        duVar.mo2733c(a);
        btVar.f15899c = a;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2908a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2907a(byte[] bArr, int i, C2511bt btVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m2912a(b, bArr, i2, btVar);
        }
        btVar.f15897a = b;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2906a(byte[] bArr, int i, zzfl<?> zzflVar, C2511bt btVar) {
        C2538ct ctVar = (C2538ct) zzflVar;
        int a = m2907a(bArr, i, btVar);
        int i2 = btVar.f15897a + a;
        while (a < i2) {
            a = m2907a(bArr, a, btVar);
            ctVar.m2827b(btVar.f15897a);
        }
        if (a == i2) {
            return a;
        }
        throw zzfo.m2267a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m2904b(byte[] bArr, int i, C2511bt btVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            btVar.f15898b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            j2 |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        btVar.f15898b = j2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static long m2905b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static double m2903c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m2905b(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m2902c(byte[] bArr, int i, C2511bt btVar) {
        int a = m2907a(bArr, i, btVar);
        int i2 = btVar.f15897a;
        if (i2 < 0) {
            throw zzfo.m2266b();
        } else if (i2 == 0) {
            btVar.f15899c = "";
            return a;
        } else {
            btVar.f15899c = new String(bArr, a, i2, zzff.f16286a);
            return a + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static float m2901d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m2908a(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m2900d(byte[] bArr, int i, C2511bt btVar) {
        int a = m2907a(bArr, i, btVar);
        int i2 = btVar.f15897a;
        if (i2 < 0) {
            throw zzfo.m2266b();
        } else if (i2 == 0) {
            btVar.f15899c = "";
            return a;
        } else {
            btVar.f15899c = C2595es.m2526b(bArr, a, i2);
            return a + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m2899e(byte[] bArr, int i, C2511bt btVar) {
        int a = m2907a(bArr, i, btVar);
        int i2 = btVar.f15897a;
        if (i2 < 0) {
            throw zzfo.m2266b();
        } else if (i2 > bArr.length - a) {
            throw zzfo.m2267a();
        } else if (i2 == 0) {
            btVar.f15899c = zzdu.zza;
            return a;
        } else {
            btVar.f15899c = zzdu.zza(bArr, a, i2);
            return a + i2;
        }
    }
}
