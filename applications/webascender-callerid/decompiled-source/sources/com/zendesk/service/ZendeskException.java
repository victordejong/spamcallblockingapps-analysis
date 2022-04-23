package com.zendesk.service;

import p016g.p030k.p034d.C0340e;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskException.class */
public class ZendeskException extends Exception {

    /* renamed from: f */
    private final AbstractC0271a f575f;

    @Override // java.lang.Throwable
    public String toString() {
        AbstractC0271a aVar = this.f575f;
        return String.format("ZendeskException{details=%s,errorResponse=%s,cause=%s}", super.toString(), aVar == null ? "null" : aVar.m596c(), C0340e.m393a(getCause()));
    }
}
