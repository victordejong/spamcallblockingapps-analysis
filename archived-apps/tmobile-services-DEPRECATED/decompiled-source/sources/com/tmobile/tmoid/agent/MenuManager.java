package com.tmobile.tmoid.agent;

import android.view.Menu;
import android.view.MenuItem;
import com.tmobile.tmoid.helperlib.C2031R;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/MenuManager.class */
public class MenuManager {
    /* renamed from: a */
    public void m5108a(IAMMainActivity iAMMainActivity, Menu menu) {
        iAMMainActivity.getMenuInflater().inflate(C2031R.C2035menu.menu, menu);
    }

    /* renamed from: b */
    public boolean m5107b(MenuItem menuItem) {
        menuItem.getItemId();
        return false;
    }
}
