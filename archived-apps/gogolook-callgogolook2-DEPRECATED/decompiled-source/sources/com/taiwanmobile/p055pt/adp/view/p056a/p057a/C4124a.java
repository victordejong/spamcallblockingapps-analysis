package com.taiwanmobile.p055pt.adp.view.p056a.p057a;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import p081h.p415j.p416a.p417a.p418a.C10611a;
import p081h.p415j.p416a.p417a.p418a.p420d.AbstractC10619b;
import p081h.p415j.p416a.p417a.p418a.p420d.C10618a;
import p081h.p415j.p416a.p417a.p418a.p420d.C10620c;
import p081h.p415j.p416a.p417a.p418a.p420d.C10621d;
import p081h.p415j.p416a.p417a.p418a.p420d.C10624g;
import p081h.p415j.p416a.p417a.p418a.p420d.EnumC10623f;
import p081h.p447o.p448a.p449a.C10831c;
/* renamed from: com.taiwanmobile.pt.adp.view.a.a.a */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a/a.class */
public class C4124a {

    /* renamed from: a */
    public static final String f9818a = "a";

    /* renamed from: b */
    public static Boolean f9819b;

    /* renamed from: c */
    public AbstractC10619b f9820c = null;

    /* renamed from: d */
    public boolean f9821d = false;

    /* renamed from: com.taiwanmobile.pt.adp.view.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/a/a$a.class */
    public interface AbstractC4125a {
        /* renamed from: a */
        void mo29430a();
    }

    /* renamed from: a */
    public static boolean m29667a(Context context) {
        if (f9819b == null) {
            try {
                f9819b = Boolean.valueOf(C10611a.m11206a(C10611a.m11207a(), context));
            } catch (Exception e) {
                String str = f9818a;
                C10831c.m10520b(str, "isOmSdkSupported Exception: " + e.getMessage());
                f9819b = false;
            }
        }
        return f9819b.booleanValue();
    }

    /* renamed from: a */
    public void m29668a() {
        AbstractC10619b bVar = this.f9820c;
        if (bVar != null) {
            bVar.mo11172a();
            this.f9820c = null;
            return;
        }
        C10831c.m10518c(f9818a, "finishAdSession error: AdSession has not been initialized.");
    }

    /* renamed from: a */
    public void m29666a(View view) {
        AbstractC10619b bVar = this.f9820c;
        if (bVar != null) {
            bVar.mo11171a(view);
        } else {
            C10831c.m10518c(f9818a, "addFriendlyObstruction error: AdSession has not been initialized.");
        }
    }

    /* renamed from: a */
    public void m29665a(WebView webView, String str, String str2, String str3) {
        this.f9820c = AbstractC10619b.m11189a(C10620c.m11187a(EnumC10623f.NATIVE, EnumC10623f.NONE, false), C10621d.m11184a(C10624g.m11177a(str, str2), webView, str3));
    }

    /* renamed from: b */
    public void m29664b() {
        AbstractC10619b bVar = this.f9820c;
        if (bVar != null) {
            C10618a.m11190a(bVar).m11191a();
            this.f9821d = true;
            return;
        }
        C10831c.m10518c(f9818a, "impressionOccurred error: AdSession has not been initialized.");
    }

    /* renamed from: b */
    public void m29663b(View view) {
        AbstractC10619b bVar = this.f9820c;
        if (bVar != null) {
            bVar.mo11169b(view);
            this.f9820c.mo11170b();
            return;
        }
        C10831c.m10518c(f9818a, "startAdSession error: AdSession has not been initialized.");
    }

    /* renamed from: b */
    public void m29662b(WebView webView, String str, String str2, String str3) {
        EnumC10623f fVar = EnumC10623f.JAVASCRIPT;
        this.f9820c = AbstractC10619b.m11189a(C10620c.m11187a(fVar, fVar, false), C10621d.m11184a(C10624g.m11177a(str, str2), webView, str3));
    }

    /* renamed from: c */
    public boolean m29661c() {
        return this.f9821d;
    }
}
