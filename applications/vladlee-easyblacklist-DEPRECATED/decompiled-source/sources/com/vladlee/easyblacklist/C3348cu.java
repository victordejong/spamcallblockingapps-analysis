package com.vladlee.easyblacklist;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewpager.widget.ViewPager;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cu */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cu.class */
public final class C3348cu implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ EasyBlacklistActivity f19459a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3348cu(EasyBlacklistActivity easyBlacklistActivity) {
        this.f19459a = easyBlacklistActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        C3454gl glVar;
        C3454gl glVar2;
        ViewPager viewPager;
        Intent intent;
        DrawerLayout drawerLayout = (DrawerLayout) this.f19459a.findViewById(2131296407);
        int i2 = i;
        glVar = this.f19459a.f19254p;
        if (glVar.mo39c() < 4) {
            i2 = i + 1;
        }
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
                glVar2 = this.f19459a.f19254p;
                int c = glVar2.mo39c();
                viewPager = this.f19459a.f19253o;
                if (c >= 4) {
                    viewPager.m6411b(i2);
                    break;
                } else {
                    viewPager.m6411b(i2 - 1);
                    break;
                }
            case 4:
                intent = new Intent(this.f19459a, WhitelistActivity.class);
                this.f19459a.startActivity(intent);
                break;
            case 6:
                intent = new Intent(this.f19459a, SettingsActivity.class);
                this.f19459a.startActivity(intent);
                break;
        }
        if (i2 != 5) {
            drawerLayout.m8045a();
        }
    }
}
