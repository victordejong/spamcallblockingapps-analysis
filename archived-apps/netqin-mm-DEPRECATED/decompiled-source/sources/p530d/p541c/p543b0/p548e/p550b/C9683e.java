package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableElementAt;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p543b0.p546c.AbstractC9653b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.e.b.e */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/e.class */
public final class C9683e<T> extends AbstractC9833i<T> implements AbstractC9653b<T> {

    /* renamed from: a */
    public final AbstractC9814e<T> f36767a;

    /* renamed from: b */
    public final long f36768b;

    /* renamed from: d.c.b0.e.b.e$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/e$a.class */
    public static final class C9684a<T> implements AbstractC9829h<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super T> f36769a;

        /* renamed from: b */
        public final long f36770b;

        /* renamed from: c */
        public AbstractC10434d f36771c;

        /* renamed from: d */
        public long f36772d;

        /* renamed from: e */
        public boolean f36773e;

        public C9684a(AbstractC9836k<? super T> kVar, long j) {
            this.f36769a = kVar;
            this.f36770b = j;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36771c.cancel();
            this.f36771c = SubscriptionHelper.CANCELLED;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36771c == SubscriptionHelper.CANCELLED;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            this.f36771c = SubscriptionHelper.CANCELLED;
            if (!this.f36773e) {
                this.f36773e = true;
                this.f36769a.onComplete();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.f36773e) {
                C9815a.m1923b(th);
                return;
            }
            this.f36773e = true;
            this.f36771c = SubscriptionHelper.CANCELLED;
            this.f36769a.onError(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.f36773e) {
                long j = this.f36772d;
                if (j == this.f36770b) {
                    this.f36773e = true;
                    this.f36771c.cancel();
                    this.f36771c = SubscriptionHelper.CANCELLED;
                    this.f36769a.onSuccess(t);
                    return;
                }
                this.f36772d = j + 1;
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f36771c, dVar)) {
                this.f36771c = dVar;
                this.f36769a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public C9683e(AbstractC9814e<T> eVar, long j) {
        this.f36767a = eVar;
        this.f36768b = j;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36767a.m1965a((AbstractC9829h) new C9684a(kVar, this.f36768b));
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9653b
    /* renamed from: c */
    public AbstractC9814e<T> mo2080c() {
        return C9815a.m1938a(new FlowableElementAt(this.f36767a, this.f36768b, null, false));
    }
}
