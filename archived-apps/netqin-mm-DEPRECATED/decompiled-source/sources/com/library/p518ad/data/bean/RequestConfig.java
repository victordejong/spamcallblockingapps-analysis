package com.library.p518ad.data.bean;

import p131c.p396i.p397a.p399f.p400a.C6524b;
/* renamed from: com.library.ad.data.bean.RequestConfig */
/* loaded from: classes2-dex2jar.jar:com/library/ad/data/bean/RequestConfig.class */
public class RequestConfig extends BaseBean implements Comparable<RequestConfig> {
    public int cacheShowTime;
    public long cacheTime;
    public int priority;
    public String source;
    public long timeout;
    public String unitId;
    public int adType = 1;
    public int[] layouts = {0, 1};
    public int layoutType = 0;
    public int clicks = -1;

    public int compareTo(RequestConfig requestConfig) {
        return requestConfig.priority - this.priority;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getKey(String str) {
        return str + "_" + this.unitId;
    }

    @Override // com.library.p518ad.data.bean.BaseBean
    public String toString() {
        return super.toString() + " source=" + this.source + " ,unitId=" + this.unitId + " ,priority = " + this.priority + " ,adTypes =" + C6524b.m20573a(getAdType()) + " ,timeout= " + this.timeout + " ,cacheTime=" + this.cacheTime + " ,cacheShowTime=" + this.cacheShowTime + ",clicks=" + this.clicks + "\n";
    }
}
