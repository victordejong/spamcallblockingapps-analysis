package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.smartcards.CardFeedBackType;
import s1.z.c.f;
/* renamed from: e.a.c.r.j.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h.class */
public abstract class AbstractC10597h {

    /* renamed from: a */
    public final CardFeedBackType f31607a;

    /* renamed from: b */
    public final CardFeedBackType f31608b;

    /* renamed from: c */
    public final CardFeedBackType f31609c;

    /* renamed from: e.a.c.r.j.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$a.class */
    public static final class C10598a extends AbstractC10597h {

        /* renamed from: d */
        public static final C10598a f31610d = new C10598a();

        public C10598a() {
            super(CardFeedBackType.EDIT_TAG_FEEDBACK, CardFeedBackType.IMPORTANT_MESSAGE_NEGATIVE_FEEDBACK, CardFeedBackType.IMPORTANT_MESSAGE_DISMISS_FEEDBACK, null);
        }
    }

    /* renamed from: e.a.c.r.j.h$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$b.class */
    public static final class C10599b extends AbstractC10597h {

        /* renamed from: d */
        public static final C10599b f31611d = new C10599b();

        public C10599b() {
            super(CardFeedBackType.IMPORTANT_MESSAGE_POSITIVE_FEEDBACK, CardFeedBackType.IMPORTANT_MESSAGE_NEGATIVE_FEEDBACK, CardFeedBackType.IMPORTANT_MESSAGE_DISMISS_FEEDBACK, null);
        }
    }

    /* renamed from: e.a.c.r.j.h$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$c.class */
    public static final class C10600c extends AbstractC10597h {

        /* renamed from: d */
        public static final C10600c f31612d = new C10600c();

        public C10600c() {
            super(CardFeedBackType.INFOCARD_POSITIVE_FEEDBACK, CardFeedBackType.INFOCARD_NEGATIVE_FEEDBACK, CardFeedBackType.INFOCARD_DISMISS_FEEDBACK, null);
        }
    }

    /* renamed from: e.a.c.r.j.h$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$d.class */
    public static final class C10601d extends AbstractC10597h {

        /* renamed from: d */
        public static final C10601d f31613d = new C10601d();

        public C10601d() {
            super(CardFeedBackType.NOT_SPAM_POSITIVE_FEEDBACK, CardFeedBackType.NOT_SPAM_NEGATIVE_FEEDBACK, CardFeedBackType.NOT_SPAM_DISMISS_FEEDBACK, null);
        }
    }

    /* renamed from: e.a.c.r.j.h$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$e.class */
    public static final class C10602e extends AbstractC10597h {

        /* renamed from: d */
        public static final C10602e f31614d = new C10602e();

        public C10602e() {
            super(CardFeedBackType.SEMICARD_POSITIVE_FEEDBACK, CardFeedBackType.SEMICARD_NEGATIVE_FEEDBACK, CardFeedBackType.SEMICARD_DISMISS_FEEDBACK, null);
        }
    }

    /* renamed from: e.a.c.r.j.h$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$f.class */
    public static final class C10603f extends AbstractC10597h {

        /* renamed from: d */
        public static final C10603f f31615d = new C10603f();

        public C10603f() {
            super(CardFeedBackType.SPAM_POSITIVE_FEEDBACK, CardFeedBackType.SPAM_NEGATIVE_FEEDBACK, CardFeedBackType.SPAM_DISMISS_FEEDBACK, null);
        }
    }

    /* renamed from: e.a.c.r.j.h$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/h$g.class */
    public static final class C10604g extends AbstractC10597h {

        /* renamed from: d */
        public static final C10604g f31616d = new C10604g();

        public C10604g() {
            super(CardFeedBackType.UPDATES_POSITIVE_FEEDBACK, CardFeedBackType.UPDATES_NEGATIVE_FEEDBACK, CardFeedBackType.UPDATES_DISMISS_FEEDBACK, null);
        }
    }

    public AbstractC10597h(CardFeedBackType cardFeedBackType, CardFeedBackType cardFeedBackType2, CardFeedBackType cardFeedBackType3, f fVar) {
        this.f31607a = cardFeedBackType;
        this.f31608b = cardFeedBackType2;
        this.f31609c = cardFeedBackType3;
    }
}
