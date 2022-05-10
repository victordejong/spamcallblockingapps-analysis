package kotlin.text;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import p573f.p576c0.AbstractC9916h;
import p573f.p576c0.C9917i;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10080c;
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatcherMatchResult.class */
public final class MatcherMatchResult implements AbstractC9916h {

    /* renamed from: a */
    public final Matcher f38755a;

    /* renamed from: b */
    public final CharSequence f38756b;

    public MatcherMatchResult(Matcher matcher, CharSequence charSequence) {
        C10059q.m1637b(matcher, "matcher");
        C10059q.m1637b(charSequence, "input");
        this.f38755a = matcher;
        this.f38756b = charSequence;
        new MatcherMatchResult$groups$1(this);
    }

    @Override // p573f.p576c0.AbstractC9916h
    /* renamed from: a */
    public C10080c mo41a() {
        C10080c b;
        b = C9917i.m1790b(m39b());
        return b;
    }

    /* renamed from: b */
    public final MatchResult m39b() {
        return this.f38755a;
    }

    @Override // p573f.p576c0.AbstractC9916h
    public AbstractC9916h next() {
        AbstractC9916h hVar;
        int end = m39b().end() + (m39b().end() == m39b().start() ? 1 : 0);
        if (end <= this.f38756b.length()) {
            Matcher matcher = this.f38755a.pattern().matcher(this.f38756b);
            C10059q.m1642a((Object) matcher, "matcher.pattern().matcher(input)");
            hVar = C9917i.m1788b(matcher, end, this.f38756b);
        } else {
            hVar = null;
        }
        return hVar;
    }
}
