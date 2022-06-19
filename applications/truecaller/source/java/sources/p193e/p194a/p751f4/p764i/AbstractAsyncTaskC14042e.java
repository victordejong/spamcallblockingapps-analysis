package p193e.p194a.p751f4.p764i;

import android.os.AsyncTask;
import android.widget.Toast;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import java.io.IOException;
import java.lang.ref.WeakReference;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
/* renamed from: e.a.f4.i.e */
/* loaded from: classes11-dex2jar.jar:e/a/f4/i/e.class */
public abstract class AbstractAsyncTaskC14042e<Params, Progress, Result> extends AsyncTask<Params, Progress, C14044b<Result>> {

    /* renamed from: a */
    public final WeakReference<AbstractC15561d> f40611a;

    /* renamed from: b */
    public final boolean f40612b;

    /* renamed from: c */
    public final boolean f40613c;

    /* renamed from: e.a.f4.i.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/i/e$a.class */
    public static class C14043a extends IOException {

        /* renamed from: a */
        public final int f40614a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C14043a(int r4) {
            /*
                r3 = this;
                java.lang.String r0 = "HTTP "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r5 = r0
                r0 = r5
                r1 = r4
                java.lang.String r1 = java.lang.String.valueOf(r1)
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r3
                r1 = r5
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r3
                r1 = r4
                r0.f40614a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e.C14043a.<init>(int):void");
        }
    }

    /* renamed from: e.a.f4.i.e$b */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/i/e$b.class */
    public static final class C14044b<Result> {

        /* renamed from: a */
        public final Result f40615a;

        /* renamed from: b */
        public final Exception f40616b;

        public C14044b(Exception exc) {
            this.f40615a = null;
            this.f40616b = exc;
        }

        public C14044b(Result result) {
            this.f40615a = result;
            this.f40616b = null;
        }
    }

    public AbstractAsyncTaskC14042e(AbstractC15561d abstractC15561d, boolean z, boolean z2) {
        this.f40611a = abstractC15561d == null ? null : new WeakReference<>(abstractC15561d);
        this.f40612b = z;
        this.f40613c = z2;
    }

    /* renamed from: a */
    public final AbstractC15561d m20827a() {
        WeakReference<AbstractC15561d> weakReference = this.f40611a;
        return weakReference == null ? null : weakReference.get();
    }

    /* renamed from: b */
    public final void m20826b(Exception exc) {
        AbstractC15561d m20827a = m20827a();
        int i = exc instanceof C14043a ? ((C14043a) exc).f40614a : 0;
        boolean z = i == 429;
        if (this.f40613c && !z) {
            boolean z2 = TrueApp.f9585r;
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            if (i != 0) {
                if (m20827a != null) {
                    m20827a.mo18685jf(i);
                } else {
                    Toast.makeText(m28551L, m28551L.getString(C2752R.string.ErrorConnectionGeneralWithStatusCode, Integer.valueOf(i)), 0).show();
                }
            } else if (m20827a != null) {
                m20827a.mo18683zr();
            } else {
                Toast.makeText(m28551L, 2131886717, 0).show();
            }
        }
        mo20824d(exc, i);
    }

    /* renamed from: c */
    public void mo20825c(Result result, Exception exc) {
    }

    /* renamed from: d */
    public abstract void mo20824d(Exception exc, int i);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.AsyncTask
    public Object doInBackground(Object[] objArr) {
        C14044b c14044b;
        try {
            c14044b = new C14044b(mo20823e(objArr));
        } catch (Exception e) {
            c14044b = new C14044b(e);
        }
        return c14044b;
    }

    /* renamed from: e */
    public abstract Result mo20823e(Params[] paramsArr) throws Exception;

    /* renamed from: f */
    public abstract void mo20822f(Result result);

    @Override // android.os.AsyncTask
    public void onCancelled(Object obj) {
        C14044b c14044b = (C14044b) obj;
        if (c14044b != null) {
            mo20825c(c14044b.f40615a, c14044b.f40616b);
        } else {
            mo20825c(null, null);
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Object obj) {
        Result result;
        C14044b c14044b = (C14044b) obj;
        AbstractC15561d m20827a = m20827a();
        boolean z = this.f40611a == null;
        if (m20827a != null && !m20827a.mo18684li()) {
            m20827a.mo18686b0();
            z = true;
        }
        if (!z) {
            if (c14044b != null) {
                mo20825c(c14044b.f40615a, c14044b.f40616b);
            } else {
                mo20825c(null, null);
            }
        } else if (c14044b == null) {
            m20826b(null);
        } else {
            Exception exc = c14044b.f40616b;
            if (exc != null || (result = c14044b.f40615a) == null) {
                m20826b(exc);
            } else {
                mo20822f(result);
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        AbstractC15561d m20827a = m20827a();
        if (m20827a == null || m20827a.mo18684li()) {
            return;
        }
        m20827a.mo18687E(this.f40612b);
    }
}
