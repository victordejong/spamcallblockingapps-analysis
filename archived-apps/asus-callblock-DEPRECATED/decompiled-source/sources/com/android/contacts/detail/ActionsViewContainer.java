package com.android.contacts.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.widget.AdapterView;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ActionsViewContainer.class */
class ActionsViewContainer extends LinearLayout {
    private ContextMenu.ContextMenuInfo mContextMenuInfo;

    public ActionsViewContainer(Context context) {
        super(context);
    }

    public ActionsViewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionsViewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    public void setPosition(int i) {
        this.mContextMenuInfo = new AdapterView.AdapterContextMenuInfo(this, i, -1L);
    }
}
