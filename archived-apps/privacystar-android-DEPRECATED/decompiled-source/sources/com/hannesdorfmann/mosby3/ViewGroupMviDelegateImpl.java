package com.hannesdorfmann.mosby3;

import android.app.Activity;
import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.View;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ViewGroupMviDelegateImpl.class */
public class ViewGroupMviDelegateImpl<V extends MvpView, P extends MviPresenter<V, ?>> implements ViewGroupMviDelegate<V, P> {
    public static boolean DEBUG = false;
    private static final String DEBUG_TAG = "ViewGroupMviDelegateImp";
    private final Activity activity;
    private ViewGroupMviDelegateCallback<V, P> delegateCallback;
    private final boolean isInEditMode;
    private final boolean keepPresenterDuringScreenOrientationChange;
    private String mosbyViewId;
    private P presenter;

    public ViewGroupMviDelegateImpl(@NonNull View view, @NonNull ViewGroupMviDelegateCallback<V, P> viewGroupMviDelegateCallback, boolean z) {
        if (view == null) {
            throw new NullPointerException("View is null!");
        } else if (viewGroupMviDelegateCallback == null) {
            throw new NullPointerException("MvpDelegateCallback is null!");
        } else {
            this.delegateCallback = viewGroupMviDelegateCallback;
            this.keepPresenterDuringScreenOrientationChange = z;
            this.isInEditMode = view.isInEditMode();
            if (!this.isInEditMode) {
                this.activity = PresenterManager.getActivity(viewGroupMviDelegateCallback.getContext());
            } else {
                this.activity = null;
            }
        }
    }

    private P createViewIdAndCreatePresenter() {
        P createPresenter = this.delegateCallback.createPresenter();
        if (createPresenter == null) {
            throw new NullPointerException("Presenter returned from createPresenter() is null.");
        }
        if (this.keepPresenterDuringScreenOrientationChange) {
            Context context = this.delegateCallback.getContext();
            this.mosbyViewId = UUID.randomUUID().toString();
            PresenterManager.putPresenter(PresenterManager.getActivity(context), this.mosbyViewId, createPresenter);
        }
        return createPresenter;
    }

    @NonNull
    private Context getContext() {
        Context context = this.delegateCallback.getContext();
        if (context != null) {
            return context;
        }
        throw new NullPointerException("Context returned from " + this.delegateCallback + " is null");
    }

    private void restoreSavedState(MosbySavedState mosbySavedState) {
        this.mosbyViewId = mosbySavedState.getMosbyViewId();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f1  */
    @Override // com.hannesdorfmann.mosby3.ViewGroupMviDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hannesdorfmann.mosby3.ViewGroupMviDelegateImpl.onAttachedToWindow():void");
    }

    @Override // com.hannesdorfmann.mosby3.ViewGroupMviDelegate
    public void onDetachedFromWindow() {
        if (!this.isInEditMode) {
            if (!this.keepPresenterDuringScreenOrientationChange) {
                this.presenter.detachView(false);
                if (this.mosbyViewId != null) {
                    PresenterManager.remove(this.activity, this.mosbyViewId);
                }
                this.mosbyViewId = null;
            } else if (!ActivityMviDelegateImpl.retainPresenterInstance(this.keepPresenterDuringScreenOrientationChange, this.activity)) {
                if (DEBUG) {
                    Log.d(DEBUG_TAG, "Detaching View " + this.delegateCallback.getMvpView() + " from Presenter " + this.presenter + " and removing presenter permanently from internal cache because the hosting Activity will be destroyed permanently");
                }
                if (this.mosbyViewId != null) {
                    PresenterManager.remove(this.activity, this.mosbyViewId);
                }
                this.mosbyViewId = null;
                this.presenter.detachView(false);
            } else if (ActivityMviDelegateImpl.retainPresenterInstance(this.keepPresenterDuringScreenOrientationChange, this.activity)) {
                if (DEBUG) {
                    Log.d(DEBUG_TAG, "Detaching View " + this.delegateCallback.getMvpView() + " from Presenter " + this.presenter + " temporarily because of orientation change");
                }
                this.presenter.detachView(true);
            }
        }
    }

    @Override // com.hannesdorfmann.mosby3.ViewGroupMviDelegate
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!this.isInEditMode) {
            if (!(parcelable instanceof MosbySavedState)) {
                this.delegateCallback.superOnRestoreInstanceState(parcelable);
                return;
            }
            MosbySavedState mosbySavedState = (MosbySavedState) parcelable;
            restoreSavedState(mosbySavedState);
            this.delegateCallback.superOnRestoreInstanceState(mosbySavedState.getSuperState());
        }
    }

    @Override // com.hannesdorfmann.mosby3.ViewGroupMviDelegate
    public Parcelable onSaveInstanceState() {
        if (this.isInEditMode) {
            return null;
        }
        Parcelable superOnSaveInstanceState = this.delegateCallback.superOnSaveInstanceState();
        return this.keepPresenterDuringScreenOrientationChange ? new MosbySavedState(superOnSaveInstanceState, this.mosbyViewId) : superOnSaveInstanceState;
    }
}
