package com.gogolook.whoscallsdk.core.num.data;

import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B;\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\u0010\bJ\u0015\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\u0015\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0003J?\u0010\u0016\u001a\u00020��2\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0004HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R&\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006\u001d"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/DataWrapper;", "", "s_info", "", "", "c_info", "Lcom/gogolook/whoscallsdk/core/num/data/CInfo;", "off_info", "(Ljava/util/Map;Lcom/gogolook/whoscallsdk/core/num/data/CInfo;Ljava/util/Map;)V", "getC_info", "()Lcom/gogolook/whoscallsdk/core/num/data/CInfo;", "setC_info", "(Lcom/gogolook/whoscallsdk/core/num/data/CInfo;)V", "getOff_info", "()Ljava/util/Map;", "setOff_info", "(Ljava/util/Map;)V", "getS_info", "setS_info", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/DataWrapper.class */
public final class DataWrapper {
    public CInfo c_info;
    public Map<String, ? extends Object> off_info;
    public Map<String, ? extends Object> s_info;

    public DataWrapper() {
        this(null, null, null, 7, null);
    }

    public DataWrapper(Map<String, ? extends Object> map, CInfo cInfo, Map<String, ? extends Object> map2) {
        C15149k.m377b(map, "s_info");
        C15149k.m377b(cInfo, "c_info");
        C15149k.m377b(map2, "off_info");
        this.s_info = map;
        this.c_info = cInfo;
        this.off_info = map2;
    }

    public /* synthetic */ DataWrapper(Map map, CInfo cInfo, Map map2, int i, C15145g gVar) {
        this((i & 1) != 0 ? new HashMap() : map, (i & 2) != 0 ? new CInfo(null, 0, false, null, false, null, null, null, null, 0, false, null, 0, null, 16383, null) : cInfo, (i & 4) != 0 ? new HashMap() : map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataWrapper copy$default(DataWrapper dataWrapper, Map map, CInfo cInfo, Map map2, int i, Object obj) {
        if ((i & 1) != 0) {
            map = dataWrapper.s_info;
        }
        if ((i & 2) != 0) {
            cInfo = dataWrapper.c_info;
        }
        if ((i & 4) != 0) {
            map2 = dataWrapper.off_info;
        }
        return dataWrapper.copy(map, cInfo, map2);
    }

    public final Map<String, Object> component1() {
        return this.s_info;
    }

    public final CInfo component2() {
        return this.c_info;
    }

    public final Map<String, Object> component3() {
        return this.off_info;
    }

    public final DataWrapper copy(Map<String, ? extends Object> map, CInfo cInfo, Map<String, ? extends Object> map2) {
        C15149k.m377b(map, "s_info");
        C15149k.m377b(cInfo, "c_info");
        C15149k.m377b(map2, "off_info");
        return new DataWrapper(map, cInfo, map2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DataWrapper)) {
            return false;
        }
        DataWrapper dataWrapper = (DataWrapper) obj;
        return C15149k.m384a(this.s_info, dataWrapper.s_info) && C15149k.m384a(this.c_info, dataWrapper.c_info) && C15149k.m384a(this.off_info, dataWrapper.off_info);
    }

    public final CInfo getC_info() {
        return this.c_info;
    }

    public final Map<String, Object> getOff_info() {
        return this.off_info;
    }

    public final Map<String, Object> getS_info() {
        return this.s_info;
    }

    public int hashCode() {
        Map<String, ? extends Object> map = this.s_info;
        int i = 0;
        int hashCode = map != null ? map.hashCode() : 0;
        CInfo cInfo = this.c_info;
        int hashCode2 = cInfo != null ? cInfo.hashCode() : 0;
        Map<String, ? extends Object> map2 = this.off_info;
        if (map2 != null) {
            i = map2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final void setC_info(CInfo cInfo) {
        C15149k.m377b(cInfo, "<set-?>");
        this.c_info = cInfo;
    }

    public final void setOff_info(Map<String, ? extends Object> map) {
        C15149k.m377b(map, "<set-?>");
        this.off_info = map;
    }

    public final void setS_info(Map<String, ? extends Object> map) {
        C15149k.m377b(map, "<set-?>");
        this.s_info = map;
    }

    public String toString() {
        return "DataWrapper(s_info=" + this.s_info + ", c_info=" + this.c_info + ", off_info=" + this.off_info + ")";
    }
}
