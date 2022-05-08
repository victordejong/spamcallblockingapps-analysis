package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5400p;
import p081h.p082a.p083a.p088n.p089k.C5449l;
import p081h.p082a.p083a.p088n.p090l.AbstractC5460b;
import p081h.p082a.p083a.p088n.p090l.C5492n;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.b.c */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/c.class */
public class C5364c implements AbstractC5365d, AbstractC5374l, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final Matrix f13399a;

    /* renamed from: b */
    public final Path f13400b;

    /* renamed from: c */
    public final RectF f13401c;

    /* renamed from: d */
    public final String f13402d;

    /* renamed from: e */
    public final List<AbstractC5363b> f13403e;

    /* renamed from: f */
    public final C5344f f13404f;
    @Nullable

    /* renamed from: g */
    public List<AbstractC5374l> f13405g;
    @Nullable

    /* renamed from: h */
    public C5400p f13406h;

    public C5364c(C5344f fVar, AbstractC5506a aVar, C5492n nVar) {
        this(fVar, aVar, nVar.m25365b(), m25554a(fVar, aVar, nVar.m25367a()), m25553a(nVar.m25367a()));
    }

    public C5364c(C5344f fVar, AbstractC5506a aVar, String str, List<AbstractC5363b> list, @Nullable C5449l lVar) {
        this.f13399a = new Matrix();
        this.f13400b = new Path();
        this.f13401c = new RectF();
        this.f13402d = str;
        this.f13404f = fVar;
        this.f13403e = list;
        if (lVar != null) {
            this.f13406h = lVar.m25457a();
            this.f13406h.m25511a(aVar);
            this.f13406h.m25512a(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            AbstractC5363b bVar = list.get(size);
            if (bVar instanceof AbstractC5370i) {
                arrayList.add((AbstractC5370i) bVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((AbstractC5370i) arrayList.get(size2)).mo25537a(list.listIterator(list.size()));
        }
    }

    @Nullable
    /* renamed from: a */
    public static C5449l m25553a(List<AbstractC5460b> list) {
        for (int i = 0; i < list.size(); i++) {
            AbstractC5460b bVar = list.get(i);
            if (bVar instanceof C5449l) {
                return (C5449l) bVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static List<AbstractC5363b> m25554a(C5344f fVar, AbstractC5506a aVar, List<AbstractC5460b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            AbstractC5363b a = list.get(i).mo25347a(fVar, aVar);
            if (a != null) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        this.f13404f.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        this.f13399a.set(matrix);
        C5400p pVar = this.f13406h;
        int i2 = i;
        if (pVar != null) {
            this.f13399a.preConcat(pVar.m25510b());
            i2 = (int) ((((this.f13406h.m25509c().mo25516f().intValue() / 100.0f) * i) / 255.0f) * 255.0f);
        }
        for (int size = this.f13403e.size() - 1; size >= 0; size--) {
            AbstractC5363b bVar = this.f13403e.get(size);
            if (bVar instanceof AbstractC5365d) {
                ((AbstractC5365d) bVar).mo25337a(canvas, this.f13399a, i2);
            }
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        this.f13399a.set(matrix);
        C5400p pVar = this.f13406h;
        if (pVar != null) {
            this.f13399a.preConcat(pVar.m25510b());
        }
        this.f13401c.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f13403e.size() - 1; size >= 0; size--) {
            AbstractC5363b bVar = this.f13403e.get(size);
            if (bVar instanceof AbstractC5365d) {
                ((AbstractC5365d) bVar).mo25293a(this.f13401c, this.f13399a);
                if (rectF.isEmpty()) {
                    rectF.set(this.f13401c);
                } else {
                    rectF.set(Math.min(rectF.left, this.f13401c.left), Math.min(rectF.top, this.f13401c.top), Math.max(rectF.right, this.f13401c.right), Math.max(rectF.bottom, this.f13401c.bottom));
                }
            }
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        for (int i = 0; i < this.f13403e.size(); i++) {
            AbstractC5363b bVar = this.f13403e.get(i);
            if (bVar instanceof AbstractC5365d) {
                AbstractC5365d dVar = (AbstractC5365d) bVar;
                if (str2 == null || str2.equals(bVar.getName())) {
                    dVar.mo25292a(str, (String) null, colorFilter);
                } else {
                    dVar.mo25292a(str, str2, colorFilter);
                }
            }
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f13403e.size());
        arrayList.addAll(list);
        for (int size = this.f13403e.size() - 1; size >= 0; size--) {
            AbstractC5363b bVar = this.f13403e.get(size);
            bVar.mo25332a(arrayList, this.f13403e.subList(0, size));
            arrayList.add(bVar);
        }
    }

    /* renamed from: b */
    public List<AbstractC5374l> m25552b() {
        if (this.f13405g == null) {
            this.f13405g = new ArrayList();
            for (int i = 0; i < this.f13403e.size(); i++) {
                AbstractC5363b bVar = this.f13403e.get(i);
                if (bVar instanceof AbstractC5374l) {
                    this.f13405g.add((AbstractC5374l) bVar);
                }
            }
        }
        return this.f13405g;
    }

    /* renamed from: c */
    public Matrix m25551c() {
        C5400p pVar = this.f13406h;
        if (pVar != null) {
            return pVar.m25510b();
        }
        this.f13399a.reset();
        return this.f13399a;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13402d;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        this.f13399a.reset();
        C5400p pVar = this.f13406h;
        if (pVar != null) {
            this.f13399a.set(pVar.m25510b());
        }
        this.f13400b.reset();
        for (int size = this.f13403e.size() - 1; size >= 0; size--) {
            AbstractC5363b bVar = this.f13403e.get(size);
            if (bVar instanceof AbstractC5374l) {
                this.f13400b.addPath(((AbstractC5374l) bVar).getPath(), this.f13399a);
            }
        }
        return this.f13400b;
    }
}
