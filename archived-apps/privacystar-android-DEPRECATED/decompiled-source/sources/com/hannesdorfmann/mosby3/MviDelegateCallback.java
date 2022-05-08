package com.hannesdorfmann.mosby3;

import android.support.annotation.NonNull;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/MviDelegateCallback.class */
public interface MviDelegateCallback<V extends MvpView, P extends MviPresenter<V, ?>> {
    @NonNull
    P createPresenter();

    @NonNull
    V getMvpView();

    void setRestoringViewState(boolean z);
}
