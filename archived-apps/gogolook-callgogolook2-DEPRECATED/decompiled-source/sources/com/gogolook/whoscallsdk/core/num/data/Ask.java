package com.gogolook.whoscallsdk.core.num.data;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\bJ\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J3\u0010\f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0006HÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/Ask;", "", "ask_times", "", "name", "", "", "spam", "(ILjava/util/List;Ljava/util/List;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/Ask.class */
public final class Ask {
    public int ask_times;
    public List<String> name;
    public List<String> spam;

    public Ask() {
        this(0, null, null, 7, null);
    }

    public Ask(int i, List<String> list, List<String> list2) {
        C15149k.m377b(list, "name");
        C15149k.m377b(list2, "spam");
        this.ask_times = i;
        this.name = list;
        this.spam = list2;
    }

    public /* synthetic */ Ask(int i, List list, List list2, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 1 : i, (i2 & 2) != 0 ? new ArrayList() : list, (i2 & 4) != 0 ? new ArrayList() : list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Ask copy$default(Ask ask, int i, List list, List list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = ask.ask_times;
        }
        if ((i2 & 2) != 0) {
            list = ask.name;
        }
        if ((i2 & 4) != 0) {
            list2 = ask.spam;
        }
        return ask.copy(i, list, list2);
    }

    public final int component1() {
        return this.ask_times;
    }

    public final List<String> component2() {
        return this.name;
    }

    public final List<String> component3() {
        return this.spam;
    }

    public final Ask copy(int i, List<String> list, List<String> list2) {
        C15149k.m377b(list, "name");
        C15149k.m377b(list2, "spam");
        return new Ask(i, list, list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ask)) {
            return false;
        }
        Ask ask = (Ask) obj;
        return (this.ask_times == ask.ask_times) && C15149k.m384a(this.name, ask.name) && C15149k.m384a(this.spam, ask.spam);
    }

    public int hashCode() {
        int i = this.ask_times;
        List<String> list = this.name;
        int i2 = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.spam;
        if (list2 != null) {
            i2 = list2.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        return "Ask(ask_times=" + this.ask_times + ", name=" + this.name + ", spam=" + this.spam + ")";
    }
}
