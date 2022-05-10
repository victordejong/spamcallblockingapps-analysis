package p613k.p614d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p613k.p614d.AbstractC10446a;
/* renamed from: k.d.o */
/* loaded from: classes2-dex2jar.jar:k/d/o.class */
public class C10465o extends AbstractC10446a {

    /* renamed from: b */
    public long f38731b;

    /* renamed from: g */
    public long f38736g;

    /* renamed from: r */
    public C10460l[] f38747r;

    /* renamed from: s */
    public HashMap<String, C10460l> f38748s;

    /* renamed from: t */
    public static final ThreadLocal<HandlerC10471f> f38724t = new ThreadLocal<>();

    /* renamed from: u */
    public static final ThreadLocal<ArrayList<C10465o>> f38725u = new C10466a();

    /* renamed from: v */
    public static final ThreadLocal<ArrayList<C10465o>> f38726v = new C10467b();

    /* renamed from: w */
    public static final ThreadLocal<ArrayList<C10465o>> f38727w = new C10468c();

    /* renamed from: x */
    public static final ThreadLocal<ArrayList<C10465o>> f38728x = new C10469d();

    /* renamed from: y */
    public static final ThreadLocal<ArrayList<C10465o>> f38729y = new C10470e();

    /* renamed from: z */
    public static final Interpolator f38730z = new AccelerateDecelerateInterpolator();

    /* renamed from: A */
    public static long f38723A = 10;

    /* renamed from: c */
    public long f38732c = -1;

    /* renamed from: d */
    public boolean f38733d = false;

    /* renamed from: e */
    public int f38734e = 0;

    /* renamed from: f */
    public boolean f38735f = false;

    /* renamed from: h */
    public int f38737h = 0;

    /* renamed from: i */
    public boolean f38738i = false;

    /* renamed from: j */
    public boolean f38739j = false;

    /* renamed from: k */
    public boolean f38740k = false;

    /* renamed from: l */
    public long f38741l = 300;

    /* renamed from: m */
    public long f38742m = 0;

    /* renamed from: n */
    public int f38743n = 0;

    /* renamed from: o */
    public int f38744o = 1;

    /* renamed from: p */
    public Interpolator f38745p = f38730z;

    /* renamed from: q */
    public ArrayList<AbstractC10472g> f38746q = null;

    /* renamed from: k.d.o$a */
    /* loaded from: classes2-dex2jar.jar:k/d/o$a.class */
    public static final class C10466a extends ThreadLocal<ArrayList<C10465o>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C10465o> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: k.d.o$b */
    /* loaded from: classes2-dex2jar.jar:k/d/o$b.class */
    public static final class C10467b extends ThreadLocal<ArrayList<C10465o>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C10465o> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: k.d.o$c */
    /* loaded from: classes2-dex2jar.jar:k/d/o$c.class */
    public static final class C10468c extends ThreadLocal<ArrayList<C10465o>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C10465o> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: k.d.o$d */
    /* loaded from: classes2-dex2jar.jar:k/d/o$d.class */
    public static final class C10469d extends ThreadLocal<ArrayList<C10465o>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C10465o> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: k.d.o$e */
    /* loaded from: classes2-dex2jar.jar:k/d/o$e.class */
    public static final class C10470e extends ThreadLocal<ArrayList<C10465o>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C10465o> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: k.d.o$f */
    /* loaded from: classes2-dex2jar.jar:k/d/o$f.class */
    public static class HandlerC10471f extends Handler {
        public HandlerC10471f() {
        }

