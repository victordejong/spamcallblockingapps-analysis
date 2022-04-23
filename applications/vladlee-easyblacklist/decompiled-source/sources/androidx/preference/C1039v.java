package androidx.preference;

import androidx.preference.C1042y;
import androidx.recyclerview.widget.C1127n;
import java.util.List;
/* renamed from: androidx.preference.v */
/* loaded from: classes-dex2jar.jar:androidx/preference/v.class */
final class C1039v extends C1127n.AbstractC1128a {

    /* renamed from: a */
    final /* synthetic */ List f4378a;

    /* renamed from: b */
    final /* synthetic */ List f4379b;

    /* renamed from: c */
    final /* synthetic */ C1042y.AbstractC1046d f4380c;

    /* renamed from: d */
    final /* synthetic */ C1036t f4381d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1039v(C1036t tVar, List list, List list2, C1042y.AbstractC1046d dVar) {
        this.f4381d = tVar;
        this.f4378a = list;
        this.f4379b = list2;
        this.f4380c = dVar;
    }

    @Override // androidx.recyclerview.widget.C1127n.AbstractC1128a
    /* renamed from: a */
    public final int mo6755a() {
        return this.f4378a.size();
    }

    @Override // androidx.recyclerview.widget.C1127n.AbstractC1128a
    /* renamed from: a */
    public final boolean mo6754a(int i, int i2) {
        C1042y.AbstractC1046d dVar = this.f4380c;
        this.f4378a.get(i);
        this.f4379b.get(i2);
        return dVar.m7344a();
    }

    @Override // androidx.recyclerview.widget.C1127n.AbstractC1128a
    /* renamed from: b */
    public final int mo6753b() {
        return this.f4379b.size();
    }

    @Override // androidx.recyclerview.widget.C1127n.AbstractC1128a
    /* renamed from: b */
    public final boolean mo6752b(int i, int i2) {
        C1042y.AbstractC1046d dVar = this.f4380c;
        this.f4378a.get(i);
        this.f4379b.get(i2);
        return dVar.m7343b();
    }
}
