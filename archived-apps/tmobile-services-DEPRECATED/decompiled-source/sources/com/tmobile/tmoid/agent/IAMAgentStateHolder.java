package com.tmobile.tmoid.agent;

import android.content.Context;
import android.webkit.CookieSyncManager;
import com.tmobile.tmoid.agent.ConfigurationProvider;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMAgentStateHolder.class */
public class IAMAgentStateHolder {

    /* renamed from: d */
    private static IAMAgentStateHolder f14643d;

    /* renamed from: a */
    private Configuration f14644a;

    /* renamed from: b */
    private IAMAgentCallManager f14645b = new IAMAgentCallManager();

    /* renamed from: c */
    private LoginState f14646c;

    private IAMAgentStateHolder(Context context) {
        this.f14646c = new LoginState(context);
        CookieSyncManager.createInstance(context);
        CookieSyncManager.getInstance().sync();
        ConfigurationProvider.m5172b(context, new ConfigurationProvider.Listener() { // from class: com.tmobile.tmoid.agent.b
            @Override // com.tmobile.tmoid.agent.ConfigurationProvider.Listener
            /* renamed from: a */
            public final void mo4702a(Configuration configuration) {
                IAMAgentStateHolder.this.m5160e(configuration);
            }
        });
    }

    /* renamed from: c */
    public static IAMAgentStateHolder m5162c(Context context) {
        IAMAgentStateHolder iAMAgentStateHolder;
        synchronized (IAMAgentStateHolder.class) {
            try {
                if (f14643d == null) {
                    f14643d = new IAMAgentStateHolder(context);
                }
                iAMAgentStateHolder = f14643d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iAMAgentStateHolder;
    }

    /* renamed from: a */
    public IAMAgentCallManager m5164a() {
        return this.f14645b;
    }

    /* renamed from: b */
    public Configuration m5163b() {
        return this.f14644a;
    }

    /* renamed from: d */
    public LoginState m5161d() {
        return this.f14646c;
    }

    /* renamed from: e */
    public /* synthetic */ void m5160e(Configuration configuration) {
        this.f14644a = configuration;
        this.f14646c.m5113f(configuration);
    }
}
