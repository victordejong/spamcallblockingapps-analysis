package com.google.protobuf;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.AbstractC6287c1;
import p131c.p161d.p367h.C6319h0;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/Writer.class */
public interface Writer {

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Writer$FieldOrder.class */
    public enum FieldOrder {
        ASCENDING,
        DESCENDING
    }

    /* renamed from: a */
    FieldOrder mo6838a();

    @Deprecated
    /* renamed from: a */
    void mo6837a(int i) throws IOException;

    /* renamed from: a */
    void mo6836a(int i, double d) throws IOException;

    /* renamed from: a */
    void mo6835a(int i, float f) throws IOException;

    /* renamed from: a */
    void mo6834a(int i, int i2) throws IOException;

    /* renamed from: a */
    void mo6833a(int i, long j) throws IOException;

    /* renamed from: a */
    <K, V> void mo6832a(int i, C6319h0.C6320a<K, V> aVar, Map<K, V> map) throws IOException;

    /* renamed from: a */
    void mo6831a(int i, ByteString byteString) throws IOException;

    /* renamed from: a */
    void mo6830a(int i, Object obj) throws IOException;

    /* renamed from: a */
    void mo6829a(int i, Object obj, AbstractC6287c1 c1Var) throws IOException;

    /* renamed from: a */
    void mo6828a(int i, String str) throws IOException;

    /* renamed from: a */
    void mo6827a(int i, List<String> list) throws IOException;

    /* renamed from: a */
    void mo6826a(int i, List<?> list, AbstractC6287c1 c1Var) throws IOException;

    /* renamed from: a */
    void mo6825a(int i, List<Float> list, boolean z) throws IOException;

    /* renamed from: a */
    void mo6824a(int i, boolean z) throws IOException;

    @Deprecated
    /* renamed from: b */
    void mo6823b(int i) throws IOException;

    /* renamed from: b */
    void mo6822b(int i, int i2) throws IOException;

    /* renamed from: b */
    void mo6821b(int i, long j) throws IOException;

    @Deprecated
    /* renamed from: b */
    void mo6820b(int i, Object obj, AbstractC6287c1 c1Var) throws IOException;

    /* renamed from: b */
    void mo6819b(int i, List<ByteString> list) throws IOException;

    @Deprecated
    /* renamed from: b */
    void mo6818b(int i, List<?> list, AbstractC6287c1 c1Var) throws IOException;

    /* renamed from: b */
    void mo6817b(int i, List<Long> list, boolean z) throws IOException;

    /* renamed from: c */
    void mo6816c(int i, int i2) throws IOException;

    /* renamed from: c */
    void mo6815c(int i, long j) throws IOException;

    /* renamed from: c */
    void mo6814c(int i, List<Long> list, boolean z) throws IOException;

    /* renamed from: d */
    void mo6813d(int i, int i2) throws IOException;

    /* renamed from: d */
    void mo6812d(int i, long j) throws IOException;

    /* renamed from: d */
    void mo6811d(int i, List<Integer> list, boolean z) throws IOException;

    /* renamed from: e */
    void mo6810e(int i, int i2) throws IOException;

    /* renamed from: e */
    void mo6809e(int i, long j) throws IOException;

    /* renamed from: e */
    void mo6808e(int i, List<Long> list, boolean z) throws IOException;

    /* renamed from: f */
    void mo6807f(int i, int i2) throws IOException;

    /* renamed from: f */
    void mo6806f(int i, List<Integer> list, boolean z) throws IOException;

    /* renamed from: g */
    void mo6805g(int i, List<Integer> list, boolean z) throws IOException;

    /* renamed from: h */
    void mo6804h(int i, List<Boolean> list, boolean z) throws IOException;

    /* renamed from: i */
    void mo6803i(int i, List<Integer> list, boolean z) throws IOException;

    /* renamed from: j */
    void mo6802j(int i, List<Long> list, boolean z) throws IOException;

    /* renamed from: k */
    void mo6801k(int i, List<Integer> list, boolean z) throws IOException;

    /* renamed from: l */
    void mo6800l(int i, List<Long> list, boolean z) throws IOException;

    /* renamed from: m */
    void mo6799m(int i, List<Integer> list, boolean z) throws IOException;

    /* renamed from: n */
    void mo6798n(int i, List<Double> list, boolean z) throws IOException;
}
