package com.google.android.gms.tasks;

import android.app.Activity;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/g.class */
public abstract class AbstractC1646g<TResult> {
    /* renamed from: a */
    public AbstractC1646g<TResult> m1470a(AbstractC1638b abstractC1638b) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    /* renamed from: b */
    public AbstractC1646g<TResult> m1469b(Executor executor, AbstractC1638b abstractC1638b) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: c */
    public AbstractC1646g<TResult> m1468c(Activity activity, AbstractC1639c<TResult> abstractC1639c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: d */
    public AbstractC1646g<TResult> m1467d(AbstractC1639c<TResult> abstractC1639c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: e */
    public AbstractC1646g<TResult> m1466e(Executor executor, AbstractC1639c<TResult> abstractC1639c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: f */
    public abstract AbstractC1646g<TResult> m1465f(AbstractC1641d abstractC1641d);

    /* renamed from: g */
    public abstract AbstractC1646g<TResult> m1464g(Executor executor, AbstractC1641d abstractC1641d);

    /* renamed from: h */
    public abstract AbstractC1646g<TResult> m1463h(AbstractC1643e<? super TResult> abstractC1643e);

    /* renamed from: i */
    public abstract AbstractC1646g<TResult> m1462i(Executor executor, AbstractC1643e<? super TResult> abstractC1643e);

    /* renamed from: j */
    public <TContinuationResult> AbstractC1646g<TContinuationResult> m1461j(AbstractC1636a<TResult, TContinuationResult> abstractC1636a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: k */
    public <TContinuationResult> AbstractC1646g<TContinuationResult> m1460k(Executor executor, AbstractC1636a<TResult, TContinuationResult> abstractC1636a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: l */
    public <TContinuationResult> AbstractC1646g<TContinuationResult> m1459l(AbstractC1636a<TResult, AbstractC1646g<TContinuationResult>> abstractC1636a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: m */
    public <TContinuationResult> AbstractC1646g<TContinuationResult> m1458m(Executor executor, AbstractC1636a<TResult, AbstractC1646g<TContinuationResult>> abstractC1636a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: n */
    public abstract Exception m1457n();

    /* renamed from: o */
    public abstract TResult m1456o();

    /* renamed from: p */
    public abstract <X extends Throwable> TResult m1455p(Class<X> cls) throws Throwable;

    /* renamed from: q */
    public abstract boolean m1454q();

    /* renamed from: r */
    public abstract boolean m1453r();

    /* renamed from: s */
    public abstract boolean m1452s();

    /* renamed from: t */
    public <TContinuationResult> AbstractC1646g<TContinuationResult> m1451t(AbstractC1644f<TResult, TContinuationResult> abstractC1644f) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: u */
    public <TContinuationResult> AbstractC1646g<TContinuationResult> m1450u(Executor executor, AbstractC1644f<TResult, TContinuationResult> abstractC1644f) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
