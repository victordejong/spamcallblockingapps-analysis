package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDSwitch;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SwitchSettingItem.class */
public class SwitchSettingItem extends LinearLayout {

    /* renamed from: f */
    TextView f14444f;

    /* renamed from: g */
    NameIDSwitch f14445g;

    /* renamed from: h */
    LinearLayout f14446h;
    @Nullable

    /* renamed from: i */
    private String f14447i;

    /* renamed from: j */
    private boolean f14448j;

    /* renamed from: k */
    private CompoundButton.OnCheckedChangeListener f14449k;

    public SwitchSettingItem(Context context) {
        this(context, null);
    }

    public SwitchSettingItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14447i = "";
        this.f14448j = false;
        this.f14449k = new CompoundButton.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.utility.SwitchSettingItem.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                boolean b;
                if (SwitchSettingItem.this.f14447i != null && SwitchSettingItem.this.f14445g.isChecked() != (b = PreferenceUtils.m5395b(SwitchSettingItem.this.f14447i, false))) {
                    SwitchSettingItem.this.f14445g.setOnCheckedChangeListener(null);
                    SwitchSettingItem switchSettingItem = SwitchSettingItem.this;
                    NameIDSwitch nameIDSwitch = switchSettingItem.f14445g;
                    boolean z2 = false;
                    if (b) {
                        z2 = false;
                        if (!switchSettingItem.f14448j) {
                            z2 = true;
                        }
                    }
                    nameIDSwitch.setChecked(z2);
                    SwitchSettingItem.this.f14445g.setOnCheckedChangeListener(this);
                }
            }
        };
        LayoutInflater.from(context).inflate(C1517R.layout.setting_switch_item, (ViewGroup) this, true);
        this.f14444f = (TextView) findViewById(C1517R.C1520id.setting_switch_item_title);
        this.f14445g = (NameIDSwitch) findViewById(C1517R.C1520id.setting_switch_item_switch);
        LinearLayout linearLayout = (LinearLayout) findViewById(C1517R.C1520id.setting_switch_container);
        this.f14446h = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.t1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchSettingItem.this.m5290f(view);
            }
        });
        this.f14445g.setOnCheckedChangeListener(this.f14449k);
    }

    /* renamed from: c */
    public void m5293c() {
        this.f14445g.setOnCheckedChangeListener(null);
        NameIDSwitch nameIDSwitch = this.f14445g;
        nameIDSwitch.setChecked(!nameIDSwitch.isChecked());
        String str = this.f14447i;
        if (str != null) {
            PreferenceUtils.m5386k(str, this.f14445g.isChecked());
        }
        this.f14445g.setOnCheckedChangeListener(this.f14449k);
    }

    /* renamed from: d */
    public void m5292d(boolean z) {
        this.f14448j = z;
    }

    /* renamed from: e */
    public boolean m5291e() {
        return this.f14445g.isChecked();
    }

    /* renamed from: f */
    public /* synthetic */ void m5290f(View view) {
        m5288h();
        m5293c();
    }

    /* renamed from: g */
    public /* synthetic */ void m5289g(View.OnClickListener onClickListener, View view) {
        m5288h();
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Nullable
    public String getPreference() {
        return this.f14447i;
    }

    /* renamed from: h */
    public void m5288h() {
        String str = m5291e() ? "disable_" : "enable_";
        AnalyticsWrapper.m5883E("NotificationsFragment", str + this.f14447i.toLowerCase());
    }

    /* renamed from: i */
    public void m5287i() {
        if (this.f14447i != null) {
            this.f14445g.setOnCheckedChangeListener(null);
            boolean b = PreferenceUtils.m5395b(this.f14447i, false);
            NameIDSwitch nameIDSwitch = this.f14445g;
            boolean z = false;
            if (b) {
                z = false;
                if (!this.f14448j) {
                    z = true;
                }
            }
            nameIDSwitch.setChecked(z);
            this.f14445g.setOnCheckedChangeListener(this.f14449k);
        }
    }

    public void setChecked(boolean z) {
        this.f14445g.setOnCheckedChangeListener(null);
        this.f14445g.setChecked(z && !this.f14448j);
        this.f14445g.setOnCheckedChangeListener(this.f14449k);
    }

    public void setContent(Context context, @StringRes int i, String str) {
        this.f14444f.setText(i);
        this.f14445g.setOnCheckedChangeListener(null);
        this.f14445g.m6258c(i);
        boolean b = PreferenceUtils.m5395b(str, false);
        NameIDSwitch nameIDSwitch = this.f14445g;
        boolean z = false;
        if (b) {
            z = false;
            if (!this.f14448j) {
                z = true;
            }
        }
        nameIDSwitch.setChecked(z);
        this.f14445g.setOnCheckedChangeListener(this.f14449k);
        this.f14447i = str;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable final View.OnClickListener onClickListener) {
        this.f14446h.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.s1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchSettingItem.this.m5289g(onClickListener, view);
            }
        });
    }
}
