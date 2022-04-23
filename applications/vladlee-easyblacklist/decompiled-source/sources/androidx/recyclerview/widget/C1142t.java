package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RunnableC1139s;
import java.util.Comparator;
/* renamed from: androidx.recyclerview.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/t.class */
final class C1142t implements Comparator<RunnableC1139s.C1141b> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(RunnableC1139s.C1141b bVar, RunnableC1139s.C1141b bVar2) {
        RunnableC1139s.C1141b bVar3 = bVar;
        RunnableC1139s.C1141b bVar4 = bVar2;
        if ((bVar3.f4899d == null) != (bVar4.f4899d == null)) {
            return bVar3.f4899d == null ? 1 : -1;
        }
        if (bVar3.f4896a != bVar4.f4896a) {
            return bVar3.f4896a ? -1 : 1;
        }
        int i = bVar4.f4897b - bVar3.f4897b;
        if (i != 0) {
            return i;
        }
        int i2 = bVar3.f4898c - bVar4.f4898c;
        if (i2 != 0) {
            return i2;
        }
        return 0;
    }
}
