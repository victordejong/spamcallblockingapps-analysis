package com.adbert.p009a.p012c;

import android.graphics.Color;
/* renamed from: com.adbert.a.c.d */
/* loaded from: classes-dex2jar.jar:com/adbert/a/c/d.class */
public enum EnumC1384d {
    cpmBg("#CC000000"),
    cpmBgLight("#30000000"),
    endingCardBg("#50000000"),
    videoBg("#50000000");
    

    /* renamed from: e */
    public String f534e;

    EnumC1384d(String str) {
        this.f534e = str;
    }

    /* renamed from: a */
    public int m37188a() {
        return Color.parseColor(this.f534e);
    }
}
