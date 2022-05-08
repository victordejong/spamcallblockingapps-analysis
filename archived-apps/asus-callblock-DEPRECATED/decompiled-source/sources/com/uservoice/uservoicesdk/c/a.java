package com.uservoice.uservoicesdk.c;

import android.annotation.SuppressLint;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.ui.ColorfulLinearLayout;
import com.uservoice.uservoicesdk.ui.l;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/c/a.class */
public abstract class a extends com.uservoice.uservoicesdk.activity.a {
    private ListView n;
    public ListAdapter q;
    private Handler t = new Handler();
    private boolean u = false;
    private Runnable v = new Runnable() { // from class: com.uservoice.uservoicesdk.c.a.1
        @Override // java.lang.Runnable
        public final void run() {
            a.this.n.focusableViewAvailable(a.this.n);
        }
    };
    ColorfulLinearLayout r = null;
    TextView s = null;
    private AdapterView.OnItemClickListener w = new AdapterView.OnItemClickListener() { // from class: com.uservoice.uservoicesdk.c.a.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            a.i();
        }
    };

    @SuppressLint({"NewApi"})
    private ViewGroup a(View view) {
        this.r.removeAllViews();
        if (getResources().getIdentifier("windowTranslucentStatus", "attr", "android") != 0) {
            if (this.s == null) {
                this.s = new TextView(this);
                this.s.setHeight(h() + k());
                if (!l.a(g.f4678b)) {
                    this.s.setBackgroundColor(g.f4678b);
                } else {
                    this.s.setBackgroundColor(-16777216);
                }
                getActionBar().setBackgroundDrawable(new ColorDrawable(g.f4678b));
            }
            this.r.addView(this.s);
        } else {
            getActionBar().setBackgroundDrawable(new ColorDrawable(g.f4678b));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getActionBar().setBackgroundDrawable(new ColorDrawable(Color.argb(255, 254, 254, 254)));
        }
        this.r.addView(view);
        return this.r;
    }

    private void g() {
        if (this.n == null) {
            setContentView(d.c.o);
        }
    }

    private int h() {
        int identifier;
        int i = 0;
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        if ((defaultDisplay == null || defaultDisplay.getDisplayId() == 0) && (identifier = getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
            i = getResources().getDimensionPixelSize(identifier);
        }
        return i;
    }

    protected static void i() {
    }

    private int k() {
        TypedValue typedValue = new TypedValue();
        getBaseContext().getTheme().resolveAttribute(16843499, typedValue, true);
        return getResources().getDimensionPixelSize(typedValue.resourceId);
    }

    private void l() {
        if (this.r == null) {
            this.r = new ColorfulLinearLayout(this);
            this.r.setOrientation(1);
            this.r.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public final void a(ListAdapter listAdapter) {
        synchronized (this) {
            g();
            this.q = listAdapter;
            this.n.setAdapter(listAdapter);
            View findViewById = findViewById(d.b.s);
            if (findViewById != null) {
                this.n.setEmptyView(findViewById);
            }
        }
    }

    @Override // com.uservoice.uservoicesdk.activity.a, com.uservoice.uservoicesdk.activity.d
    @SuppressLint({"NewApi"})
    public void d() {
        ViewFlipper viewFlipper = (ViewFlipper) findViewById(d.b.an);
        if (viewFlipper != null) {
            viewFlipper.getChildAt(1).setPaddingRelative(0, k(), 0, 0);
        }
        super.d();
    }

    public final ListView j() {
        g();
        return this.n;
    }

    @Override // android.support.v4.app.i, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.s != null) {
            this.s.setHeight(h() + k());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        View findViewById = findViewById(16908292);
        this.n = (ListView) findViewById(16908298);
        if (this.n == null) {
            throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
        }
        if (findViewById != null) {
            this.n.setEmptyView(findViewById);
        }
        this.n.setOnItemClickListener(this.w);
        if (this.u) {
            a(this.q);
        }
        this.t.post(this.v);
        this.u = true;
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        g();
        super.onRestoreInstanceState(bundle);
    }

    @Override // android.support.v4.app.i, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        l();
        super.setContentView(a(getLayoutInflater().inflate(i, (ViewGroup) this.r, false)));
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        l();
        super.setContentView(a(view));
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        super.setContentView(a(view), layoutParams);
    }
}
