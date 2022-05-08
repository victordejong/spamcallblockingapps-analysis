package p081h.p082a.p083a.p084l.p085b;

import android.annotation.TargetApi;
import android.graphics.Path;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import p081h.p082a.p083a.p088n.p090l.C5473h;
@TargetApi(19)
/* renamed from: h.a.a.l.b.j */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/j.class */
public class C5371j implements AbstractC5374l, AbstractC5370i {

    /* renamed from: d */
    public final String f13448d;

    /* renamed from: f */
    public final C5473h f13450f;

    /* renamed from: a */
    public final Path f13445a = new Path();

    /* renamed from: b */
    public final Path f13446b = new Path();

    /* renamed from: c */
    public final Path f13447c = new Path();

    /* renamed from: e */
    public final List<AbstractC5374l> f13449e = new ArrayList();

    /* renamed from: h.a.a.l.b.j$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/l/b/j$a.class */
    public static /* synthetic */ class C5372a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13451a = new int[C5473h.EnumC5476c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f13451a[C5473h.EnumC5476c.Merge.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13451a[C5473h.EnumC5476c.Add.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13451a[C5473h.EnumC5476c.Subtract.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13451a[C5473h.EnumC5476c.Intersect.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13451a[C5473h.EnumC5476c.ExcludeIntersections.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C5371j(C5473h hVar) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f13448d = hVar.m25404b();
            this.f13450f = hVar;
            return;
        }
        throw new IllegalStateException("Merge paths are not supported pre-KitKat.");
    }

    /* renamed from: a */
    public final void m25543a() {
        for (int i = 0; i < this.f13449e.size(); i++) {
            this.f13447c.addPath(this.f13449e.get(i).getPath());
        }
    }

    @TargetApi(19)
    /* renamed from: a */
    public final void m25542a(Path.Op op) {
        this.f13446b.reset();
        this.f13445a.reset();
        for (int size = this.f13449e.size() - 1; size >= 1; size--) {
            AbstractC5374l lVar = this.f13449e.get(size);
            if (lVar instanceof C5364c) {
                C5364c cVar = (C5364c) lVar;
                List<AbstractC5374l> b = cVar.m25552b();
                for (int size2 = b.size() - 1; size2 >= 0; size2--) {
                    Path path = b.get(size2).getPath();
                    path.transform(cVar.m25551c());
                    this.f13446b.addPath(path);
                }
            } else {
                this.f13446b.addPath(lVar.getPath());
            }
        }
        AbstractC5374l lVar2 = this.f13449e.get(0);
        if (lVar2 instanceof C5364c) {
            C5364c cVar2 = (C5364c) lVar2;
            List<AbstractC5374l> b2 = cVar2.m25552b();
            for (int i = 0; i < b2.size(); i++) {
                Path path2 = b2.get(i).getPath();
                path2.transform(cVar2.m25551c());
                this.f13445a.addPath(path2);
            }
        } else {
            this.f13445a.set(lVar2.getPath());
        }
        this.f13447c.op(this.f13445a, this.f13446b, op);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < this.f13449e.size(); i++) {
            this.f13449e.get(i).mo25332a(list, list2);
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5370i
    /* renamed from: a */
    public void mo25537a(ListIterator<AbstractC5363b> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            AbstractC5363b previous = listIterator.previous();
            if (previous instanceof AbstractC5374l) {
                this.f13449e.add((AbstractC5374l) previous);
                listIterator.remove();
            }
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13448d;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        this.f13447c.reset();
        int i = C5372a.f13451a[this.f13450f.m25405a().ordinal()];
        if (i == 1) {
            m25543a();
        } else if (i == 2) {
            m25542a(Path.Op.UNION);
        } else if (i == 3) {
            m25542a(Path.Op.REVERSE_DIFFERENCE);
        } else if (i == 4) {
            m25542a(Path.Op.INTERSECT);
        } else if (i == 5) {
            m25542a(Path.Op.XOR);
        }
        return this.f13447c;
    }
}
