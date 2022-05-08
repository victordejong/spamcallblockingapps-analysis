package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricCollector.class */
public abstract class MetricCollector {

    /* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricCollector$Factory.class */
    public interface Factory {
        MetricCollector getInstance();
    }

    static {
        new MetricCollector() { // from class: com.amazonaws.metrics.MetricCollector.1
            @Override // com.amazonaws.metrics.MetricCollector
            public RequestMetricCollector getRequestMetricCollector() {
                return RequestMetricCollector.NONE;
            }

            @Override // com.amazonaws.metrics.MetricCollector
            public ServiceMetricCollector getServiceMetricCollector() {
                return ServiceMetricCollector.NONE;
            }

            @Override // com.amazonaws.metrics.MetricCollector
            public boolean isEnabled() {
                return false;
            }

            @Override // com.amazonaws.metrics.MetricCollector
            public boolean stop() {
                return true;
            }
        };
    }

    public abstract RequestMetricCollector getRequestMetricCollector();

    public abstract ServiceMetricCollector getServiceMetricCollector();

    public abstract boolean isEnabled();

    public abstract boolean stop();
}
