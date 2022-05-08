package androidx.browser.browseractions;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.browser.C0157R;
import androidx.core.content.res.ResourcesCompat;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuAdapter.class */
public class BrowserActionsFallbackMenuAdapter extends BaseAdapter {
    public final Context mContext;
    public final List<BrowserActionItem> mMenuItems;

    /* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem.class */
    public static class ViewHolderItem {
        public ImageView mIcon;
        public TextView mText;
    }

    public BrowserActionsFallbackMenuAdapter(List<BrowserActionItem> list, Context context) {
        this.mMenuItems = list;
        this.mContext = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mMenuItems.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mMenuItems.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolderItem viewHolderItem;
        BrowserActionItem browserActionItem = this.mMenuItems.get(i);
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(C0157R.layout.browser_actions_context_menu_row, (ViewGroup) null);
            viewHolderItem = new ViewHolderItem();
            viewHolderItem.mIcon = (ImageView) view.findViewById(C0157R.C0159id.browser_actions_menu_item_icon);
            viewHolderItem.mText = (TextView) view.findViewById(C0157R.C0159id.browser_actions_menu_item_text);
            view.setTag(viewHolderItem);
        } else {
            viewHolderItem = (ViewHolderItem) view.getTag();
        }
        viewHolderItem.mText.setText(browserActionItem.getTitle());
        if (browserActionItem.getIconId() != 0) {
            viewHolderItem.mIcon.setImageDrawable(ResourcesCompat.getDrawable(this.mContext.getResources(), browserActionItem.getIconId(), null));
        } else {
            viewHolderItem.mIcon.setImageDrawable(null);
        }
        return view;
    }
}
