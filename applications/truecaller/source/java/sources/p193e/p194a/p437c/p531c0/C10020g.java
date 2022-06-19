package p193e.p194a.p437c.p531c0;

import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.source.SmartSMSFeatureStatus;
import com.truecaller.insights.source.SourceType;
import java.util.Date;
import java.util.NoSuchElementException;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.c.c0.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/g.class */
public final class C10020g {
    /* renamed from: a */
    public final Long m26909a(Date date) {
        return date != null ? Long.valueOf(date.getTime()) : null;
    }

    /* renamed from: b */
    public final String m26908b(FeedbackType feedbackType) {
        l.e(feedbackType, "feedbackType");
        return feedbackType.name();
    }

    /* renamed from: c */
    public final Date m26907c(Long l) {
        return l == null ? null : new Date(l.longValue());
    }

    /* renamed from: d */
    public final ClassifierType m26906d(int i) {
        Objects.requireNonNull(ClassifierType.Companion);
        ClassifierType[] values = ClassifierType.values();
        for (int i2 = 0; i2 < 4; i2++) {
            ClassifierType classifierType = values[i2];
            if (classifierType.getValue() == i) {
                return classifierType;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    /* renamed from: e */
    public final Transport m26905e(int i) {
        return Transport.Companion.m35284a(i);
    }

    /* renamed from: f */
    public final String m26904f(SmartSMSFeatureStatus smartSMSFeatureStatus) {
        return smartSMSFeatureStatus != null ? smartSMSFeatureStatus.name() : null;
    }

    /* renamed from: g */
    public final String m26903g(SourceType sourceType) {
        return sourceType != null ? sourceType.name() : null;
    }

    /* renamed from: h */
    public final FeedbackType m26902h(String str) {
        l.e(str, "typeString");
        return FeedbackType.valueOf(str);
    }
}
