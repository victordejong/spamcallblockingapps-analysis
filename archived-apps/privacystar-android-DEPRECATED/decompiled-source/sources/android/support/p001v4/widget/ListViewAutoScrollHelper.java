package android.support.p001v4.widget;

import android.support.annotation.NonNull;
import android.widget.ListView;
/* renamed from: android.support.v4.widget.ListViewAutoScrollHelper */
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/ListViewAutoScrollHelper.class */
public class ListViewAutoScrollHelper extends AutoScrollHelper {
    private final ListView mTarget;

    public ListViewAutoScrollHelper(@NonNull ListView listView) {
        super(listView);
        this.mTarget = listView;
    }

    @Override // android.support.p001v4.widget.AutoScrollHelper
    public boolean canTargetScrollHorizontally(int i) {
        return false;
    }

    @Override // android.support.p001v4.widget.AutoScrollHelper
    public boolean canTargetScrollVertically(int i) {
        ListView listView = this.mTarget;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (i > 0) {
            return firstVisiblePosition + childCount < count || listView.getChildAt(childCount - 1).getBottom() > listView.getHeight();
        }
        if (i < 0) {
            return firstVisiblePosition > 0 || listView.getChildAt(0).getTop() < 0;
        }
        return false;
    }

    @Override // android.support.p001v4.widget.AutoScrollHelper
    public void scrollTargetBy(int i, int i2) {
        ListViewCompat.scrollListBy(this.mTarget, i2);
    }
}
