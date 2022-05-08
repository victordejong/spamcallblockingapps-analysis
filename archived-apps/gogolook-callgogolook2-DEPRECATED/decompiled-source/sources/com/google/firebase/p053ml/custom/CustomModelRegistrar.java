package com.google.firebase.p053ml.custom;

import java.util.Arrays;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p271l.C8208k7;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.C8404v6;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p373y.p374a.p377c.C10049d;
import p081h.p203i.p325c.p373y.p378b.C10057b;
import p081h.p203i.p325c.p373y.p378b.C10058c;
import p081h.p203i.p325c.p373y.p378b.C10059d;
import p081h.p203i.p325c.p373y.p378b.C10060e;
/* renamed from: com.google.firebase.ml.custom.CustomModelRegistrar */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/ml/custom/CustomModelRegistrar.class */
public class CustomModelRegistrar implements AbstractC9489h {
    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(C10057b.class);
        a.m15083a(C10058c.f22753a);
        C9480d b = a.m15080b();
        C9480d.C9482b a2 = C9480d.m15099a(C8208k7.class);
        a2.m15082a(C9498n.m15046c(C8386u6.class));
        a2.m15082a(C9498n.m15046c(C8404v6.C8405a.class));
        a2.m15083a(C10060e.f22755a);
        C9480d b2 = a2.m15080b();
        C9480d.C9482b b3 = C9480d.m15093b(C10049d.C10050a.class);
        b3.m15082a(C9498n.m15044d(C8208k7.class));
        b3.m15083a(C10059d.f22754a);
        return Arrays.asList(b, b2, b3.m15080b());
    }
}
