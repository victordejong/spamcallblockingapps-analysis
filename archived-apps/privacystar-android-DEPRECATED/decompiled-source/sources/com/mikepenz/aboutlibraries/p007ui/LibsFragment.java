package com.mikepenz.aboutlibraries.p007ui;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.aboutlibraries.LibsFragmentCompat;
@TargetApi(11)
/* renamed from: com.mikepenz.aboutlibraries.ui.LibsFragment */
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/LibsFragment.class */
public class LibsFragment extends Fragment {
    private LibsFragmentCompat libsFragmentCompat = new LibsFragmentCompat();

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.libsFragmentCompat.onCreateView(viewGroup.getContext(), layoutInflater, viewGroup, bundle, getArguments());
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.libsFragmentCompat.onDestroyView();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.libsFragmentCompat.onViewCreated(view, bundle);
    }
}
