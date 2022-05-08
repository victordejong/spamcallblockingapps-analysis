package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.BindView;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/SearchActionBar.class */
public class SearchActionBar extends RelativeLayout {
    @BindView(R$id.iv_searchbar_delete_btn)
    public ImageView deleteButton;
    @BindView(R$id.et_search_keyword)
    public SearchBarEditText keywordEdit;
    @BindView(R$id.rl_searchbar_drawer_icons)
    public RelativeLayout mDrawerIcons;
    @BindView(R$id.ll_empty)
    public View mEmptyView;
    @BindView(R$id.iv_searchbar_voice_btn)
    public ImageView voiceButton;
}
