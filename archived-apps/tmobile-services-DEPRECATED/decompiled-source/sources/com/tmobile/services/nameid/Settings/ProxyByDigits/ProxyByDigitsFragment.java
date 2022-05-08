package com.tmobile.services.nameid.Settings.ProxyByDigits;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.databinding.FragmentScamShieldFeaturesPageBinding;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\"\u0010\u0014J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010\u001bR\u0016\u0010!\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\u001b¨\u0006#"}, d2 = {"Lcom/tmobile/services/nameid/Settings/ProxyByDigits/ProxyByDigitsFragment;", "Lcom/tmobile/services/nameid/TabFragmentInterface;", "Landroidx/fragment/app/Fragment;", "Lcom/tmobile/services/nameid/NameIDPage;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage;", "Lcom/tmobile/services/nameid/MainActivity$Tabs;", "getTabType", "()Lcom/tmobile/services/nameid/MainActivity$Tabs;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "", "setTitle", "()V", "", "visible", "setVisible", "(Z)V", "Landroid/widget/TextView;", "bodyText", "Landroid/widget/TextView;", "Landroid/widget/Button;", "callButton", "Landroid/widget/Button;", "findAStoreButton", "legalText", "titleText", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/ProxyByDigits/ProxyByDigitsFragment.class */
public final class ProxyByDigitsFragment extends Fragment implements TabFragmentInterface {

    /* renamed from: f */
    private TextView f12788f;

    /* renamed from: g */
    private TextView f12789g;

    /* renamed from: h */
    private Button f12790h;

    /* renamed from: i */
    private TextView f12791i;

    /* renamed from: j */
    private TextView f12792j;

    /* renamed from: k */
    private HashMap f12793k;

    /* renamed from: H0 */
    private final void m7402H0() {
        MainActivity mainActivity;
        if ((getContext() instanceof MainActivity) && (mainActivity = (MainActivity) getContext()) != null && mainActivity.m7571r(mo6305F0())) {
            mainActivity.m7625N0(C1517R.string.scam_shield_features_page_proxy_toolbar_title);
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    @NotNull
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    /* renamed from: G0 */
    public void m7403G0() {
        HashMap hashMap = this.f12793k;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        FragmentScamShieldFeaturesPageBinding H = FragmentScamShieldFeaturesPageBinding.m7658H(inflater);
        Intrinsics.m1831d(H, "FragmentScamShieldFeatur…Binding.inflate(inflater)");
        TextView textView = H.f12609E;
        Intrinsics.m1831d(textView, "binding.scamShieldFeaturesPageTitle");
        this.f12788f = textView;
        TextView textView2 = H.f12606B;
        Intrinsics.m1831d(textView2, "binding.scamShieldFeaturesPageBody");
        this.f12789g = textView2;
        Button button = H.f12607C;
        Intrinsics.m1831d(button, "binding.scamShieldFeaturesPageButton");
        this.f12790h = button;
        TextView textView3 = H.f12605A;
        Intrinsics.m1831d(textView3, "binding.scamShieldFeaturesFindAStore");
        this.f12791i = textView3;
        TextView textView4 = H.f12608D;
        Intrinsics.m1831d(textView4, "binding.scamShieldFeaturesPageLegal");
        this.f12792j = textView4;
        TextView textView5 = this.f12788f;
        if (textView5 != null) {
            textView5.setText(getString(C1517R.string.scam_shield_features_page_proxy_title));
            TextView textView6 = this.f12789g;
            if (textView6 != null) {
                textView6.setText(getString(C1517R.string.proxy_by_digits_body));
                Button button2 = this.f12790h;
                if (button2 != null) {
                    button2.setText(getString(C1517R.string.settings_call_button));
                    TextView textView7 = this.f12791i;
                    if (textView7 != null) {
                        textView7.setText(getString(C1517R.string.settings_find_a_store_button));
                        TextView textView8 = this.f12792j;
                        if (textView8 != null) {
                            textView8.setText(getString(C1517R.string.proxy_by_digits_legal));
                            if (BuildUtils.m5850d()) {
                                View view = H.f12610F;
                                Intrinsics.m1831d(view, "binding.topDivider");
                                view.setVisibility(8);
                            }
                            Button button3 = this.f12790h;
                            if (button3 != null) {
                                button3.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.ProxyByDigits.ProxyByDigitsFragment$onCreateView$1
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        Intent intent = new Intent("android.intent.action.DIAL");
                                        intent.setData(Uri.parse(ProxyByDigitsFragment.this.getString(C1517R.string.scam_shield_features_page_call_uri)));
                                        ProxyByDigitsFragment.this.startActivity(intent);
                                    }
                                });
                                TextView textView9 = this.f12791i;
                                if (textView9 != null) {
                                    textView9.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.ProxyByDigits.ProxyByDigitsFragment$onCreateView$2
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            Context context = ProxyByDigitsFragment.this.getContext();
                                            if (context != null) {
                                                WidgetUtils.m5257P(context, ProxyByDigitsFragment.this.getString(C1517R.string.scam_shield_features_find_a_store_url));
                                            }
                                        }
                                    });
                                    return H.m18610s();
                                }
                                Intrinsics.m1814u("findAStoreButton");
                                throw null;
                            }
                            Intrinsics.m1814u("callButton");
                            throw null;
                        }
                        Intrinsics.m1814u("legalText");
                        throw null;
                    }
                    Intrinsics.m1814u("findAStoreButton");
                    throw null;
                }
                Intrinsics.m1814u("callButton");
                throw null;
            }
            Intrinsics.m1814u("bodyText");
            throw null;
        }
        Intrinsics.m1814u("titleText");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m7403G0();
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            m7402H0();
        }
    }
}
