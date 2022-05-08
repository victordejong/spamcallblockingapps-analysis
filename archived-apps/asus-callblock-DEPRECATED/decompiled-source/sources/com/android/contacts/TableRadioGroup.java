package com.android.contacts;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.TableLayout;
import android.widget.TableRow;
/* loaded from: classes-dex2jar.jar:com/android/contacts/TableRadioGroup.class */
public class TableRadioGroup extends TableLayout {

    /* renamed from: b  reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f491b;
    private b d;
    private c e;

    /* renamed from: a  reason: collision with root package name */
    private int f490a = -1;
    private boolean c = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/TableRadioGroup$a.class */
    public final class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        /* synthetic */ a(TableRadioGroup tableRadioGroup, byte b2) {
            this();
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!TableRadioGroup.this.c) {
                TableRadioGroup.this.c = true;
                if (TableRadioGroup.this.f490a != -1) {
                    TableRadioGroup.this.a(TableRadioGroup.this.f490a, false);
                }
                TableRadioGroup.this.c = false;
                TableRadioGroup.this.f490a = compoundButton.getId();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/TableRadioGroup$b.class */
    public interface b {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/TableRadioGroup$c.class */
    public final class c implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f494b;

        private c() {
        }

        /* synthetic */ c(TableRadioGroup tableRadioGroup, byte b2) {
            this();
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (view == TableRadioGroup.this && (view2 instanceof TableRow)) {
                TableRow tableRow = (TableRow) view2;
                for (int i = 0; i < tableRow.getChildCount(); i++) {
                    View childAt = tableRow.getChildAt(i);
                    Log.d("TableRadioGroup", "vv : " + childAt.getClass().getName() + ", index : " + i);
                    if (childAt instanceof RadioButton) {
                        if (childAt.getId() == -1) {
                            childAt.setId(childAt.hashCode());
                        }
                        ((RadioButton) childAt).setOnCheckedChangeListener(TableRadioGroup.this.f491b);
                    }
                }
            }
            if (this.f494b != null) {
                this.f494b.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            if (view == TableRadioGroup.this && (view2 instanceof TableRow)) {
                TableRow tableRow = (TableRow) view2;
                for (int i = 0; i < tableRow.getChildCount(); i++) {
                    View childAt = tableRow.getChildAt(i);
                    Log.d("TableRadioGroup", "vv : " + childAt.getClass().getName() + ", index : " + i);
                    if (childAt instanceof RadioButton) {
                        if (childAt.getId() == -1) {
                            childAt.setId(childAt.hashCode());
                        }
                        ((RadioButton) childAt).setOnCheckedChangeListener(null);
                    }
                }
            }
            if (this.f494b != null) {
                this.f494b.onChildViewRemoved(view, view2);
            }
        }
    }

    public TableRadioGroup(Context context) {
        super(context);
        a();
    }

    public TableRadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.f491b = new a(this, (byte) 0);
        this.e = new c(this, (byte) 0);
        super.setOnHierarchyChangeListener(this.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById != null && (findViewById instanceof RadioButton)) {
            ((RadioButton) findViewById).setChecked(z);
        }
    }

    @Override // android.widget.TableLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof TableRow) {
            TableRow tableRow = (TableRow) view;
            for (int i2 = 0; i2 < tableRow.getChildCount(); i2++) {
                View childAt = tableRow.getChildAt(i2);
                if (childAt instanceof RadioButton) {
                    RadioButton radioButton = (RadioButton) childAt;
                    if (radioButton.isChecked()) {
                        this.c = true;
                        if (this.f490a != -1) {
                            a(this.f490a, false);
                        }
                        this.c = false;
                        this.f490a = radioButton.getId();
                    }
                }
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.f490a != -1) {
            this.c = true;
            a(this.f490a, true);
            this.c = false;
        }
    }

    public void setOnCheckedChangeListener(b bVar) {
        this.d = bVar;
    }

    @Override // android.widget.TableLayout, android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.e.f494b = onHierarchyChangeListener;
    }
}
