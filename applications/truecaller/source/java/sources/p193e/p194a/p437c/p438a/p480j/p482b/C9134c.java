package p193e.p194a.p437c.p438a.p480j.p482b;

import com.truecaller.insights.insightsui.CategoryModel;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/c.class */
public final class C9134c extends AbstractC9135d {

    /* renamed from: b */
    public final CategoryModel f27835b;

    /* renamed from: c */
    public final boolean f27836c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9134c(CategoryModel categoryModel, boolean z) {
        super(z, 0, 2);
        l.e(categoryModel, "model");
        this.f27835b = categoryModel;
        this.f27836c = z;
    }

    @Override // p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d
    /* renamed from: a */
    public int mo27848a() {
        return this.f27835b.getGrammarCategory().hashCode();
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9134c)) {
                return false;
            }
            C9134c c9134c = (C9134c) obj;
            return l.a(this.f27835b, c9134c.f27835b) && this.f27836c == c9134c.f27836c;
        }
        return true;
    }

    public int hashCode() {
        CategoryModel categoryModel = this.f27835b;
        int hashCode = categoryModel != null ? categoryModel.hashCode() : 0;
        boolean z = this.f27836c;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CategoryFilterItem(model=");
        m8728C.append(this.f27835b);
        m8728C.append(", isSelected=");
        return C22128a.m8590o(m8728C, this.f27836c, ")");
    }
}
