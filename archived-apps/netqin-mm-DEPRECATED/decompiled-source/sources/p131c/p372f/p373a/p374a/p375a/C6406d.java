package p131c.p372f.p373a.p374a.p375a;

import android.app.Activity;
import android.content.Context;
import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import p131c.p372f.p373a.p374a.p375a.C6401c;
import p131c.p372f.p373a.p374a.p375a.C6407e;
import p131c.p372f.p373a.p374a.p375a.p376h.C6416a;
import p131c.p372f.p373a.p374a.p375a.p380l.AbstractC6426b;
import p131c.p372f.p373a.p374a.p375a.p380l.C6425a;
import p131c.p372f.p373a.p374a.p375a.p381m.AbstractC6427a;
import p131c.p372f.p373a.p374a.p375a.p385n.C6454b;
/* renamed from: c.f.a.a.a.d */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/d.class */
public class C6406d implements C6401c.AbstractC6403b, C6407e.AbstractC6409b, AbstractC6426b {

    /* renamed from: a */
    public static C6406d f20077a = new C6406d();

    /* renamed from: b */
    public static Context f20078b;

    /* renamed from: e */
    public static C6406d m20955e() {
        return f20077a;
    }

    /* renamed from: a */
    public InternalAvidAdSession m20959a(String str) {
        return C6425a.m20900d().m20903a(str);
    }

    /* renamed from: a */
    public void m20962a(Activity activity) {
        C6416a.m20917c().m20922a(activity);
    }

    /* renamed from: a */
    public void m20961a(Context context) {
        if (f20078b == null) {
            f20078b = context.getApplicationContext();
            C6407e.m20944g().m20953a(f20078b);
            C6425a.m20900d().m20905a(this);
            C6454b.m20836a(f20078b);
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p380l.AbstractC6426b
    /* renamed from: a */
    public void mo20899a(C6425a aVar) {
        if (!aVar.m20902b() || !C6399a.m20983b()) {
            m20956d();
        } else {
            m20957c();
        }
    }

    /* renamed from: a */
    public void m20960a(AbstractC6427a aVar, InternalAvidAdSession internalAvidAdSession) {
        C6425a.m20900d().m20904a(aVar, internalAvidAdSession);
    }

    /* renamed from: a */
    public final boolean m20963a() {
        return !C6425a.m20900d().m20901c();
    }

    /* renamed from: b */
    public final void m20958b() {
        C6425a.m20900d().m20905a((AbstractC6426b) null);
        for (InternalAvidAdSession internalAvidAdSession : C6425a.m20900d().m20906a()) {
            internalAvidAdSession.m5450c().m20863e();
        }
        C6425a.m20900d().m20905a(this);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p380l.AbstractC6426b
    /* renamed from: b */
    public void mo20898b(C6425a aVar) {
        if (!aVar.m20901c() && !C6399a.m20983b()) {
            C6401c.m20969d().m20975a(this);
            C6401c.m20969d().m20976a(f20078b);
        }
    }

    /* renamed from: c */
    public final void m20957c() {
        C6407e.m20944g().m20952a(this);
        C6407e.m20944g().m20947d();
        if (C6407e.m20944g().m20954a()) {
            C6410f.m20927l().m20934e();
        }
    }

    /* renamed from: d */
    public final void m20956d() {
        C6416a.m20917c().m20923a();
        C6410f.m20927l().m20932g();
        C6407e.m20944g().m20946e();
        C6401c.m20969d().m20971c();
        f20078b = null;
    }

    @Override // p131c.p372f.p373a.p374a.p375a.C6407e.AbstractC6409b
    public void onAppStateChanged(boolean z) {
        if (z) {
            C6410f.m20927l().m20934e();
        } else {
            C6410f.m20927l().m20935d();
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.C6401c.AbstractC6403b
    public void onAvidLoaded() {
        if (m20963a()) {
            m20958b();
            if (C6425a.m20900d().m20902b()) {
                m20957c();
            }
        }
    }
}
