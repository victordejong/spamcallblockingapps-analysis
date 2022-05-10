package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$CampaignState.class */
public enum CommonTypesProto$CampaignState implements C6381y.AbstractC6384c {
    UNKNOWN_CAMPAIGN_STATE(0),
    DRAFT(1),
    PUBLISHED(2),
    STOPPED(3),
    DELETED(4),
    UNRECOGNIZED(-1);
    
    public static final int DELETED_VALUE = 4;
    public static final int DRAFT_VALUE = 1;
    public static final int PUBLISHED_VALUE = 2;
    public static final int STOPPED_VALUE = 3;
    public static final int UNKNOWN_CAMPAIGN_STATE_VALUE = 0;
    public static final C6381y.AbstractC6385d<CommonTypesProto$CampaignState> internalValueMap = new C6381y.AbstractC6385d<CommonTypesProto$CampaignState>() { // from class: com.google.firebase.inappmessaging.CommonTypesProto$CampaignState.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public CommonTypesProto$CampaignState mo6797a(int i) {
            return CommonTypesProto$CampaignState.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.CommonTypesProto$CampaignState$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$CampaignState$b.class */
    public static final class C7824b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30956a = new C7824b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return CommonTypesProto$CampaignState.forNumber(i) != null;
        }
    }

    CommonTypesProto$CampaignState(int i) {
        this.value = i;
    }

    public static CommonTypesProto$CampaignState forNumber(int i) {
        if (i == 0) {
            return UNKNOWN_CAMPAIGN_STATE;
        }
        if (i == 1) {
            return DRAFT;
        }
        if (i == 2) {
            return PUBLISHED;
        }
        if (i == 3) {
            return STOPPED;
        }
        if (i != 4) {
            return null;
        }
        return DELETED;
    }

    public static C6381y.AbstractC6385d<CommonTypesProto$CampaignState> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7824b.f30956a;
    }

    @Deprecated
    public static CommonTypesProto$CampaignState valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
