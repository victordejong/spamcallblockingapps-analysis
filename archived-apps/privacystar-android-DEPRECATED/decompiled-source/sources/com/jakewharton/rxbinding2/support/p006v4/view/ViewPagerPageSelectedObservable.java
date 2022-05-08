package com.jakewharton.rxbinding2.support.p006v4.view;

import android.support.p001v4.view.ViewPager;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.ViewPagerPageSelectedObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable.class */
final class ViewPagerPageSelectedObservable extends InitialValueObservable<Integer> {
    private final ViewPager view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.view.ViewPagerPageSelectedObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements ViewPager.OnPageChangeListener {
        private final Observer<? super Integer> observer;
        private final ViewPager view;

        Listener(ViewPager viewPager, Observer<? super Integer> observer) {
            this.view = viewPager;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.removeOnPageChangeListener(this);
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (!isDisposed()) {
                this.observer.onNext(Integer.valueOf(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPagerPageSelectedObservable(ViewPager viewPager) {
        this.view = viewPager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public Integer getInitialValue() {
        return Integer.valueOf(this.view.getCurrentItem());
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super Integer> observer) {
        Listener listener = new Listener(this.view, observer);
        observer.onSubscribe(listener);
        this.view.addOnPageChangeListener(listener);
    }
}
