package com.tmobile.tmoid.helperlib.util;

import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/util/ChainedStringWriter.class */
public class ChainedStringWriter {

    /* renamed from: a */
    StringWriter f14937a = new StringWriter();

    /* renamed from: b */
    PrintWriter f14938b = new PrintWriter(this.f14937a);

    /* renamed from: a */
    public String m4661a() {
        this.f14938b.flush();
        return this.f14937a.toString();
    }

    /* renamed from: b */
    public PrintWriter m4660b() {
        return this.f14938b;
    }

    /* renamed from: c */
    public ChainedStringWriter m4659c(int i) {
        this.f14938b.print(i);
        return this;
    }

    /* renamed from: d */
    public ChainedStringWriter m4658d(long j) {
        this.f14938b.print(j);
        return this;
    }

    /* renamed from: e */
    public ChainedStringWriter m4657e(String str) {
        this.f14938b.print(str);
        return this;
    }

    /* renamed from: f */
    public ChainedStringWriter m4656f(boolean z) {
        this.f14938b.print(z);
        return this;
    }

    /* renamed from: g */
    public ChainedStringWriter m4655g(String str) {
        this.f14938b.println(str);
        return this;
    }
}