        public /* synthetic */ HandlerC10471f(C10466a aVar) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            ArrayList arrayList = (ArrayList) C10465o.f38725u.get();
            ArrayList arrayList2 = (ArrayList) C10465o.f38727w.get();
            int i = message.what;
            if (i == 0) {
                ArrayList arrayList3 = (ArrayList) C10465o.f38726v.get();
                z = arrayList.size() <= 0 && arrayList2.size() <= 0;
                while (arrayList3.size() > 0) {
                    ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                    arrayList3.clear();
                    int size = arrayList4.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        C10465o oVar = (C10465o) arrayList4.get(i2);
                        if (oVar.f38742m == 0) {
                            oVar.m55n();
                        } else {
                            arrayList2.add(oVar);
                        }
                    }
                }
            } else if (i == 1) {
                z = true;
            } else {
                return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) C10465o.f38729y.get();
            ArrayList arrayList6 = (ArrayList) C10465o.f38728x.get();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                C10465o oVar2 = (C10465o) arrayList2.get(i3);
                if (oVar2.m70b(currentAnimationTimeMillis)) {
                    arrayList5.add(oVar2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    C10465o oVar3 = (C10465o) arrayList5.get(i4);
                    oVar3.m55n();
                    oVar3.f38738i = true;
                    arrayList2.remove(oVar3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i5 = 0;
            while (i5 < size4) {
                C10465o oVar4 = (C10465o) arrayList.get(i5);
                if (oVar4.m78a(currentAnimationTimeMillis)) {
                    arrayList6.add(oVar4);
                }
                if (arrayList.size() == size4) {
                    i5++;
                } else {
                    size4--;
                    arrayList6.remove(oVar4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i6 = 0; i6 < arrayList6.size(); i6++) {
                    ((C10465o) arrayList6.get(i6)).m61g();
                }
                arrayList6.clear();
            }
            if (!z) {
                return;
            }
            if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
                sendEmptyMessageDelayed(1, Math.max(0L, C10465o.f38723A - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
            }
        }
    }

    /* renamed from: k.d.o$g */
    /* loaded from: classes2-dex2jar.jar:k/d/o$g.class */
    public interface AbstractC10472g {
        /* renamed from: a */
        void m48a(C10465o oVar);
    }

    /* renamed from: a */
    public void m77a(Interpolator interpolator) {
        if (interpolator != null) {
            this.f38745p = interpolator;
        } else {
            this.f38745p = new LinearInterpolator();
        }
    }

    /* renamed from: a */
    public final void m73a(boolean z) {
        if (Looper.myLooper() != null) {
            this.f38733d = z;
            this.f38734e = 0;
            this.f38737h = 0;
            this.f38739j = true;
            this.f38735f = false;
            f38726v.get().add(this);
            if (this.f38742m == 0) {
                m66c(m60h());
                this.f38737h = 0;
                this.f38738i = true;
                ArrayList<AbstractC10446a.AbstractC10447a> arrayList = this.f38683a;
                if (arrayList != null) {
                    ArrayList arrayList2 = (ArrayList) arrayList.clone();
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC10446a.AbstractC10447a) arrayList2.get(i)).mo128a(this);
                    }
                }
            }
            HandlerC10471f fVar = f38724t.get();
            HandlerC10471f fVar2 = fVar;
            if (fVar == null) {
                fVar2 = new HandlerC10471f(null);
                f38724t.set(fVar2);
            }
            fVar2.sendEmptyMessage(0);
            return;
        }
        throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }

    /* renamed from: a */
    public void mo72a(float... fArr) {
        if (fArr != null && fArr.length != 0) {
            C10460l[] lVarArr = this.f38747r;
            if (lVarArr == null || lVarArr.length == 0) {
                m71a(C10460l.m90a("", fArr));
            } else {
                lVarArr[0].mo85a(fArr);
            }
            this.f38740k = false;
        }
    }

    /* renamed from: a */
    public void m71a(C10460l... lVarArr) {
        int length = lVarArr.length;
        this.f38747r = lVarArr;
        this.f38748s = new HashMap<>(length);
        for (C10460l lVar : lVarArr) {
            this.f38748s.put(lVar.m87e(), lVar);
        }
        this.f38740k = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x010d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m78a(long r7) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p613k.p614d.C10465o.m78a(long):boolean");
    }

    /* renamed from: b */
    public final boolean m70b(long j) {
        if (!this.f38735f) {
            this.f38735f = true;
            this.f38736g = j;
            return false;
        }
        long j2 = j - this.f38736g;
        long j3 = this.f38742m;
        if (j2 <= j3) {
            return false;
        }
        this.f38731b = j - (j2 - j3);
        this.f38737h = 1;
        return true;
    }

    /* renamed from: c */
    public void m68c() {
        ArrayList<AbstractC10446a.AbstractC10447a> arrayList;
        if (this.f38737h != 0 || f38726v.get().contains(this) || f38727w.get().contains(this)) {
            if (this.f38738i && (arrayList = this.f38683a) != null) {
                Iterator it = ((ArrayList) arrayList.clone()).iterator();
                while (it.hasNext()) {
                    ((AbstractC10446a.AbstractC10447a) it.next()).mo126c(this);
                }
            }
            m61g();
        }
    }

