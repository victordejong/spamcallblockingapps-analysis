package p459j.p460a.p530k;

import android.content.Context;
import android.content.Loader;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p660rx.Observable;
import p660rx.Observer;
import p660rx.Subscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.k.d */
/* loaded from: classes2-dex2jar.jar:j/a/k/d.class */
public abstract class AbstractC12830d<D> extends Loader<D> {

    /* renamed from: c */
    public Subscription f28984c;

    /* renamed from: b */
    public final Observer f28983b = new C12831a();

    /* renamed from: a */
    public final Observable f28982a = Observable.create(new C12832b()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread());

    /* renamed from: j.a.k.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/k/d$a.class */
    public class C12831a implements Observer<D> {
        public C12831a() {
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            AbstractC12830d.this.m5195a(null);
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
        }

        @Override // p660rx.Observer
        public void onNext(D d) {
            AbstractC12830d.this.m5193b(d);
        }
    }

    /* renamed from: j.a.k.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/k/d$b.class */
    public class C12832b implements Observable.OnSubscribe<D> {
        public C12832b() {
        }

        /* renamed from: a */
        public void call(Subscriber<? super D> subscriber) {
            try {
                try {
                    subscriber.onNext((Object) AbstractC12830d.this.m5189e());
                } catch (Exception e) {
                    subscriber.onError(e);
                }
            } finally {
                subscriber.onCompleted();
            }
        }
    }

    public AbstractC12830d(Context context) {
        super(context);
    }

    /* renamed from: a */
    public void mo5196a() {
    }

    /* renamed from: a */
    public void m5195a(@Nullable D d) {
        mo5191c(d);
        if (!this.f28984c.isUnsubscribed()) {
            this.f28984c.unsubscribe();
            this.f28984c = null;
            rollbackContentChanged();
            SystemClock.uptimeMillis();
            deliverCancellation();
        }
    }

    /* renamed from: b */
    public void m5194b() {
        this.f28984c = this.f28982a.subscribe(this.f28983b);
    }

    /* renamed from: b */
    public void m5193b(D d) {
        if (isAbandoned()) {
            mo5191c(d);
            return;
        }
        commitContentChanged();
        SystemClock.uptimeMillis();
        deliverResult(d);
    }

    /* renamed from: c */
    public abstract void mo5191c(@Nullable D d);

    /* renamed from: c */
    public boolean m5192c() {
        Subscription subscription = this.f28984c;
        if (subscription != null) {
            return subscription.isUnsubscribed();
        }
        return false;
    }

    /* renamed from: d */
    public abstract D mo5190d();

    @Override // android.content.Loader
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
    }

    /* renamed from: e */
    public D m5189e() {
        return mo5190d();
    }

    @Override // android.content.Loader
    public boolean onCancelLoad() {
        Subscription subscription = this.f28984c;
        if (subscription == null || subscription.isUnsubscribed()) {
            return false;
        }
        this.f28984c.unsubscribe();
        mo5196a();
        return false;
    }

    @Override // android.content.Loader
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        Subscription subscription = this.f28984c;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f28984c.unsubscribe();
            this.f28984c = null;
        }
        m5194b();
    }
}
