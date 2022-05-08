package com.android.contacts.test;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/test/EmptyFragment.class */
public class EmptyFragment extends Fragment {
    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return new FrameLayout(getActivity());
    }
}