    /* renamed from: c */
    public void mo67c(float f) {
        float interpolation = this.f38745p.getInterpolation(f);
        C10460l[] lVarArr = this.f38747r;
        int length = lVarArr.length;
        for (C10460l lVar : lVarArr) {
            lVar.mo81c(interpolation);
        }
        ArrayList<AbstractC10472g> arrayList = this.f38746q;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f38746q.get(i).m48a(this);
            }
        }
    }

    /* renamed from: c */
    public void m66c(long j) {
        mo59j();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f38737h != 1) {
            this.f38732c = j;
            this.f38737h = 2;
        }
        this.f38731b = currentAnimationTimeMillis - j;
        m78a(currentAnimationTimeMillis);
    }

    @Override // p613k.p614d.AbstractC10446a
    public C10465o clone() {
        C10465o oVar = (C10465o) super.clone();
        ArrayList<AbstractC10472g> arrayList = this.f38746q;
        if (arrayList != null) {
            oVar.f38746q = new ArrayList<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                oVar.f38746q.add(arrayList.get(i));
            }
        }
        oVar.f38732c = -1L;
        oVar.f38733d = false;
        oVar.f38734e = 0;
        oVar.f38740k = false;
        oVar.f38737h = 0;
        oVar.f38735f = false;
        C10460l[] lVarArr = this.f38747r;
        if (lVarArr != null) {
            int length = lVarArr.length;
            oVar.f38747r = new C10460l[length];
            oVar.f38748s = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                C10460l clone = lVarArr[i2].clone();
                oVar.f38747r[i2] = clone;
                oVar.f38748s.put(clone.m87e(), clone);
            }
        }
        return oVar;
    }

    /* renamed from: d */
    public C10465o mo64d(long j) {
        if (j >= 0) {
            this.f38741l = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    /* renamed from: e */
    public void m63e() {
        if (!f38725u.get().contains(this) && !f38726v.get().contains(this)) {
            this.f38735f = false;
            m55n();
        } else if (!this.f38740k) {
            mo59j();
        }
        int i = this.f38743n;
        if (i <= 0 || (i & 1) != 1) {
            mo67c(1.0f);
        } else {
            mo67c(0.0f);
        }
        m61g();
    }

    /* renamed from: e */
    public void m62e(long j) {
        this.f38742m = j;
    }

    /* renamed from: g */
    public final void m61g() {
        ArrayList<AbstractC10446a.AbstractC10447a> arrayList;
        f38725u.get().remove(this);
        f38726v.get().remove(this);
        f38727w.get().remove(this);
        this.f38737h = 0;
        if (this.f38738i && (arrayList = this.f38683a) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC10446a.AbstractC10447a) arrayList2.get(i)).mo129d(this);
            }
        }
        this.f38738i = false;
        this.f38739j = false;
    }

    /* renamed from: h */
    public long m60h() {
        if (!this.f38740k || this.f38737h == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f38731b;
    }

    /* renamed from: j */
    public void mo59j() {
        if (!this.f38740k) {
            C10460l[] lVarArr = this.f38747r;
            int length = lVarArr.length;
            for (C10460l lVar : lVarArr) {
                lVar.m86g();
            }
            this.f38740k = true;
        }
    }

    /* renamed from: k */
    public boolean m58k() {
        boolean z = true;
        if (this.f38737h != 1) {
            z = this.f38738i;
        }
        return z;
    }

    /* renamed from: l */
    public boolean m57l() {
        return this.f38739j;
    }

    /* renamed from: m */
    public void mo56m() {
        m73a(false);
    }

    /* renamed from: n */
    public final void m55n() {
        ArrayList<AbstractC10446a.AbstractC10447a> arrayList;
        mo59j();
        f38725u.get().add(this);
        if (this.f38742m > 0 && (arrayList = this.f38683a) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC10446a.AbstractC10447a) arrayList2.get(i)).mo128a(this);
            }
        }
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        C10460l[] lVarArr = this.f38747r;
        String str2 = str;
        if (lVarArr != null) {
            int length = lVarArr.length;
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= length) {
                    break;
                }
                C10460l lVar = lVarArr[i];
                str = str + "\n    " + lVar.toString();
                i++;
            }
        }
        return str2;
    }
}
