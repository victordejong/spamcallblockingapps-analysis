package p626l.p631e0;

import java.util.Collection;
import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p628b0.C14888d;
import p626l.p630d0.C14930l;
import p626l.p632u.AbstractC14991a;
import p626l.p632u.C15021m;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, m815d2 = {"Lkotlin/text/MatcherMatchResult;", "Lkotlin/text/MatchResult;", "matcher", "Ljava/util/regex/Matcher;", "input", "", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "groupValues", "", "", "getGroupValues", "()Ljava/util/List;", "groupValues_", "groups", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "matchResult", "Ljava/util/regex/MatchResult;", "getMatchResult", "()Ljava/util/regex/MatchResult;", "range", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", C13032a.f29462d, "getValue", "()Ljava/lang/String;", "next", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.e0.j */
/* loaded from: classes3-dex2jar.jar:l/e0/j.class */
public final class C14946j implements AbstractC14945i {

    /* renamed from: a */
    public final Matcher f32992a;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0013\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002J\u0013\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, m815d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "Lkotlin/text/MatchGroup;", "size", "", "getSize", "()I", "get", "index", "name", "", "isEmpty", "", "iterator", "", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
    /* renamed from: l.e0.j$a */
    /* loaded from: classes3-dex2jar.jar:l/e0/j$a.class */
    public static final class C14947a extends AbstractC14991a<C14942f> implements AbstractC14944h {

        /* renamed from: l.e0.j$a$a */
        /* loaded from: classes3-dex2jar.jar:l/e0/j$a$a.class */
        public static final class C14948a extends AbstractC15150l implements AbstractC15118l<Integer, C14942f> {
            public C14948a() {
                super(1);
            }

            /* renamed from: a */
            public final C14942f m751a(int i) {
                return C14947a.this.get(i);
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14942f invoke(Integer num) {
                return m751a(num.intValue());
            }
        }

        public C14947a() {
        }

        /* renamed from: a */
        public /* bridge */ boolean m752a(C14942f fVar) {
            return super.contains(fVar);
        }

        @Override // p626l.p632u.AbstractC14991a
        /* renamed from: b */
        public int mo619b() {
            return C14946j.this.m754a().groupCount() + 1;
        }

        @Override // p626l.p632u.AbstractC14991a, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj != null ? obj instanceof C14942f : true) {
                return m752a((C14942f) obj);
            }
            return false;
        }

        public C14942f get(int i) {
            C14888d b;
            C14942f fVar;
            b = C14953l.m739b(C14946j.this.m754a(), i);
            if (b.getStart().intValue() >= 0) {
                String group = C14946j.this.m754a().group(i);
                C15149k.m383a((Object) group, "matchResult.group(index)");
                fVar = new C14942f(group, b);
            } else {
                fVar = null;
            }
            return fVar;
        }

        @Override // p626l.p632u.AbstractC14991a, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<C14942f> iterator() {
            return C14930l.m770b(C15029u.m550a((Iterable) C15021m.m564a((Collection<?>) this)), new C14948a()).iterator();
        }
    }

    public C14946j(Matcher matcher, CharSequence charSequence) {
        C15149k.m377b(matcher, "matcher");
        C15149k.m377b(charSequence, "input");
        this.f32992a = matcher;
        new C14947a();
    }

    /* renamed from: a */
    public final MatchResult m754a() {
        return this.f32992a;
    }

    @Override // p626l.p631e0.AbstractC14945i
    public String getValue() {
        String group = m754a().group();
        C15149k.m383a((Object) group, "matchResult.group()");
        return group;
    }
}
