package com.privacystar.core.p011ui.detail_view.settings;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.p001v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.rey.material.widget.Switch;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.settings.SettingsRowFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/SettingsRowFragment.class */
public class SettingsRowFragment extends Fragment {
    private static final String EXTRA_ACTIVE = "settings.row.fragment.active";
    private static final String EXTRA_ID = "settings.row.fragment.mID";
    private static final String EXTRA_MAIN_TITLE = "settings.row.fragment.title.main";
    private static final String EXTRA_SUB_TITLE = "settings.row.fragment.title.sub";
    private SettingsRowAction mAction;
    private Unbinder mBinder;
    private String mID;
    @BindView(C1566R.C1569id.title_text_view)
    TextView mMainTextView;
    @BindView(C1566R.C1569id.sub_text_view)
    TextView mSubTextView;
    @BindView(C1566R.C1569id.setting_item_switch)
    Switch mSwitch;
    private int mMainTitle = -1;
    private int mSubTitle = -1;
    private boolean mActive = false;

    /* renamed from: com.privacystar.core.ui.detail_view.settings.SettingsRowFragment$SettingsRowAction */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/SettingsRowFragment$SettingsRowAction.class */
    public interface SettingsRowAction {
        void settingToggled(String str, boolean z);
    }

    public static SettingsRowFragment newInstance(@StringRes int i, @StringRes int i2, String str) {
        return newInstance(i, i2, false, str);
    }

    public static SettingsRowFragment newInstance(@StringRes int i, @StringRes int i2, boolean z, String str) {
        SettingsRowFragment settingsRowFragment = new SettingsRowFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(EXTRA_MAIN_TITLE, i);
        bundle.putInt(EXTRA_SUB_TITLE, i2);
        bundle.putBoolean(EXTRA_ACTIVE, z);
        bundle.putString(EXTRA_ID, str);
        settingsRowFragment.setArguments(bundle);
        return settingsRowFragment;
    }

    public void changeTextSize() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onCreateView$0$SettingsRowFragment(Switch r7, boolean z) {
        Timber.m28v("Button with ID: %s toggled to %b", this.mID, Boolean.valueOf(z));
        if (this.mAction != null) {
            this.mAction.settingToggled(this.mID, z);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.mMainTitle = arguments.getInt(EXTRA_MAIN_TITLE, -1);
            this.mSubTitle = arguments.getInt(EXTRA_SUB_TITLE, -1);
            this.mActive = arguments.getBoolean(EXTRA_ACTIVE, false);
            this.mID = arguments.getString(EXTRA_ID, "NO ID PROVIDED");
        }
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.settings_toggle_row, viewGroup, false);
        this.mBinder = ButterKnife.bind(this, inflate);
        if (this.mMainTitle != -1) {
            this.mMainTextView.setText(this.mMainTitle);
        }
        if (this.mSubTitle != -1) {
            this.mSubTextView.setText(this.mSubTitle);
        } else {
            this.mSubTextView.setVisibility(8);
        }
        this.mSwitch.setActivated(this.mActive);
        this.mSwitch.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener(this) { // from class: com.privacystar.core.ui.detail_view.settings.SettingsRowFragment$$Lambda$0
            private final SettingsRowFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public void onCheckedChanged(Switch r5, boolean z) {
                this.arg$1.lambda$onCreateView$0$SettingsRowFragment(r5, z);
            }
        });
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mBinder.unbind();
    }

    public void setAction(SettingsRowAction settingsRowAction) {
        this.mAction = settingsRowAction;
    }
}
