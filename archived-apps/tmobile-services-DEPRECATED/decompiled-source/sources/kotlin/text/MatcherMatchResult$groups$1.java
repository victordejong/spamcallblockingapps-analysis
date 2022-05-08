package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.regex.MatchResult;
import kotlin.Metadata;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��3\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0006*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\u0006\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000eH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "", FirebaseAnalytics.Param.INDEX, "Lkotlin/text/MatchGroup;", "get", "(I)Lkotlin/text/MatchGroup;", "", "name", "(Ljava/lang/String;)Lkotlin/text/MatchGroup;", "", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatcherMatchResult$groups$1.class */
public final class MatcherMatchResult$groups$1 extends AbstractCollection<MatchGroup> implements MatchNamedGroupCollection {

    /* renamed from: f */
    final /* synthetic */ MatcherMatchResult f21037f;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        MatchResult b;
        b = this.f21037f.m1562b();
        return b.groupCount() + 1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj != null ? obj instanceof MatchGroup : true) {
            return m1557e((MatchGroup) obj);
        }
        return false;
    }

    /* renamed from: e */
    public /* bridge */ boolean m1557e(MatchGroup matchGroup) {
        return super.contains(matchGroup);
    }

    @Nullable
    /* renamed from: f */
    public MatchGroup m1556f(int i) {
        MatchResult b;
        IntRange d;
        MatchGroup matchGroup;
        MatchResult b2;
        b = this.f21037f.m1562b();
        d = RegexKt.m1545d(b, i);
        if (d.mo1695c().intValue() >= 0) {
            b2 = this.f21037f.m1562b();
            String group = b2.group(i);
            Intrinsics.m1831d(group, "matchResult.group(index)");
            matchGroup = new MatchGroup(group, d);
        } else {
            matchGroup = null;
        }
        return matchGroup;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<MatchGroup> iterator() {
        IntRange g;
        Sequence B;
        Sequence o;
        g = CollectionsKt__CollectionsKt.m2174g(this);
        B = CollectionsKt___CollectionsKt.m2152B(g);
        o = SequencesKt___SequencesKt.m1615o(B, new MatcherMatchResult$groups$1$iterator$1(this));
        return o.iterator();
    }
}
