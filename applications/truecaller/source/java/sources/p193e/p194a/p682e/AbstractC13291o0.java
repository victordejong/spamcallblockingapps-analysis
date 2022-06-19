package p193e.p194a.p682e;

import android.content.Context;
import android.content.DialogInterface;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.data.entity.Contact;
import java.util.List;
import java.util.Objects;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p682e.AbstractC13291o0;
import p193e.p194a.p682e.p698c.C13091i1;
import p193e.p194a.p682e.p698c.C13165w1;
import p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
import s1.k;
/* renamed from: e.a.e.o0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/o0.class */
public abstract class AbstractC13291o0 {

    /* renamed from: a */
    public final AbstractC14835j f38631a;

    /* renamed from: e.a.e.o0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/o0$a.class */
    public class AsyncTaskC13292a extends AbstractAsyncTaskC15557a {

        /* renamed from: d */
        public final /* synthetic */ List f38632d;

        /* renamed from: e */
        public final /* synthetic */ String f38633e;

        /* renamed from: f */
        public final /* synthetic */ String f38634f;

        /* renamed from: g */
        public final /* synthetic */ String f38635g;

        /* renamed from: h */
        public final /* synthetic */ boolean f38636h;

        /* renamed from: i */
        public final /* synthetic */ FiltersContract.Filters.WildCardType f38637i;

        /* renamed from: j */
        public final /* synthetic */ FiltersContract.Filters.EntityType f38638j;

        /* renamed from: k */
        public final /* synthetic */ Long f38639k;

        /* renamed from: l */
        public final /* synthetic */ int f38640l;

        /* renamed from: m */
        public final /* synthetic */ AbstractC13293b f38641m;

        public AsyncTaskC13292a(List list, String str, String str2, String str3, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, Long l, int i, AbstractC13293b abstractC13293b) {
            AbstractC13291o0.this = r4;
            this.f38632d = list;
            this.f38633e = str;
            this.f38634f = str2;
            this.f38635g = str3;
            this.f38636h = z;
            this.f38637i = wildCardType;
            this.f38638j = entityType;
            this.f38639k = l;
            this.f38640l = i;
            this.f38641m = abstractC13293b;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            AbstractC13291o0 abstractC13291o0 = AbstractC13291o0.this;
            ((C13294c) abstractC13291o0).f38643b.m21920TA(this.f38640l);
            C13294c c13294c = (C13294c) AbstractC13291o0.this;
            if (c13294c.f38643b.m21921SA()) {
                c13294c.f38643b.mo21924OA();
            }
            AbstractC13293b abstractC13293b = this.f38641m;
            if (abstractC13293b != null) {
                final C13165w1 c13165w1 = (C13165w1) abstractC13293b;
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = c13165w1.f38269a;
                new View$OnClickListenerC13135s1.AsyncTaskC13153q(view$OnClickListenerC13135s1.f38105F0, new Runnable() { // from class: e.a.e.c.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = C13165w1.this.f38269a;
                        view$OnClickListenerC13135s12.f38133P1.mo22007u(view$OnClickListenerC13135s12.f38105F0);
                    }
                });
            }
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            if (AbstractC13291o0.this.mo21947c() == null || AbstractC13291o0.this.f38631a.mo19587i(this.f38632d, this.f38633e, this.f38634f, this.f38635g, this.f38636h, this.f38637i, this.f38638j, this.f38639k) <= 0) {
                return null;
            }
            Objects.requireNonNull(AbstractC13291o0.this);
            return null;
        }
    }

    /* renamed from: e.a.e.o0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/o0$b.class */
    public interface AbstractC13293b {
    }

    /* renamed from: e.a.e.o0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/o0$c.class */
    public static class C13294c extends AbstractC13291o0 {

        /* renamed from: b */
        public final AbstractC13329x0 f38643b;

        public C13294c(AbstractC13329x0 abstractC13329x0, AbstractC14835j abstractC14835j) {
            super(abstractC14835j);
            this.f38643b = abstractC13329x0;
        }

        @Override // p193e.p194a.p682e.AbstractC13291o0
        /* renamed from: c */
        public Context mo21947c() {
            return this.f38643b.getActivity();
        }
    }

    public AbstractC13291o0(AbstractC14835j abstractC14835j) {
        this.f38631a = abstractC14835j;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [e.a.e.c.i1, android.app.Dialog] */
    /* renamed from: a */
    public final void m21950a(final List<k<String, Integer>> list, final String str, Contact contact, final String str2, final String str3, final boolean z, FiltersContract.Filters.WildCardType wildCardType, final AbstractC13293b abstractC13293b, boolean z2) {
        int i;
        int i2;
        if (mo21947c() == null) {
            return;
        }
        str3.hashCode();
        boolean z3 = true;
        boolean z4 = false;
        switch (str3.hashCode()) {
            case -293212780:
                if (str3.equals("unblock")) {
                    z3 = false;
                    break;
                }
                break;
            case 93832333:
                if (str3.equals("block")) {
                    z3 = true;
                    break;
                }
                break;
            case 2129658012:
                if (str3.equals("notspam")) {
                    z3 = true;
                    break;
                }
                break;
        }
        switch (z3) {
            case false:
                i2 = 2131886193;
                i = 2131886102;
                break;
            case true:
                i2 = 2131886126;
                i = 2131886097;
                break;
            case true:
                i2 = 2131886197;
                i = 2131886098;
                break;
            default:
                return;
        }
        String m35491w = contact == null ? null : contact.m35491w();
        if ("block".equalsIgnoreCase(str3)) {
            Context mo21947c = mo21947c();
            if (list.size() == 1) {
                z4 = true;
            }
            ?? c13091i1 = new C13091i1(mo21947c, m35491w, z2, z4);
            c13091i1.f37988g = new C13256g(this, contact, m35491w, list, str, str2, z, wildCardType, abstractC13293b);
            c13091i1.show();
            return;
        }
        g$a g_a = new g$a(mo21947c());
        g_a.m3664e(i2);
        final String str4 = m35491w;
        g_a.m3660i(i, new DialogInterface.OnClickListener() { // from class: e.a.e.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AbstractC13291o0 abstractC13291o0 = AbstractC13291o0.this;
                List list2 = list;
                String str5 = str;
                String str6 = str4;
                String str7 = str2;
                String str8 = str3;
                boolean z5 = z;
                AbstractC13291o0.AbstractC13293b abstractC13293b2 = abstractC13293b;
                Objects.requireNonNull(abstractC13291o0);
                new AsyncTaskC13300p0(abstractC13291o0, list2, str5, str6, str7, str8, z5);
                if (abstractC13293b2 != null) {
                    ((C13165w1) abstractC13293b2).m22002a(false);
                }
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: b */
    public void m21949b(List<k<String, Integer>> list, String str, String str2, String str3, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, int i, Long l, AbstractC13293b abstractC13293b) {
        new AsyncTaskC13292a(list, str, str2, str3, z, wildCardType, entityType, l, i, abstractC13293b);
    }

    /* renamed from: c */
    public abstract Context mo21947c();

    /* renamed from: d */
    public abstract void mo21948d(String str);
}
