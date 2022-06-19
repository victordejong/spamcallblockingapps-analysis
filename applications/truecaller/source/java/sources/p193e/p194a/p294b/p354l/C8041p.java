package p193e.p194a.p294b.p354l;

import com.truecaller.profile.data.dto.OpenHours;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import p193e.p194a.p294b.p331b.p333b.C7860a;
import s1.z.c.l;
/* renamed from: e.a.b.l.p */
/* loaded from: classes6-dex2jar.jar:e/a/b/l/p.class */
public final class C8041p implements AbstractC8040o {

    /* renamed from: a */
    public final List<OpenHours> f24772a = new ArrayList();

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: c3 */
    public void mo28926c3(int i) {
        this.f24772a.remove(i);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: d3 */
    public OpenHours mo28925d3(int i, C7860a c7860a) {
        l.e(c7860a, "opensAt");
        OpenHours openHours = this.f24772a.get(i);
        l.e(openHours, "$this$withOpeningTime");
        l.e(c7860a, "time");
        OpenHours copy$default = OpenHours.copy$default(openHours, null, c7860a.m29221a(), null, 5, null);
        this.f24772a.set(i, copy$default);
        return copy$default;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: e3 */
    public OpenHours mo28924e3(int i) {
        return this.f24772a.get(i);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: f3 */
    public OpenHours mo28923f3(int i, SortedSet<Integer> sortedSet) {
        l.e(sortedSet, "daysOfTheWeek");
        OpenHours copy$default = OpenHours.copy$default(this.f24772a.get(i), sortedSet, null, null, 6, null);
        this.f24772a.set(i, copy$default);
        return copy$default;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: g3 */
    public OpenHours mo28922g3(int i, C7860a c7860a) {
        l.e(c7860a, "closesAt");
        OpenHours openHours = this.f24772a.get(i);
        l.e(openHours, "$this$withClosingTime");
        l.e(c7860a, "time");
        OpenHours copy$default = OpenHours.copy$default(openHours, null, null, c7860a.m29221a(), 3, null);
        this.f24772a.set(i, copy$default);
        return copy$default;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: h3 */
    public OpenHours mo28921h3() {
        OpenHours openHours = new OpenHours(new TreeSet(), null, null, 6, null);
        this.f24772a.add(openHours);
        return openHours;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: i3 */
    public List<OpenHours> mo28920i3() {
        return this.f24772a;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: j3 */
    public List<OpenHours> mo28919j3(List<OpenHours> list) {
        l.e(list, "openHours");
        this.f24772a.clear();
        this.f24772a.addAll(list);
        return this.f24772a;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8040o
    /* renamed from: k3 */
    public boolean mo28918k3() {
        for (OpenHours openHours : this.f24772a) {
            boolean isEmpty = openHours.getWeekday().isEmpty();
            String opens = openHours.getOpens();
            boolean z = opens == null || opens.length() == 0;
            String closes = openHours.getCloses();
            boolean z2 = true;
            if (closes != null) {
                z2 = closes.length() == 0;
            }
            if (isEmpty | z | z2) {
                return false;
            }
        }
        return true;
    }
}
