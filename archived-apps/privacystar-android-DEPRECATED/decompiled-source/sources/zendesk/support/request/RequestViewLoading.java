package zendesk.support.request;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewLoading.class */
class RequestViewLoading extends View implements RequestView {
    public RequestViewLoading(Context context) {
        super(context);
    }

    public RequestViewLoading(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RequestViewLoading(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // zendesk.support.request.RequestView
    public boolean hasUnsavedInput() {
        return false;
    }

    @Override // zendesk.support.request.RequestView
    public boolean inflateMenu(MenuInflater menuInflater, Menu menu) {
        return false;
    }

    @Override // zendesk.support.request.RequestView
    public boolean onOptionsItemClicked(MenuItem menuItem) {
        return false;
    }
}
