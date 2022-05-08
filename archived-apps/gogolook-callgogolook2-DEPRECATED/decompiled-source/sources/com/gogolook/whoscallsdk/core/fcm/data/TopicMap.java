package com.gogolook.whoscallsdk.core.fcm.data;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020��2\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0012"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/fcm/data/TopicMap;", "", "topics", "", "Lcom/gogolook/whoscallsdk/core/fcm/data/TopicObject;", "(Ljava/util/List;)V", "getTopics", "()Ljava/util/List;", "setTopics", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/fcm/data/TopicMap.class */
public final class TopicMap {
    public List<TopicObject> topics;

    public TopicMap() {
        this(null, 1, null);
    }

    public TopicMap(List<TopicObject> list) {
        C15149k.m377b(list, "topics");
        this.topics = list;
    }

    public /* synthetic */ TopicMap(List list, int i, C15145g gVar) {
        this((i & 1) != 0 ? new ArrayList() : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TopicMap copy$default(TopicMap topicMap, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = topicMap.topics;
        }
        return topicMap.copy(list);
    }

    public final List<TopicObject> component1() {
        return this.topics;
    }

    public final TopicMap copy(List<TopicObject> list) {
        C15149k.m377b(list, "topics");
        return new TopicMap(list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof TopicMap) && C15149k.m384a(this.topics, ((TopicMap) obj).topics);
        }
        return true;
    }

    public final List<TopicObject> getTopics() {
        return this.topics;
    }

    public int hashCode() {
        List<TopicObject> list = this.topics;
        return list != null ? list.hashCode() : 0;
    }

    public final void setTopics(List<TopicObject> list) {
        C15149k.m377b(list, "<set-?>");
        this.topics = list;
    }

    public String toString() {
        return "TopicMap(topics=" + this.topics + ")";
    }
}
