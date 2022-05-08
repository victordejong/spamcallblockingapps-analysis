package p081h.p203i.p204a.p224e.p293r;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* renamed from: h.i.a.e.r.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/h.class */
public abstract class AbstractC9143h<TResult> {
    @NonNull
    /* renamed from: a */
    public abstract AbstractC9143h<TResult> mo16029a(@NonNull Activity activity, @NonNull AbstractC9134d dVar);

    @NonNull
    /* renamed from: a */
    public abstract AbstractC9143h<TResult> mo16028a(@NonNull Activity activity, @NonNull AbstractC9137e<? super TResult> eVar);

    @NonNull
    /* renamed from: a */
    public <TContinuationResult> AbstractC9143h<TContinuationResult> mo16027a(@NonNull AbstractC9128a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<TResult> mo16026a(@NonNull AbstractC9130b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<TResult> mo16025a(@NonNull AbstractC9132c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    /* renamed from: a */
    public abstract AbstractC9143h<TResult> mo16024a(@NonNull AbstractC9134d dVar);

    @NonNull
    /* renamed from: a */
    public abstract AbstractC9143h<TResult> mo16023a(@NonNull AbstractC9137e<? super TResult> eVar);

    @NonNull
    /* renamed from: a */
    public <TContinuationResult> AbstractC9143h<TContinuationResult> mo16022a(@NonNull AbstractC9141g<TResult, TContinuationResult> gVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    @NonNull
    /* renamed from: a */
    public <TContinuationResult> AbstractC9143h<TContinuationResult> mo16020a(@NonNull Executor executor, @NonNull AbstractC9128a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<TResult> mo16019a(@NonNull Executor executor, @NonNull AbstractC9130b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<TResult> mo16018a(@NonNull Executor executor, @NonNull AbstractC9132c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    /* renamed from: a */
    public abstract AbstractC9143h<TResult> mo16017a(@NonNull Executor executor, @NonNull AbstractC9134d dVar);

    @NonNull
    /* renamed from: a */
    public abstract AbstractC9143h<TResult> mo16016a(@NonNull Executor executor, @NonNull AbstractC9137e<? super TResult> eVar);

    @NonNull
    /* renamed from: a */
    public <TContinuationResult> AbstractC9143h<TContinuationResult> mo16015a(@NonNull Executor executor, @NonNull AbstractC9141g<TResult, TContinuationResult> gVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    @Nullable
    /* renamed from: a */
    public abstract Exception mo16030a();

    /* renamed from: a */
    public abstract <X extends Throwable> TResult mo16021a(@NonNull Class<X> cls) throws Throwable;

    @NonNull
    /* renamed from: b */
    public <TContinuationResult> AbstractC9143h<TContinuationResult> mo16013b(@NonNull AbstractC9128a<TResult, AbstractC9143h<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @NonNull
    /* renamed from: b */
    public <TContinuationResult> AbstractC9143h<TContinuationResult> mo16012b(@NonNull Executor executor, @NonNull AbstractC9128a<TResult, AbstractC9143h<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: b */
    public abstract TResult mo16014b();

    /* renamed from: c */
    public abstract boolean mo16011c();

    /* renamed from: d */
    public abstract boolean mo16010d();

    /* renamed from: e */
    public abstract boolean mo16009e();
}
