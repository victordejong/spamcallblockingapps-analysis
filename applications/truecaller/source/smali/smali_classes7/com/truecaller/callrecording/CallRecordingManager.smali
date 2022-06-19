.class public interface abstract Lcom/truecaller/callrecording/CallRecordingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/a/e;
.implements Le/a/k0/o/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;,
        Lcom/truecaller/callrecording/CallRecordingManager$Configuration;
    }
.end annotation


# virtual methods
.method public abstract A(Le/a/k0/e;)V
.end method

.method public abstract C(Lcom/truecaller/data/entity/CallRecording;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
.end method

.method public abstract D(Lcom/truecaller/data/entity/Contact;)V
.end method

.method public abstract E()Le/a/k0/e;
.end method

.method public abstract F()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;
.end method

.method public abstract G()V
.end method

.method public abstract a()V
.end method

.method public abstract b()Z
.end method

.method public abstract e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
.end method

.method public abstract getState()Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/k0/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Z
.end method

.method public abstract j(Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;Z)V
.end method

.method public abstract l(Z)V
.end method

.method public abstract m()Z
.end method

.method public abstract p(Ljava/lang/String;)Z
.end method

.method public abstract q()Z
.end method

.method public abstract r(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
.end method

.method public abstract w()Ljava/lang/String;
.end method
