package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.IFragmentWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/FragmentWrapper.class */
public final class FragmentWrapper extends IFragmentWrapper.Stub {

    /* renamed from: a */
    private Fragment f7027a;

    private FragmentWrapper(Fragment fragment) {
        this.f7027a = fragment;
    }

    public static FragmentWrapper wrap(Fragment fragment) {
        if (fragment != null) {
            return new FragmentWrapper(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final Bundle getArguments() {
        return this.f7027a.getArguments();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int getId() {
        return this.f7027a.getId();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean getRetainInstance() {
        return this.f7027a.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final String getTag() {
        return this.f7027a.getTag();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int getTargetRequestCode() {
        return this.f7027a.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean getUserVisibleHint() {
        return this.f7027a.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isAdded() {
        return this.f7027a.isAdded();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isDetached() {
        return this.f7027a.isDetached();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isHidden() {
        return this.f7027a.isHidden();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isInLayout() {
        return this.f7027a.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isRemoving() {
        return this.f7027a.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isResumed() {
        return this.f7027a.isResumed();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isVisible() {
        return this.f7027a.isVisible();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void setHasOptionsMenu(boolean z) {
        this.f7027a.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void setMenuVisibility(boolean z) {
        this.f7027a.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void setRetainInstance(boolean z) {
        this.f7027a.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void setUserVisibleHint(boolean z) {
        this.f7027a.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void startActivity(Intent intent) {
        this.f7027a.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void startActivityForResult(Intent intent, int i) {
        this.f7027a.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zza(IObjectWrapper iObjectWrapper) {
        this.f7027a.registerForContextMenu((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzae() {
        return ObjectWrapper.wrap(this.f7027a.getActivity());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zzaf() {
        return wrap(this.f7027a.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzag() {
        return ObjectWrapper.wrap(this.f7027a.getResources());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zzah() {
        return wrap(this.f7027a.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzai() {
        return ObjectWrapper.wrap(this.f7027a.getView());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzb(IObjectWrapper iObjectWrapper) {
        this.f7027a.unregisterForContextMenu((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
