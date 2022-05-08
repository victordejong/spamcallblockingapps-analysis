package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.OpenHashSet;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:io/reactivex/disposables/CompositeDisposable.class */
public final class CompositeDisposable implements Disposable, DisposableContainer {

    /* renamed from: f */
    OpenHashSet<Disposable> f15117f;

    /* renamed from: g */
    volatile boolean f15118g;

    @Override // io.reactivex.internal.disposables.DisposableContainer
    /* renamed from: a */
    public boolean mo4426a(@NonNull Disposable disposable) {
        if (!mo4424c(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    /* renamed from: b */
    public boolean mo4425b(@NonNull Disposable disposable) {
        ObjectHelper.m4363e(disposable, "disposable is null");
        if (!this.f15118g) {
            synchronized (this) {
                if (!this.f15118g) {
                    OpenHashSet<Disposable> openHashSet = this.f15117f;
                    OpenHashSet<Disposable> openHashSet2 = openHashSet;
                    if (openHashSet == null) {
                        openHashSet2 = new OpenHashSet<>();
                        this.f15117f = openHashSet2;
                    }
                    openHashSet2.m3420a(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    /* renamed from: c */
    public boolean mo4424c(@NonNull Disposable disposable) {
        ObjectHelper.m4363e(disposable, "disposables is null");
        if (this.f15118g) {
            return false;
        }
        synchronized (this) {
            if (this.f15118g) {
                return false;
            }
            OpenHashSet<Disposable> openHashSet = this.f15117f;
            if (openHashSet != null && openHashSet.m3416e(disposable)) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: d */
    public boolean m4445d(@NonNull Disposable... disposableArr) {
        ObjectHelper.m4363e(disposableArr, "disposables is null");
        if (!this.f15118g) {
            synchronized (this) {
                if (!this.f15118g) {
                    OpenHashSet<Disposable> openHashSet = this.f15117f;
                    OpenHashSet<Disposable> openHashSet2 = openHashSet;
                    if (openHashSet == null) {
                        openHashSet2 = new OpenHashSet<>(disposableArr.length + 1);
                        this.f15117f = openHashSet2;
                    }
                    for (Disposable disposable : disposableArr) {
                        ObjectHelper.m4363e(disposable, "A Disposable in the disposables array is null");
                        openHashSet2.m3420a(disposable);
                    }
                    return true;
                }
            }
        }
        for (Disposable disposable2 : disposableArr) {
            disposable2.dispose();
        }
        return false;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (!this.f15118g) {
            synchronized (this) {
                if (!this.f15118g) {
                    this.f15118g = true;
                    OpenHashSet<Disposable> openHashSet = this.f15117f;
                    this.f15117f = null;
                    m4443f(openHashSet);
                }
            }
        }
    }

    /* renamed from: e */
    public void m4444e() {
        if (!this.f15118g) {
            synchronized (this) {
                if (!this.f15118g) {
                    OpenHashSet<Disposable> openHashSet = this.f15117f;
                    this.f15117f = null;
                    m4443f(openHashSet);
                }
            }
        }
    }

    /* renamed from: f */
    void m4443f(OpenHashSet<Disposable> openHashSet) {
        Object[] b;
        if (openHashSet != null) {
            ArrayList arrayList = null;
            for (Object obj : openHashSet.m3419b()) {
                arrayList = arrayList;
                if (obj instanceof Disposable) {
                    try {
                        ((Disposable) obj).dispose();
                        arrayList = arrayList;
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        arrayList = arrayList;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(th);
                    }
                }
            }
            if (arrayList == null) {
                return;
            }
            if (arrayList.size() == 1) {
                throw ExceptionHelper.m3434e((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    /* renamed from: g */
    public int m4442g() {
        int i = 0;
        if (this.f15118g) {
            return 0;
        }
        synchronized (this) {
            if (this.f15118g) {
                return 0;
            }
            OpenHashSet<Disposable> openHashSet = this.f15117f;
            if (openHashSet != null) {
                i = openHashSet.m3414g();
            }
            return i;
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f15118g;
    }
}
