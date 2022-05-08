package com.mikepenz.aboutlibraries.p007ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.aboutlibraries.LibsFragmentCompat;
/* renamed from: com.mikepenz.aboutlibraries.ui.LibsSupportFragment */
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/LibsSupportFragment.class */
public class LibsSupportFragment extends Fragment {
    private LibsFragmentCompat libsFragmentCompat = new LibsFragmentCompat();

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.libsFragmentCompat.onCreateView(viewGroup.getContext(), layoutInflater, viewGroup, bundle, getArguments());
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroyView() {
        this.libsFragmentCompat.onDestroyView();
        super.onDestroyView();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.libsFragmentCompat.onViewCreated(view, bundle);
    }
}
