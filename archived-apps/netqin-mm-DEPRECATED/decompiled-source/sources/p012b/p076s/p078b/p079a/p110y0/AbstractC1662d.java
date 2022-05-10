package p012b.p076s.p078b.p079a.p110y0;

import android.util.Pair;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p012b.p076s.p078b.p079a.AbstractC1238i0;
import p012b.p076s.p078b.p079a.C1240j0;
/* renamed from: b.s.b.a.y0.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/d.class */
public abstract class AbstractC1662d extends AbstractC1673l {

    /* renamed from: c */
    public C1663a f6840c;

    /* renamed from: b.s.b.a.y0.d$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/d$a.class */
    public static final class C1663a {

        /* renamed from: a */
        public final int f6841a;

        /* renamed from: b */
        public final int[] f6842b;

        /* renamed from: c */
        public final TrackGroupArray[] f6843c;

        /* renamed from: d */
        public final TrackGroupArray f6844d;

        public C1663a(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f6842b = iArr;
            this.f6843c = trackGroupArrayArr;
            this.f6844d = trackGroupArray;
            this.f6841a = iArr.length;
        }

        /* renamed from: a */
        public int m32433a() {
            return this.f6841a;
        }

        /* renamed from: a */
        public int m32432a(int i) {
            return this.f6842b[i];
        }

        /* renamed from: b */
        public TrackGroupArray m32431b(int i) {
            return this.f6843c[i];
        }
    }

    /* renamed from: a */
    public static int m32435a(AbstractC1238i0[] i0VarArr, TrackGroup trackGroup) throws ExoPlaybackException {
        int length = i0VarArr.length;
        int i = 0;
        for (int i2 = 0; i2 < i0VarArr.length; i2++) {
            AbstractC1238i0 i0Var = i0VarArr[i2];
            for (int i3 = 0; i3 < trackGroup.f1855a; i3++) {
                int a = i0Var.mo32129a(trackGroup.m37992a(i3)) & 7;
                i = i;
                if (a > i) {
                    if (a == 4) {
                        return i2;
                    }
                    length = i2;
                    i = a;
                }
            }
        }
        return length;
    }

    /* renamed from: a */
    public static int[] m32438a(AbstractC1238i0 i0Var, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.f1855a];
        for (int i = 0; i < trackGroup.f1855a; i++) {
            iArr[i] = i0Var.mo32129a(trackGroup.m37992a(i));
        }
        return iArr;
    }

    /* renamed from: a */
    public static int[] m32436a(AbstractC1238i0[] i0VarArr) throws ExoPlaybackException {
        int length = i0VarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = i0VarArr[i].mo34140m();
        }
        return iArr;
    }

    /* renamed from: a */
    public abstract Pair<C1240j0[], AbstractC1668i[]> mo32437a(C1663a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1673l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p012b.p076s.p078b.p079a.p110y0.C1675m mo32402a(p012b.p076s.p078b.p079a.AbstractC1238i0[] r12, androidx.media2.exoplayer.external.source.TrackGroupArray r13, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r.C1635a r14, p012b.p076s.p078b.p079a.AbstractC1252n0 r15) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p110y0.AbstractC1662d.mo32402a(b.s.b.a.i0[], androidx.media2.exoplayer.external.source.TrackGroupArray, b.s.b.a.w0.r$a, b.s.b.a.n0):b.s.b.a.y0.m");
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1673l
    /* renamed from: a */
    public final void mo32403a(Object obj) {
        this.f6840c = (C1663a) obj;
    }

    /* renamed from: c */
    public final C1663a m32434c() {
        return this.f6840c;
    }
}
