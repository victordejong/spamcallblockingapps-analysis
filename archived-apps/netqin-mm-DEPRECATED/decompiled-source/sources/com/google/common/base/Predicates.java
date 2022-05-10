package com.google.common.base;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import p131c.p161d.p266c.p267a.AbstractC4918e;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4930m;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates.class */
public final class Predicates {

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$AndPredicate.class */
    public static class AndPredicate<T> implements AbstractC4934o<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final List<? extends AbstractC4934o<? super T>> components;

        public AndPredicate(List<? extends AbstractC4934o<? super T>> list) {
            this.components = list;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (!((AbstractC4934o) this.components.get(i)).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.components.equals(((AndPredicate) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.m8565b("and", this.components);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$CompositionPredicate.class */
    public static class CompositionPredicate<A, B> implements AbstractC4934o<A>, Serializable {
        public static final long serialVersionUID = 0;

        /* renamed from: f */
        public final AbstractC4920g<A, ? extends B> f30281f;

        /* renamed from: p */
        public final AbstractC4934o<B> f30282p;

        public CompositionPredicate(AbstractC4934o<B> oVar, AbstractC4920g<A, ? extends B> gVar) {
            C4933n.m24795a(oVar);
            this.f30282p = oVar;
            C4933n.m24795a(gVar);
            this.f30281f = gVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(A a) {
            return this.f30282p.apply(this.f30281f.apply(a));
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof CompositionPredicate) {
                CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
                z = false;
                if (this.f30281f.equals(compositionPredicate.f30281f)) {
                    z = false;
                    if (this.f30282p.equals(compositionPredicate.f30282p)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return this.f30281f.hashCode() ^ this.f30282p.hashCode();
        }

        public String toString() {
            return this.f30282p + "(" + this.f30281f + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$ContainsPatternFromStringPredicate.class */
    public static class ContainsPatternFromStringPredicate extends ContainsPatternPredicate {
        public static final long serialVersionUID = 0;

        public ContainsPatternFromStringPredicate(String str) {
            super(C4930m.m24804a(str));
        }

        @Override // com.google.common.base.Predicates.ContainsPatternPredicate
        public String toString() {
            return "Predicates.containsPattern(" + this.pattern.pattern() + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$ContainsPatternPredicate.class */
    public static class ContainsPatternPredicate implements AbstractC4934o<CharSequence>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4918e pattern;

        public ContainsPatternPredicate(AbstractC4918e eVar) {
            C4933n.m24795a(eVar);
            this.pattern = eVar;
        }

        public boolean apply(CharSequence charSequence) {
            return this.pattern.matcher(charSequence).mo8575a();
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ContainsPatternPredicate) {
                ContainsPatternPredicate containsPatternPredicate = (ContainsPatternPredicate) obj;
                z = false;
                if (C4928k.m24808a(this.pattern.pattern(), containsPatternPredicate.pattern.pattern())) {
                    z = false;
                    if (this.pattern.flags() == containsPatternPredicate.pattern.flags()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.pattern.pattern(), Integer.valueOf(this.pattern.flags()));
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this.pattern);
            a.m24813a("pattern", this.pattern.pattern());
            a.m24815a("pattern.flags", this.pattern.flags());
            String bVar = a.toString();
            return "Predicates.contains(" + bVar + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$InPredicate.class */
    public static class InPredicate<T> implements AbstractC4934o<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final Collection<?> target;

        public InPredicate(Collection<?> collection) {
            C4933n.m24795a(collection);
            this.target = collection;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(T t) {
            try {
                return this.target.contains(t);
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            if (obj instanceof InPredicate) {
                return this.target.equals(((InPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.target + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$InstanceOfPredicate.class */
    public static class InstanceOfPredicate implements AbstractC4934o<Object>, Serializable {
        public static final long serialVersionUID = 0;
        public final Class<?> clazz;

        public InstanceOfPredicate(Class<?> cls) {
            C4933n.m24795a(cls);
            this.clazz = cls;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(Object obj) {
            return this.clazz.isInstance(obj);
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof InstanceOfPredicate) {
                z = false;
                if (this.clazz == ((InstanceOfPredicate) obj).clazz) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        public String toString() {
            return "Predicates.instanceOf(" + this.clazz.getName() + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$IsEqualToPredicate.class */
    public static class IsEqualToPredicate<T> implements AbstractC4934o<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final T target;

        public IsEqualToPredicate(T t) {
            this.target = t;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(T t) {
            return this.target.equals(t);
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            if (obj instanceof IsEqualToPredicate) {
                return this.target.equals(((IsEqualToPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.equalTo(" + this.target + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$NotPredicate.class */
    public static class NotPredicate<T> implements AbstractC4934o<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4934o<T> predicate;

        public NotPredicate(AbstractC4934o<T> oVar) {
            C4933n.m24795a(oVar);
            this.predicate = oVar;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(T t) {
            return !this.predicate.apply(t);
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            if (obj instanceof NotPredicate) {
                return this.predicate.equals(((NotPredicate) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return this.predicate.hashCode() ^ (-1);
        }

        public String toString() {
            return "Predicates.not(" + this.predicate + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$ObjectPredicate.class */
    public enum ObjectPredicate implements AbstractC4934o<Object> {
        ALWAYS_TRUE { // from class: com.google.common.base.Predicates.ObjectPredicate.1
            @Override // p131c.p161d.p266c.p267a.AbstractC4934o
            public boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE { // from class: com.google.common.base.Predicates.ObjectPredicate.2
            @Override // p131c.p161d.p266c.p267a.AbstractC4934o
            public boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.3
            @Override // p131c.p161d.p266c.p267a.AbstractC4934o
            public boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.4
            @Override // p131c.p161d.p266c.p267a.AbstractC4934o
            public boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        };

        public <T> AbstractC4934o<T> withNarrowedType() {
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$OrPredicate.class */
    public static class OrPredicate<T> implements AbstractC4934o<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final List<? extends AbstractC4934o<? super T>> components;

        public OrPredicate(List<? extends AbstractC4934o<? super T>> list) {
            this.components = list;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (((AbstractC4934o) this.components.get(i)).apply(t)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            if (obj instanceof OrPredicate) {
                return this.components.equals(((OrPredicate) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 87855567;
        }

        public String toString() {
            return Predicates.m8565b("or", this.components);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Predicates$SubtypeOfPredicate.class */
    public static class SubtypeOfPredicate implements AbstractC4934o<Class<?>>, Serializable {
        public static final long serialVersionUID = 0;
        public final Class<?> clazz;

        public SubtypeOfPredicate(Class<?> cls) {
            C4933n.m24795a(cls);
            this.clazz = cls;
        }

        public boolean apply(Class<?> cls) {
            return this.clazz.isAssignableFrom(cls);
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof SubtypeOfPredicate) {
                z = false;
                if (this.clazz == ((SubtypeOfPredicate) obj).clazz) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        public String toString() {
            return "Predicates.subtypeOf(" + this.clazz.getName() + ")";
        }
    }

    /* renamed from: a */
    public static <T> AbstractC4934o<T> m8572a() {
        return ObjectPredicate.ALWAYS_TRUE.withNarrowedType();
    }

    /* renamed from: a */
    public static <T> AbstractC4934o<T> m8571a(AbstractC4934o<T> oVar) {
        return new NotPredicate(oVar);
    }

    /* renamed from: a */
    public static <A, B> AbstractC4934o<A> m8570a(AbstractC4934o<B> oVar, AbstractC4920g<A, ? extends B> gVar) {
        return new CompositionPredicate(oVar, gVar);
    }

    /* renamed from: a */
    public static <T> AbstractC4934o<T> m8569a(T t) {
        return t == null ? m8566b() : new IsEqualToPredicate<>(t);
    }

    /* renamed from: a */
    public static <T> AbstractC4934o<T> m8567a(Collection<? extends T> collection) {
        return new InPredicate(collection);
    }

    /* renamed from: b */
    public static <T> AbstractC4934o<T> m8566b() {
        return ObjectPredicate.IS_NULL.withNarrowedType();
    }

    /* renamed from: b */
    public static String m8565b(String str, Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
