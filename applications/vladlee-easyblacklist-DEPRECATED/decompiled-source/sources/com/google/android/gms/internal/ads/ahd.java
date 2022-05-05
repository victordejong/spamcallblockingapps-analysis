package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahd.class */
public final class ahd {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5423a(int i, byte[] bArr, int i2, int i3, ahc ahcVar) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m5412b(bArr, i2, ahcVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m5415a(bArr, i2, ahcVar) + ahcVar.f7350a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a = m5415a(bArr, i2, ahcVar);
                    int i8 = ahcVar.f7350a;
                    i7 = i8;
                    i4 = a;
                    if (i8 == i6) {
                        break;
                    }
                    i2 = m5423a(i8, bArr, a, i3, ahcVar);
                    i7 = i8;
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzdse.m3340h();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzdse.m3344d();
            }
        } else {
            throw zzdse.m3344d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5422a(int i, byte[] bArr, int i2, int i3, zzdsb<?> zzdsbVar, ahc ahcVar) {
        aig aigVar = (aig) zzdsbVar;
        int a = m5415a(bArr, i2, ahcVar);
        while (true) {
            aigVar.zzgl(ahcVar.f7350a);
            if (a >= i3) {
                break;
            }
            int a2 = m5415a(bArr, a, ahcVar);
            if (i != ahcVar.f7350a) {
                break;
            }
            a = m5415a(bArr, a2, ahcVar);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5421a(int i, byte[] bArr, int i2, int i3, zzdur zzdurVar, ahc ahcVar) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b = m5412b(bArr, i2, ahcVar);
                zzdurVar.m3331a(i, Long.valueOf(ahcVar.f7351b));
                return b;
            } else if (i5 == 1) {
                zzdurVar.m3331a(i, Long.valueOf(m5413b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m5415a(bArr, i2, ahcVar);
                int i6 = ahcVar.f7350a;
                if (i6 < 0) {
                    throw zzdse.m3346b();
                } else if (i6 <= bArr.length - a) {
                    zzdurVar.m3331a(i, i6 == 0 ? zzdqk.zzhhx : zzdqk.zzi(bArr, a, i6));
                    return a + i6;
                } else {
                    throw zzdse.m3347a();
                }
            } else if (i5 == 3) {
                zzdur a2 = zzdur.m3332a();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a3 = m5415a(bArr, i2, ahcVar);
                    i8 = ahcVar.f7350a;
                    if (i8 == i7) {
                        i4 = a3;
                        i8 = i8;
                        break;
                    }
                    i2 = m5421a(i8, bArr, a3, i3, a2, ahcVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzdse.m3340h();
                }
                zzdurVar.m3331a(i, a2);
                return i4;
            } else if (i5 == 5) {
                zzdurVar.m3331a(i, Integer.valueOf(m5416a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzdse.m3344d();
            }
        } else {
            throw zzdse.m3344d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5420a(int i, byte[] bArr, int i2, ahc ahcVar) {
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
                                ahcVar.f7350a = i3 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i12;
                            }
                            i9 = i12;
                        }
                    }
                }
            }
            ahcVar.f7350a = i3 | i4;
            return i9;
        }
        ahcVar.f7350a = i6 | i5;
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5419a(ajo<?> ajoVar, int i, byte[] bArr, int i2, int i3, zzdsb<?> zzdsbVar, ahc ahcVar) {
        int a = m5417a(ajoVar, bArr, i2, i3, ahcVar);
        while (true) {
            zzdsbVar.add(ahcVar.f7352c);
            if (a >= i3) {
                break;
            }
            int a2 = m5415a(bArr, a, ahcVar);
            if (i != ahcVar.f7350a) {
                break;
            }
            a = m5417a(ajoVar, bArr, a2, i3, ahcVar);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5418a(ajo ajoVar, byte[] bArr, int i, int i2, int i3, ahc ahcVar) {
        aiy aiyVar = (aiy) ajoVar;
        Object a = aiyVar.mo5184a();
        int a2 = aiyVar.m5273a((aiy) a, bArr, i, i2, i3, ahcVar);
        aiyVar.mo5176c((aiy) a);
        ahcVar.f7352c = a;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5417a(ajo ajoVar, byte[] bArr, int i, int i2, ahc ahcVar) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m5420a(b, bArr, i3, ahcVar);
            i5 = ahcVar.f7350a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzdse.m3347a();
        }
        Object a = ajoVar.mo5184a();
        int i6 = i5 + i4;
        ajoVar.mo5179a(a, bArr, i4, i6, ahcVar);
        ajoVar.mo5176c(a);
        ahcVar.f7352c = a;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5416a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5415a(byte[] bArr, int i, ahc ahcVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m5420a(b, bArr, i2, ahcVar);
        }
        ahcVar.f7350a = b;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5414a(byte[] bArr, int i, zzdsb<?> zzdsbVar, ahc ahcVar) {
        aig aigVar = (aig) zzdsbVar;
        int a = m5415a(bArr, i, ahcVar);
        int i2 = ahcVar.f7350a + a;
        while (a < i2) {
            a = m5415a(bArr, a, ahcVar);
            aigVar.zzgl(ahcVar.f7350a);
        }
        if (a == i2) {
            return a;
        }
        throw zzdse.m3347a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m5412b(byte[] bArr, int i, ahc ahcVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            ahcVar.f7351b = j;
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
        ahcVar.f7351b = j2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static long m5413b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static double m5411c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m5413b(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m5410c(byte[] bArr, int i, ahc ahcVar) {
        int a = m5415a(bArr, i, ahcVar);
        int i2 = ahcVar.f7350a;
        if (i2 < 0) {
            throw zzdse.m3346b();
        } else if (i2 == 0) {
            ahcVar.f7352c = "";
            return a;
        } else {
            ahcVar.f7352c = new String(bArr, a, i2, zzdrv.f14562a);
            return a + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static float m5409d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m5416a(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m5408d(byte[] bArr, int i, ahc ahcVar) {
        int a = m5415a(bArr, i, ahcVar);
        int i2 = ahcVar.f7350a;
        if (i2 < 0) {
            throw zzdse.m3346b();
        } else if (i2 == 0) {
            ahcVar.f7352c = "";
            return a;
        } else {
            ahcVar.f7352c = akl.m4999b(bArr, a, i2);
            return a + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m5407e(byte[] bArr, int i, ahc ahcVar) {
        int a = m5415a(bArr, i, ahcVar);
        int i2 = ahcVar.f7350a;
        if (i2 < 0) {
            throw zzdse.m3346b();
        } else if (i2 > bArr.length - a) {
            throw zzdse.m3347a();
        } else if (i2 == 0) {
            ahcVar.f7352c = zzdqk.zzhhx;
            return a;
        } else {
            ahcVar.f7352c = zzdqk.zzi(bArr, a, i2);
            return a + i2;
        }
    }
}
