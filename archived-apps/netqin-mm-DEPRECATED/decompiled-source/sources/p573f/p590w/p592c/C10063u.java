package p573f.p590w.p592c;

import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference2;
import kotlin.jvm.internal.PropertyReference0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference2;
import p573f.p574a0.AbstractC9870c;
import p573f.p574a0.AbstractC9871d;
import p573f.p574a0.AbstractC9872e;
import p573f.p574a0.AbstractC9875g;
import p573f.p574a0.AbstractC9877h;
import p573f.p574a0.AbstractC9879i;
import p573f.p574a0.AbstractC9883k;
import p573f.p574a0.AbstractC9885l;
import p573f.p574a0.AbstractC9887m;
/* renamed from: f.w.c.u */
/* loaded from: classes2-dex2jar.jar:f/w/c/u.class */
public class C10063u {
    /* renamed from: a */
    public AbstractC9870c m1618a(Class cls) {
        return new C10055m(cls);
    }

    /* renamed from: a */
    public AbstractC9871d m1617a(Class cls, String str) {
        return new C10061s(cls, str);
    }

    /* renamed from: a */
    public AbstractC9872e m1616a(FunctionReference functionReference) {
        return functionReference;
    }

    /* renamed from: a */
    public AbstractC9875g m1614a(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    /* renamed from: a */
    public AbstractC9877h m1613a(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    /* renamed from: a */
    public AbstractC9879i m1612a(MutablePropertyReference2 mutablePropertyReference2) {
        return mutablePropertyReference2;
    }

    /* renamed from: a */
    public AbstractC9883k m1611a(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    /* renamed from: a */
    public AbstractC9885l m1610a(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    /* renamed from: a */
    public AbstractC9887m m1609a(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }

    /* renamed from: a */
    public String m1619a(AbstractC10058p pVar) {
        String obj = pVar.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    /* renamed from: a */
    public String m1615a(Lambda lambda) {
        return m1619a((AbstractC10058p) lambda);
    }
}
