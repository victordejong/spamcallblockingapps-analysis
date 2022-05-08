package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.SearchView;
import android.widget.TextView;
import com.android.contacts.list.ad;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter.class */
public class ActionBarAdapter implements SearchView.OnCloseListener, SearchView.OnQueryTextListener {
    private static final String EXTRA_KEY_QUERY = "navBar.query";
    private static final String EXTRA_KEY_SEARCH_MODE = "navBar.searchMode";
    private static final String EXTRA_KEY_SELECTED_TAB = "navBar.selectedTab";
    private static final String PERSISTENT_LAST_TAB = "actionBarAdapter.lastTab";
    private final ActionBar mActionBar;
    private final int mActionBarNavigationMode;
    private final Context mContext;
    private int mCurrentTab = 1;
    private Listener mListener;
    private final MyNavigationListener mNavigationListener;
    private final SharedPreferences mPrefs;
    private String mQueryString;
    private boolean mSearchMode;
    private SearchView mSearchView;
    private boolean mShowHomeIcon;
    private boolean mShowTabsAsText;
    private final MyTabListener mTabListener;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter.class */
    private class CustomArrayAdapter extends ArrayAdapter<String> {
        public CustomArrayAdapter(Context context, int i) {
            super(context, i);
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) super.getDropDownView(i, view, viewGroup);
            textView.setTextAppearance(ActionBarAdapter.this.mContext, 2131820838);
            return textView;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) super.getView(i, view, viewGroup);
            textView.setTextAppearance(ActionBarAdapter.this.mContext, 2131820837);
            return textView;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter$Listener.class */
    public interface Listener {

        /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter$Listener$Action.class */
        public static abstract class Action {
            public static final int CHANGE_SEARCH_QUERY = 0;
            public static final int START_SEARCH_MODE = 1;
            public static final int STOP_SEARCH_MODE = 2;
        }

        void onAction(int i);

        void onSelectedTabChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter$MyNavigationListener.class */
    public class MyNavigationListener implements ActionBar.OnNavigationListener {
        public boolean mIgnoreNavigationItemSelected;

        private MyNavigationListener() {
        }

