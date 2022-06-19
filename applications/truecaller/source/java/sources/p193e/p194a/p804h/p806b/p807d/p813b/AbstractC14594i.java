package p193e.p194a.p804h.p806b.p807d.p813b;

import com.truecaller.data.entity.HistoryEvent;
import java.util.LinkedHashSet;
import java.util.Set;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.h.b.d.b.i */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/b/i.class */
public abstract class AbstractC14594i {

    /* renamed from: a */
    public final Set<Long> f41929a;

    /* renamed from: b */
    public final Set<Long> f41930b;

    /* renamed from: c */
    public final HistoryEvent f41931c;

    public AbstractC14594i(HistoryEvent historyEvent, f fVar) {
        this.f41931c = historyEvent;
        Long id = historyEvent.getId();
        this.f41929a = id != null ? i.f0(new Long[]{id}) : new LinkedHashSet();
        Long l = historyEvent.f11540g;
        this.f41930b = l != null ? i.f0(new Long[]{Long.valueOf(l.longValue())}) : new LinkedHashSet();
    }

    /* renamed from: a */
    public final void m19953a(HistoryEvent historyEvent) {
        l.e(historyEvent, "event");
        Long id = historyEvent.getId();
        if (id != null) {
            this.f41929a.add(id);
        }
        Long l = historyEvent.f11540g;
        if (l != null) {
            this.f41930b.add(Long.valueOf(l.longValue()));
        }
    }
}
