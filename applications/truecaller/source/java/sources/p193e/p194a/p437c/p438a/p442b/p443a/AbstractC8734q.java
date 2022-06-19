package p193e.p194a.p437c.p438a.p442b.p443a;

import android.content.Context;
import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q.class */
public abstract class AbstractC8734q implements Serializable {

    /* renamed from: a */
    public final String f26680a;

    /* renamed from: b */
    public final String f26681b;

    /* renamed from: c */
    public final String f26682c;

    /* renamed from: d */
    public final int f26683d;

    /* renamed from: e.a.c.a.b.a.q$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$a.class */
    public static final class C8735a extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26684e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8735a(android.content.Context r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.message_type
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Promotions"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…, DESTINATION_PROMOTIONS)"
                s1.z.c.l.d(r0, r1)
                java.util.Locale r0 = java.util.Locale.getDefault()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "Locale.getDefault()"
                s1.z.c.l.d(r0, r1)
                r0 = r9
                r1 = r10
                java.lang.String r0 = r0.toUpperCase(r1)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "(this as java.lang.String).toUpperCase(locale)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Promotions"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "context.getString(R.stri…, DESTINATION_PROMOTIONS)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r9
                r2 = r10
                r3 = r8
                int r4 = com.truecaller.insights.p168ui.C4078R.string.message_moved_description
                java.lang.String r3 = r3.getString(r4)
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_promotion_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26684e = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8735a.<init>(android.content.Context):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8735a) && l.a(this.f26684e, ((C8735a) obj).f26684e);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26684e;
            return context != null ? context.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedFromInboxToPromotions(context=");
            m8728C.append(this.f26684e);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.b.a.q$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$b.class */
    public static final class C8736b extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26685e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8736b(android.content.Context r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.message_type
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Other"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…_type, DESTINATION_OTHER)"
                s1.z.c.l.d(r0, r1)
                java.util.Locale r0 = java.util.Locale.getDefault()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "Locale.getDefault()"
                s1.z.c.l.d(r0, r1)
                r0 = r9
                r1 = r10
                java.lang.String r0 = r0.toUpperCase(r1)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "(this as java.lang.String).toUpperCase(locale)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Inbox"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…ed_to, DESTINATION_INBOX)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r9
                r3 = r8
                int r4 = com.truecaller.insights.p168ui.C4078R.string.message_moved_description
                java.lang.String r3 = r3.getString(r4)
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_not_spam_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26685e = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8736b.<init>(android.content.Context):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8736b) && l.a(this.f26685e, ((C8736b) obj).f26685e);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26685e;
            return context != null ? context.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedFromPromotionsToInbox(context=");
            m8728C.append(this.f26685e);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.b.a.q$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$c.class */
    public static final class C8737c extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26686e;

        /* renamed from: f */
        public final String f26687f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8737c(android.content.Context r8, java.lang.String r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r9
                java.lang.String r1 = "type"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.type_recorded
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r9
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "context.getString(R.string.type_recorded, type)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Business"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r11 = r0
                r0 = r11
                java.lang.String r1 = "context.getString(R.stri…to, DESTINATION_BUSINESS)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = r8
                int r4 = com.truecaller.insights.p168ui.C4078R.string.similar_messages_from_now_will_move_to_others
                java.lang.String r3 = r3.getString(r4)
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_not_spam_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26686e = r1
                r0 = r7
                r1 = r9
                r0.f26687f = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8737c.<init>(android.content.Context, java.lang.String):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8737c)) {
                    return false;
                }
                C8737c c8737c = (C8737c) obj;
                return l.a(this.f26686e, c8737c.f26686e) && l.a(this.f26687f, c8737c.f26687f);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26686e;
            int i = 0;
            int hashCode = context != null ? context.hashCode() : 0;
            String str = this.f26687f;
            if (str != null) {
                i = str.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedToBusiness(context=");
            m8728C.append(this.f26686e);
            m8728C.append(", type=");
            return C22128a.m8618h(m8728C, this.f26687f, ")");
        }
    }

    /* renamed from: e.a.c.a.b.a.q$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$d.class */
    public static final class C8738d extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26688e;

