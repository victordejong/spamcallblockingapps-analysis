package com.library.p518ad.data.bean;

import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: com.library.ad.data.bean.PlaceConfig */
/* loaded from: classes2-dex2jar.jar:com/library/ad/data/bean/PlaceConfig.class */
public class PlaceConfig extends BaseBean implements Cloneable {
    public ArrayList<RequestConfig> adList;
    public int model;
    public String placeId;
    public boolean show = false;
    public Long frequency = 0L;
    public String adSyId = "";
    public String testType = "";

    public PlaceConfig clone() {
        try {
            PlaceConfig placeConfig = (PlaceConfig) super.clone();
            placeConfig.adList = (ArrayList) this.adList.clone();
            return placeConfig;
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            throw new AssertionError();
        }
    }

    @Override // com.library.p518ad.data.bean.BaseBean
    public String toString() {
        return String.format("%s show=%s placeId=%s model=%d frequency=%d adSyId=%s testType=%s \n adList=%s", super.toString(), Boolean.valueOf(this.show), this.placeId, Integer.valueOf(this.model), this.frequency, this.adSyId, this.testType, Arrays.toString(this.adList.toArray()));
    }
}
