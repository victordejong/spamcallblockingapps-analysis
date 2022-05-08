package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/SearchBar_ViewBinding.class */
public class SearchBar_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SearchBar f12755a;

    @UiThread
    public SearchBar_ViewBinding(SearchBar searchBar, View view) {
        this.f12755a = searchBar;
        searchBar.keywordEdit = (SearchBarEditText) Utils.findRequiredViewAsType(view, R$id.et_search_keyword, "field 'keywordEdit'", SearchBarEditText.class);
        searchBar.voiceButton = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_searchbar_voice_btn, "field 'voiceButton'", ImageView.class);
        searchBar.deleteButton = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_searchbar_delete_btn, "field 'deleteButton'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchBar searchBar = this.f12755a;
        if (searchBar != null) {
            this.f12755a = null;
            searchBar.keywordEdit = null;
            searchBar.voiceButton = null;
            searchBar.deleteButton = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
