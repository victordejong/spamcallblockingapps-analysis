package com.zendesk.service;

import p046g.p060k.p064d.C2008e;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskException.class */
public class ZendeskException extends Exception {

    /* renamed from: f */
    private final AbstractC1939a f5254f;

    @Override // java.lang.Throwable
    public String toString() {
        AbstractC1939a abstractC1939a = this.f5254f;
        return String.format("ZendeskException{details=%s,errorResponse=%s,cause=%s}", super.toString(), abstractC1939a == null ? "null" : abstractC1939a.m596c(), C2008e.m393a(getCause()));
    }
}
