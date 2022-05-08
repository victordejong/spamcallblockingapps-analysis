package com.asus.contacts.fonts;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.asus.contacts.fonts.i;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/FontStyleDialogHelpActivity.class */
public class FontStyleDialogHelpActivity extends Activity implements i.a {

    /* renamed from: a  reason: collision with root package name */
    private i f2635a;

    /* renamed from: b  reason: collision with root package name */
    private String f2636b;
    private Typeface c;
    private e e;
    private float d = 1.0f;
    private int f = -1;

    @Override // com.asus.contacts.fonts.i.a
    public final void a() {
        if (this.f != -1) {
            String a2 = this.e.a(this.f);
            Font b2 = this.e.b(this.f);
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putInt("FontStyleDialogHelpActivity.selected_index", this.f);
            bundle.putString("FontStyleDialogHelpActivity.selected_typeface_description", a2);
            bundle.putString("FontStyleDialogHelpActivity.selected_font_name", b2.c);
            intent.putExtras(bundle);
            setResult(-1, intent);
            Log.v("FontStyleDialogHelpActivity", "description: " + a2);
            Log.v("FontStyleDialogHelpActivity", "font name: " + b2.c);
        } else {
            setResult(0);
        }
        Log.v("FontStyleDialogHelpActivity", "onDismiss, mSelectedIndex: " + this.f);
        finish();
    }

    @Override // com.asus.contacts.fonts.i.a
    public final void a(int i) {
        this.f = i;
        Log.v("FontStyleDialogHelpActivity", "activity onFontDialogChanged, position: " + i);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Bundle extras;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!(intent == null || (extras = intent.getExtras()) == null)) {
            this.f2636b = extras.getString("current_font_style");
            if (this.f2636b != null) {
                this.c = d.a(this, this.f2636b);
            }
            this.d = extras.getFloat("font_scale");
        }
        this.e = new e(this);
        this.f2635a = new i(this.f2636b);
        i iVar = this.f2635a;
        iVar.e = this.e;
        iVar.e.a(iVar);
        this.f2635a.d = this;
        this.f2635a.f2639b = this.c;
        this.f2635a.c = this.d;
        this.f2635a.show(getFragmentManager(), "FontStyleDialog");
        Log.v("FontStyleDialogHelpActivity", "mFontSize: " + this.d + ", mCurrentFontStyle: " + this.f2636b + ", (mCurrentFontStyle != null): " + (this.f2636b != null));
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        e eVar = this.e;
        synchronized (eVar.c) {
            eVar.c.clear();
        }
        e eVar2 = this.e;
        if (eVar2.f2651b != null) {
            try {
                eVar2.f2650a.getApplicationContext().getApplicationContext().unbindService(eVar2.d);
                eVar2.f2651b.b(eVar2.e);
                eVar2.f2651b.g();
            } catch (RemoteException e) {
                Log.w("FontManagerClient", "unBind: " + e.toString());
            } catch (IllegalArgumentException e2) {
            }
        }
        Log.v("FontStyleDialogHelpActivity", "onDestroy");
    }
}
