package gogolook.callgogolook2.gson;

import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B5\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0004HÆ\u0003J9\u0010\u0010\u001a\u00020��2\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\u000b¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/gson/RuleData;", "", "keywordList", "", "", "patternList", "action", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getAction", "()Ljava/lang/String;", "getKeywordList", "()Ljava/util/List;", "getPatternList", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RuleData.class */
public final class RuleData {
    @AbstractC10120c("action")
    public final String action;
    @AbstractC10120c("keywords")
    public final List<String> keywordList;
    @AbstractC10120c("patterns")
    public final List<String> patternList;

    public RuleData() {
        this(null, null, null, 7, null);
    }

    public RuleData(List<String> list, List<String> list2, String str) {
        this.keywordList = list;
        this.patternList = list2;
        this.action = str;
    }

    public /* synthetic */ RuleData(List list, List list2, String str, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : list2, (i & 4) != 0 ? null : str);
    }

    /* renamed from: a */
    public final String m28194a() {
        return this.action;
    }

    /* renamed from: b */
    public final List<String> m28193b() {
        return this.keywordList;
    }

    /* renamed from: c */
    public final List<String> m28192c() {
        return this.patternList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RuleData)) {
            return false;
        }
        RuleData ruleData = (RuleData) obj;
        return C15149k.m384a(this.keywordList, ruleData.keywordList) && C15149k.m384a(this.patternList, ruleData.patternList) && C15149k.m384a((Object) this.action, (Object) ruleData.action);
    }

    public int hashCode() {
        List<String> list = this.keywordList;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.patternList;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        String str = this.action;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "RuleData(keywordList=" + this.keywordList + ", patternList=" + this.patternList + ", action=" + this.action + ")";
    }
}
