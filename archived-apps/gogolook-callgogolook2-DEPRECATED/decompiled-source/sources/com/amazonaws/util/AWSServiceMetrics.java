package com.amazonaws.util;

import com.amazonaws.metrics.ServiceMetricType;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSServiceMetrics.class */
public enum AWSServiceMetrics implements ServiceMetricType {
    HttpClientGetConnectionTime("HttpClient");

    AWSServiceMetrics(String str) {
    }
}
