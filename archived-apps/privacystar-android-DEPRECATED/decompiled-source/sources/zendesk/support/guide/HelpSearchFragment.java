package zendesk.support.guide;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.app.Fragment;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.zendesk.sdk.C1790R;
import java.util.Collections;
import java.util.List;
import zendesk.commonui.UiConfigUtil;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SearchArticle;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpSearchFragment.class */
public class HelpSearchFragment extends Fragment {
    private HelpSearchRecyclerViewAdapter adapter;
    private HelpCenterProvider helpCenterProvider;
    private RecyclerView recyclerView;
    private List<SearchArticle> searchArticles = Collections.emptyList();
    private String query = "";

    @SuppressLint({"RestrictedApi"})
    public static HelpSearchFragment newInstance(HelpCenterUiConfig helpCenterUiConfig, HelpCenterProvider helpCenterProvider) {
        Bundle bundle = new Bundle();
        UiConfigUtil.addToBundle(bundle, helpCenterUiConfig);
        HelpSearchFragment helpSearchFragment = new HelpSearchFragment();
        helpSearchFragment.setArguments(bundle);
        helpSearchFragment.helpCenterProvider = helpCenterProvider;
        return helpSearchFragment;
    }

    private void setupRecyclerView() {
        HelpCenterUiConfig helpCenterUiConfig = (HelpCenterUiConfig) UiConfigUtil.fromBundle(getArguments(), HelpCenterUiConfig.class);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.adapter = new HelpSearchRecyclerViewAdapter(this.searchArticles, this.query, helpCenterUiConfig, this.helpCenterProvider);
        this.recyclerView.setAdapter(this.adapter);
    }

    public void clearResults() {
        if (this.adapter != null) {
            this.adapter.clearResults();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C1790R.C1794layout.zs_fragment_help, viewGroup, false);
        this.recyclerView = (RecyclerView) inflate.findViewById(C1790R.C1793id.help_center_article_list);
        setupRecyclerView();
        return inflate;
    }

    public void updateResults(List<SearchArticle> list, String str) {
        this.searchArticles = list;
        this.query = str;
        if (this.adapter != null && this.recyclerView != null) {
            this.recyclerView.setVisibility(0);
            this.adapter.update(list, str);
            this.recyclerView.announceForAccessibility(getString(C1790R.string.zs_help_center_search_loaded_accessibility));
        }
    }
}
