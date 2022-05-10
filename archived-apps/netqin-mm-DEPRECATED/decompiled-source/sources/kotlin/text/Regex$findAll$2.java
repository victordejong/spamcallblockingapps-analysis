package kotlin.text;

import kotlin.jvm.internal.FunctionReference;
import p573f.p574a0.AbstractC9871d;
import p573f.p576c0.AbstractC9916h;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$findAll$2.class */
public final /* synthetic */ class Regex$findAll$2 extends FunctionReference implements AbstractC10031l<AbstractC9916h, AbstractC9916h> {
    public static final Regex$findAll$2 INSTANCE = new Regex$findAll$2();

    public Regex$findAll$2() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getName() {
        return "next";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final AbstractC9871d getOwner() {
        return C10062t.m1629a(AbstractC9916h.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "next()Lkotlin/text/MatchResult;";
    }

    public final AbstractC9916h invoke(AbstractC9916h hVar) {
        C10059q.m1637b(hVar, "p1");
        return hVar.next();
    }
}
