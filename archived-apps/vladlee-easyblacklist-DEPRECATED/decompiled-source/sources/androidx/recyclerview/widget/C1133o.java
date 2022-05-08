package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C1127n;
import java.util.Comparator;
/* renamed from: androidx.recyclerview.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o.class */
final class C1133o implements Comparator<C1127n.C1132e> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(C1127n.C1132e eVar, C1127n.C1132e eVar2) {
        C1127n.C1132e eVar3 = eVar;
        C1127n.C1132e eVar4 = eVar2;
        int i = eVar3.f4845a - eVar4.f4845a;
        int i2 = i;
        if (i == 0) {
            i2 = eVar3.f4846b - eVar4.f4846b;
        }
        return i2;
    }
}
