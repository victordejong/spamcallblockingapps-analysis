package p193e.p194a.p437c.p538g.p542d0;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010%\n\u0002\u0010\f\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��*\u0004\b��\u0010\u00012\u00020\u0002:\u0002\t\nB!\b\u0004\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0��0\u0004¢\u0006\u0002\u0010\u0006R#\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0��0\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/insights/categorizer/seed/TrieNode;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "children", "", "", "(Ljava/util/Map;)V", "getChildren", "()Ljava/util/Map;", "EndNode", "NormalNode", "Lcom/truecaller/insights/categorizer/seed/TrieNode$NormalNode;", "Lcom/truecaller/insights/categorizer/seed/TrieNode$EndNode;", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.d0.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/e.class */
public abstract class AbstractC10153e<T> {

    /* renamed from: a */
    public final Map<Character, AbstractC10153e<T>> f30138a;

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0010\f\n\u0002\b\u0006\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B'\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00028\u0001¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0006\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/truecaller/insights/categorizer/seed/TrieNode$EndNode;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/truecaller/insights/categorizer/seed/TrieNode;", "kids", "", "", "metaValues", "(Ljava/util/Map;Ljava/lang/Object;)V", "getMetaValues", "()Ljava/lang/Object;", "Ljava/lang/Object;", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.a.c.g.d0.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/e$a.class */
    public static final class C10154a<T> extends AbstractC10153e<T> {

        /* renamed from: b */
        public final T f30139b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10154a(Map<Character, AbstractC10153e<T>> map, T t) {
            super(map, null);
            l.e(map, "kids");
            this.f30139b = t;
        }
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0010\f\n\u0002\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0004¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/insights/categorizer/seed/TrieNode$NormalNode;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/truecaller/insights/categorizer/seed/TrieNode;", "kids", "", "", "(Ljava/util/Map;)V", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.a.c.g.d0.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/e$b.class */
    public static final class C10155b<T> extends AbstractC10153e<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10155b(Map<Character, AbstractC10153e<T>> map) {
            super(map, null);
            l.e(map, "kids");
        }
    }

    public AbstractC10153e(Map map, f fVar) {
        this.f30138a = map;
    }
}