        @Override // android.app.ActionBar.OnNavigationListener
        public boolean onNavigationItemSelected(int i, long j) {
            if (this.mIgnoreNavigationItemSelected) {
                return true;
            }
            ActionBarAdapter.this.setCurrentTab(ActionBarAdapter.this.getTabPositionFromNavigationItemPosition(i));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter$MyTabListener.class */
    public class MyTabListener implements ActionBar.TabListener {
        public boolean mIgnoreTabSelected;

        private MyTabListener() {
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
            if (!this.mIgnoreTabSelected) {
                ActionBarAdapter.this.setCurrentTab(tab.getPosition());
            }
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ActionBarAdapter$TabState.class */
    public interface TabState {
        public static final int ALL = 1;
        public static final int COUNT = 4;
        public static final int DEFAULT = 1;
        public static final int FAVORITES = 2;
        public static final int GROUPS = 0;
        public static final int TOOLPANEL = 3;
    }

    public ActionBarAdapter(Context context, Listener listener, ActionBar actionBar, boolean z) {
        this.mContext = context;
        this.mListener = listener;
        this.mActionBar = actionBar;
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        this.mShowHomeIcon = this.mContext.getResources().getBoolean(2130968600);
        this.mShowTabsAsText = z || this.mContext.getResources().getConfiguration().orientation == 2;
        this.mActionBarNavigationMode = 2;
        this.mTabListener = new MyTabListener();
        this.mNavigationListener = null;
        View inflate = LayoutInflater.from(this.mActionBar.getThemedContext()).inflate(2131427493, (ViewGroup) null);
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(2131100288);
        ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(dimensionPixelSize == 0 ? -1 : dimensionPixelSize, -2);
        this.mSearchView = (SearchView) inflate.findViewById(2131297252);
        this.mSearchView.setIconifiedByDefault(true);
        this.mSearchView.setQueryHint(this.mContext.getString(2131755688));
        this.mSearchView.setOnQueryTextListener(this);
        this.mSearchView.setOnCloseListener(this);
        this.mSearchView.setQuery(this.mQueryString, false);
        this.mActionBar.setCustomView(inflate, layoutParams);
        addTab(0, 2131165404, 2131755455);
        addTab(1, 2131165398, 2131755073);
        addTab(3, 2131165406, 2131755145);
    }

    private void addTab(int i, int i2, int i3) {
        ActionBar.Tab newTab = this.mActionBar.newTab();
        newTab.setTabListener(this.mTabListener);
        if (this.mShowTabsAsText) {
            newTab.setText(i3);
        } else {
            View inflate = ((Activity) this.mContext).getLayoutInflater().inflate(2131427338, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(2131296286);
            if (imageView != null) {
                imageView.setImageResource(i2);
                ((TextView) inflate.findViewById(2131296287)).setText(i3);
            }
            newTab.setCustomView(inflate);
        }
        this.mActionBar.addTab(newTab);
        if (i != newTab.getPosition()) {
            throw new IllegalStateException("Tabs must be created in the right order");
        }
    }

    private int getNavigationItemPositionFromTabPosition(int i) {
        int i2 = 3;
        switch (i) {
            case 0:
                i2 = 2;
                break;
            case 1:
                i2 = 0;
                break;
            case 2:
                i2 = 1;
                break;
            case 3:
                break;
            default:
                throw new IllegalArgumentException("Parameter must be between 0 and " + Integer.toString(3) + " inclusive.");
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTabPositionFromNavigationItemPosition(int i) {
        int i2 = 3;
        switch (i) {
            case 0:
                i2 = 1;
                break;
            case 1:
                i2 = 2;
                break;
            case 2:
                i2 = 0;
                break;
            case 3:
                break;
            default:
                throw new IllegalArgumentException("Parameter must be between 0 and " + Integer.toString(3) + " inclusive.");
        }
        return i2;
    }

    private int loadLastTabPreference() {
        int i = 1;
        try {
            i = this.mPrefs.getInt(PERSISTENT_LAST_TAB, 1);
        } catch (IllegalArgumentException e) {
        }
        return i;
    }

    private void saveLastTabPreference(int i) {
        this.mPrefs.edit().putInt(PERSISTENT_LAST_TAB, i).apply();
    }

    private void setupNavigationList() {
        CustomArrayAdapter customArrayAdapter = new CustomArrayAdapter(this.mContext, 2131427613);
        customArrayAdapter.add(this.mContext.getString(2131755453));
        customArrayAdapter.add(this.mContext.getString(2131755454));
        customArrayAdapter.add(this.mContext.getString(2131755455));
        customArrayAdapter.add(this.mContext.getString(2131755145));
        this.mActionBar.setListNavigationCallbacks(customArrayAdapter, this.mNavigationListener);
    }

    private void setupTabs() {
        addTab(0, 2131165404, 2131755455);
        addTab(1, 2131165398, 2131755453);
        addTab(3, 2131165406, 2131755145);
    }

    private void update() {
        this.mSearchView.isIconified();
        int navigationMode = this.mActionBar.getNavigationMode();
        if (this.mActionBarNavigationMode == 2 && navigationMode != 2) {
            this.mTabListener.mIgnoreTabSelected = true;
            this.mActionBar.setNavigationMode(2);
            this.mActionBar.setSelectedNavigationItem(this.mCurrentTab);
            this.mTabListener.mIgnoreTabSelected = false;
        } else if (this.mActionBarNavigationMode == 1 && navigationMode != 1) {
            this.mNavigationListener.mIgnoreNavigationItemSelected = true;
            this.mActionBar.setNavigationMode(1);
            this.mActionBar.setSelectedNavigationItem(getNavigationItemPositionFromTabPosition(this.mCurrentTab));
            this.mNavigationListener.mIgnoreNavigationItemSelected = false;
        }
        if (this.mSearchMode) {
            setFocusOnSearchView();
            if (this.mListener != null) {
                this.mListener.onAction(1);
            }
        } else {
            this.mActionBar.setTitle((CharSequence) null);
            if (this.mListener != null) {
                this.mListener.onAction(2);
                this.mListener.onSelectedTabChanged();
            }
        }
        updateDisplayOptions();
    }

    private void updateDisplayOptions() {
        int displayOptions = this.mActionBar.getDisplayOptions();
        int i = 8;
        if (this.mShowHomeIcon) {
            i = 10;
        }
        this.mActionBar.setHomeButtonEnabled(this.mSearchMode);
        if ((displayOptions & 30) != i) {
            this.mActionBar.setDisplayOptions(i, 30);
        }
    }

    public void clearFocusOnSearchView() {
        if (isSearchMode() && this.mSearchView != null) {
            this.mSearchView.clearFocus();
        }
    }

    public int getCurrentTab() {
        return this.mCurrentTab;
    }

    public String getQueryString() {
        return this.mSearchMode ? this.mQueryString : null;
    }

    public void initSearchView(View view) {
        this.mSearchView = (SearchView) view;
        this.mSearchView.setQueryHint(this.mContext.getString(2131755688));
        this.mSearchView.setOnQueryTextListener(this);
        this.mSearchView.setQuery(this.mQueryString, false);
    }

    public void initialize(Bundle bundle, ad adVar) {
        if (bundle == null) {
            this.mSearchMode = adVar.e;
            this.mQueryString = adVar.f;
            this.mCurrentTab = loadLastTabPreference();
        } else {
            this.mSearchMode = bundle.getBoolean(EXTRA_KEY_SEARCH_MODE);
            this.mQueryString = bundle.getString(EXTRA_KEY_QUERY);
            this.mCurrentTab = bundle.getInt(EXTRA_KEY_SELECTED_TAB);
        }
        update();
        if (this.mSearchMode && !TextUtils.isEmpty(this.mQueryString)) {
            setQueryString(this.mQueryString);
        }
    }

    public boolean isSearchMode() {
        return this.mSearchMode;
    }

    public boolean isUpShowing() {
        return this.mSearchMode;
    }

    @Override // android.widget.SearchView.OnCloseListener
    public boolean onClose() {
        setSearchMode(false);
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        boolean z = false;
        if (!str.equals(this.mQueryString)) {
            this.mQueryString = str;
            if (!this.mSearchMode) {
                if (!TextUtils.isEmpty(str)) {
                    setSearchMode(true);
                    this.mListener.onAction(0);
                }
            } else if (this.mListener != null) {
                if (!TextUtils.isEmpty(str)) {
                    this.mListener.onAction(0);
                } else {
                    setSearchMode(false);
                }
            }
            z = true;
        }
        return z;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (this.mSearchView == null) {
            return true;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.mContext.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.mSearchView.getWindowToken(), 0);
        }
        this.mSearchView.clearFocus();
        return true;
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(EXTRA_KEY_SEARCH_MODE, this.mSearchMode);
        bundle.putString(EXTRA_KEY_QUERY, this.mQueryString);
        bundle.putInt(EXTRA_KEY_SELECTED_TAB, this.mCurrentTab);
    }

    public void setCurrentTab(int i) {
        setCurrentTab(i, true);
    }

    public void setCurrentTab(int i, boolean z) {
        if (i != this.mCurrentTab) {
            this.mCurrentTab = i;
            this.mSearchView.setFocusable(false);
            this.mSearchView.clearFocus();
            int selectedNavigationIndex = this.mActionBar.getSelectedNavigationIndex();
            switch (this.mActionBar.getNavigationMode()) {
                case 1:
                    if (this.mCurrentTab != getTabPositionFromNavigationItemPosition(selectedNavigationIndex)) {
                        this.mActionBar.setSelectedNavigationItem(getNavigationItemPositionFromTabPosition(this.mCurrentTab));
                        break;
                    }
                    break;
                case 2:
                    if (this.mCurrentTab != selectedNavigationIndex) {
                        this.mActionBar.setSelectedNavigationItem(this.mCurrentTab);
                        break;
                    }
                    break;
            }
            if (z && this.mListener != null) {
                this.mListener.onSelectedTabChanged();
            }
            saveLastTabPreference(this.mCurrentTab);
        }
    }

    public void setFocusOnSearchView() {
        this.mSearchView.requestFocus();
        this.mSearchView.setIconified(false);
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    public void setQueryString(String str) {
        this.mQueryString = str;
        if (this.mSearchView != null) {
            this.mSearchView.setQuery(str, false);
        }
    }

    public void setSearchMode(boolean z) {
        if (this.mSearchMode != z) {
            this.mSearchMode = z;
            update();
            if (this.mSearchView != null) {
                if (this.mSearchMode) {
                    setFocusOnSearchView();
                } else {
                    this.mSearchView.setQuery(null, false);
                }
            }
        } else if (z && this.mSearchView != null) {
            setFocusOnSearchView();
        }
    }
}
