package com.adbert.p009a.p011b;

import android.content.Context;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.p012c.EnumC1382b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.adbert.a.b.b */
/* loaded from: classes-dex2jar.jar:com/adbert/a/b/b.class */
public class C1377b implements Serializable {

    /* renamed from: a */
    public EnumC1382b f406a = null;

    /* renamed from: b */
    public EnumC1382b f407b = null;

    /* renamed from: c */
    public int f408c = 10000;

    /* renamed from: d */
    public String f409d = "";

    /* renamed from: e */
    public String f410e = "";

    /* renamed from: f */
    public String f411f = "";

    /* renamed from: g */
    public String f412g = "";

    /* renamed from: h */
    public String f413h = "";

    /* renamed from: i */
    public boolean[] f414i = {false, false, false, false, false};

    /* renamed from: j */
    public String[] f415j = {"", "", "", "", ""};

    /* renamed from: k */
    public boolean f416k = false;

    /* renamed from: l */
    public boolean f417l = false;

    /* renamed from: m */
    public boolean f418m = false;

    /* renamed from: n */
    public boolean f419n = false;

    /* renamed from: o */
    public boolean f420o = false;

    /* renamed from: p */
    public boolean f421p = false;

    /* renamed from: q */
    public String f422q = "";

    /* renamed from: r */
    public String f423r = "";

    /* renamed from: s */
    public String f424s = "";

    /* renamed from: t */
    public String f425t = "";

    /* renamed from: u */
    public String f426u = "";

    /* renamed from: v */
    public String f427v = "";

    /* renamed from: w */
    public String f428w = "";

    /* renamed from: x */
    public String f429x = "";

    /* renamed from: y */
    public boolean f430y = false;

    /* renamed from: z */
    public boolean f431z = false;

    /* renamed from: A */
    public boolean f399A = false;

    /* renamed from: B */
    public String f400B = "";

    /* renamed from: C */
    public String f401C = "";

    /* renamed from: D */
    public String f402D = "";

    /* renamed from: E */
    public int f403E = 1;

    /* renamed from: F */
    public List<String> f404F = new ArrayList();

    /* renamed from: G */
    public String f405G = "";

    /* renamed from: a */
    public void m37199a(EnumC1382b bVar, int i) {
        this.f407b = bVar;
        if (i <= 0) {
            this.f406a = bVar;
        } else if (bVar == EnumC1382b.banner) {
            this.f406a = EnumC1382b.banner_web;
        } else if (bVar == EnumC1382b.cpm_banner) {
            this.f406a = EnumC1382b.cpm_web;
        }
    }

    /* renamed from: a */
    public boolean m37200a(Context context) {
        return C1402g.m37145a(context, "android.permission.BLUETOOTH") && C1402g.m37145a(context, "android.permission.BLUETOOTH_ADMIN") && this.f404F.size() > 0;
    }
}
