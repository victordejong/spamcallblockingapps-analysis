package com.asus.contacts.fonts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.asus.contacts.fonts.ColorsGrid;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/c.class */
public final class c extends b implements ColorsGrid.a {
    public static String f;
    public static String g;
    public static String h;
    public ColorsGrid.a d;
    public int e = -1;
    private View i;
    private ColorsGrid j;

    public static void a(String str, String str2, String str3) {
        f = str;
        g = str2;
        h = str3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.contacts.fonts.b
    public final void a() {
        super.a();
        this.i = ((LayoutInflater) this.f2638a.getSystemService("layout_inflater")).inflate(2131427585, (ViewGroup) null);
        this.j = (ColorsGrid) this.i.findViewById(2131296866);
        this.j.setType(1);
        this.j.setCallback(this);
        this.j.setSelectedIndex(this.e);
    }

    @Override // com.asus.contacts.fonts.ColorsGrid.a
    public final void a(int i, int i2) {
        this.e = i2;
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        a();
        AlertDialog create = new AlertDialog.Builder(this.f2638a).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.fonts.c.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ColorsGrid.ColorCube colorCube;
                ColorsGrid colorsGrid = c.this.j;
                SharedPreferences.Editor edit = colorsGrid.f.edit();
                if (colorsGrid.e != -1) {
                    edit.putInt(c.f, colorsGrid.e);
                    edit.putInt(c.g, colorsGrid.f2618b);
                    edit.putInt(c.h, colorsGrid.c);
                }
                edit.apply();
                if (c.this.d != null && (colorCube = c.this.j.d) != null) {
                    c.this.d.a(colorCube.f2629a, ((Integer) colorCube.getTag()).intValue());
                }
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.fonts.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setTitle(2131755352).setCancelable(true).create();
        create.setView(this.i, 0, 0, 0, 0);
        return b.a(create, this.f2639b);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        getDialog().getWindow().setLayout((int) this.f2638a.getResources().getDimension(2131100212), -2);
    }
}
