package com.privacystar.core.p011ui.intro;

import android.view.View;
import java.util.HashMap;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/WalkthroughFragmentBlock;", "Lcom/privacystar/core/ui/intro/WalkthroughFragment;", "()V", "getIndex", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.WalkthroughFragmentBlock */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/WalkthroughFragmentBlock.class */
public final class WalkthroughFragmentBlock extends WalkthroughFragment {
    private HashMap _$_findViewCache;

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    protected int getIndex() {
        return 3;
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}