        /* renamed from: f */
        public final String f26689f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8738d(android.content.Context r8, java.lang.String r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r9
                java.lang.String r1 = "type"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.type_recorded
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r9
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "context.getString(R.string.type_recorded, type)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Inbox"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r11 = r0
                r0 = r11
                java.lang.String r1 = "context.getString(R.stri…ed_to, DESTINATION_INBOX)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = r8
                int r4 = com.truecaller.insights.p168ui.C4078R.string.message_moved_description
                java.lang.String r3 = r3.getString(r4)
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_not_spam_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26688e = r1
                r0 = r7
                r1 = r9
                r0.f26689f = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8738d.<init>(android.content.Context, java.lang.String):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8738d)) {
                    return false;
                }
                C8738d c8738d = (C8738d) obj;
                return l.a(this.f26688e, c8738d.f26688e) && l.a(this.f26689f, c8738d.f26689f);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26688e;
            int i = 0;
            int hashCode = context != null ? context.hashCode() : 0;
            String str = this.f26689f;
            if (str != null) {
                i = str.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedToInbox(context=");
            m8728C.append(this.f26688e);
            m8728C.append(", type=");
            return C22128a.m8618h(m8728C, this.f26689f, ")");
        }
    }

    /* renamed from: e.a.c.a.b.a.q$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$e.class */
    public static final class C8739e extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26690e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8739e(android.content.Context r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.message_type
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Other"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…_type, DESTINATION_OTHER)"
                s1.z.c.l.d(r0, r1)
                java.util.Locale r0 = java.util.Locale.getDefault()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "Locale.getDefault()"
                s1.z.c.l.d(r0, r1)
                r0 = r9
                r1 = r10
                java.lang.String r0 = r0.toUpperCase(r1)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "(this as java.lang.String).toUpperCase(locale)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Business"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…to, DESTINATION_BUSINESS)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r9
                r3 = r8
                int r4 = com.truecaller.insights.p168ui.C4078R.string.message_moved_out_of_the_promotions_section
                java.lang.String r3 = r3.getString(r4)
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_not_spam_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26690e = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8739e.<init>(android.content.Context):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8739e) && l.a(this.f26690e, ((C8739e) obj).f26690e);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26690e;
            return context != null ? context.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedToOthers(context=");
            m8728C.append(this.f26690e);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.b.a.q$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$f.class */
    public static final class C8740f extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26691e;

        /* renamed from: f */
        public final String f26692f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8740f(android.content.Context r8, java.lang.String r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r9
                java.lang.String r1 = "type"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.type_recorded
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r9
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "context.getString(R.string.type_recorded, type)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Personal"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r11 = r0
                r0 = r11
                java.lang.String r1 = "context.getString(R.stri…to, DESTINATION_PERSONAL)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = 0
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_not_spam_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26691e = r1
                r0 = r7
                r1 = r9
                r0.f26692f = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8740f.<init>(android.content.Context, java.lang.String):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8740f)) {
                    return false;
                }
                C8740f c8740f = (C8740f) obj;
                return l.a(this.f26691e, c8740f.f26691e) && l.a(this.f26692f, c8740f.f26692f);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26691e;
            int i = 0;
            int hashCode = context != null ? context.hashCode() : 0;
            String str = this.f26692f;
            if (str != null) {
                i = str.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedToPersonal(context=");
            m8728C.append(this.f26691e);
            m8728C.append(", type=");
            return C22128a.m8618h(m8728C, this.f26692f, ")");
        }
    }

    /* renamed from: e.a.c.a.b.a.q$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$g.class */
    public static final class C8741g extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26693e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8741g(android.content.Context r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.message_type
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Promotions"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…, DESTINATION_PROMOTIONS)"
                s1.z.c.l.d(r0, r1)
                java.util.Locale r0 = java.util.Locale.getDefault()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "Locale.getDefault()"
                s1.z.c.l.d(r0, r1)
                r0 = r9
                r1 = r10
                java.lang.String r0 = r0.toUpperCase(r1)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "(this as java.lang.String).toUpperCase(locale)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Promotions"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "context.getString(R.stri…, DESTINATION_PROMOTIONS)"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r9
                r3 = r8
                int r4 = com.truecaller.insights.p168ui.C4078R.string.you_can_find_this_section_on_business_tab
                java.lang.String r3 = r3.getString(r4)
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_promotion_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26693e = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8741g.<init>(android.content.Context):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8741g) && l.a(this.f26693e, ((C8741g) obj).f26693e);
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26693e;
            return context != null ? context.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedToPromotion(context=");
            m8728C.append(this.f26693e);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.b.a.q$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/q$h.class */
    public static final class C8742h extends AbstractC8734q {

        /* renamed from: e */
        public final transient Context f26694e;

        /* renamed from: f */
        public final String f26695f;

        /* renamed from: g */
        public final boolean f26696g;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8742h(android.content.Context r8, java.lang.String r9, boolean r10) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "context"
                s1.z.c.l.e(r0, r1)
                r0 = r9
                java.lang.String r1 = "type"
                s1.z.c.l.e(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.type_recorded
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r9
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r11 = r0
                r0 = r11
                java.lang.String r1 = "context.getString(R.string.type_recorded, type)"
                s1.z.c.l.d(r0, r1)
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.moved_to
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "Spam"
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                r12 = r0
                r0 = r12
                java.lang.String r1 = "context.getString(R.stri…ved_to, DESTINATION_SPAM)"
                s1.z.c.l.d(r0, r1)
                r0 = r10
                if (r0 == 0) goto L4d
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.message_moved_description
                java.lang.String r0 = r0.getString(r1)
                r13 = r0
                goto L56
            L4d:
                r0 = r8
                int r1 = com.truecaller.insights.p168ui.C4078R.string.similar_messages_from_now_will_move_to_spam
                java.lang.String r0 = r0.getString(r1)
                r13 = r0
            L56:
                r0 = r7
                r1 = r11
                r2 = r12
                r3 = r13
                int r4 = com.truecaller.insights.p168ui.C4078R.C4079drawable.ic_spam_success
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r8
                r0.f26694e = r1
                r0 = r7
                r1 = r9
                r0.f26695f = r1
                r0 = r7
                r1 = r10
                r0.f26696g = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q.C8742h.<init>(android.content.Context, java.lang.String, boolean):void");
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8742h)) {
                    return false;
                }
                C8742h c8742h = (C8742h) obj;
                return l.a(this.f26694e, c8742h.f26694e) && l.a(this.f26695f, c8742h.f26695f) && this.f26696g == c8742h.f26696g;
            }
            return true;
        }

        public int hashCode() {
            Context context = this.f26694e;
            int i = 0;
            int hashCode = context != null ? context.hashCode() : 0;
            String str = this.f26695f;
            if (str != null) {
                i = str.hashCode();
            }
            boolean z = this.f26696g;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovedToSpam(context=");
            m8728C.append(this.f26694e);
            m8728C.append(", type=");
            m8728C.append(this.f26695f);
            m8728C.append(", isTCY=");
            return C22128a.m8590o(m8728C, this.f26696g, ")");
        }
    }

    public AbstractC8734q(String str, String str2, String str3, int i, f fVar) {
        this.f26680a = str;
        this.f26681b = str2;
        this.f26682c = str3;
        this.f26683d = i;
    }
}
