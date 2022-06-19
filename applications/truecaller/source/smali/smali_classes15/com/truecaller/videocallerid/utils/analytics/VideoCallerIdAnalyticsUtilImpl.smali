.class public final Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/h2/d;
.implements Lq3/a/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/q2/a;

.field public final c:Le/a/k/c/q;

.field public final d:Le/a/k/c/r0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/q2/a;Le/a/k/c/q;Le/a/k/c/r0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoPlayerUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->a:Ls1/w/f;

    iput-object p2, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->c:Le/a/k/c/q;

    iput-object p4, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->d:Le/a/k/c/r0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lq3/a/p1;
    .locals 7

    const-string v0, "videoId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$e;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$e;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Ljava/lang/String;)V
    .locals 1

    const-string v0, "onboardingContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/k/c/h2/b;

    invoke-direct {v0, p1, p2}, Le/a/k/c/h2/b;-><init>(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public c(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "playerContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callId"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logging video shown. Context:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " videoId:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " callId:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cache percentage: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object p3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    new-instance v0, Le/a/k/c/h2/i;

    invoke-direct {v0, p1, p2, p4, p5}, Le/a/k/c/h2/i;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public d(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;)V
    .locals 10

    const-string v0, "onboardingContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging upload result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    instance-of v0, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Le/a/k/c/h2/c;

    .line 4
    check-cast p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    .line 5
    iget-object v3, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;->a:Ljava/lang/String;

    .line 6
    iget-object p2, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;->b:Le/a/k/c/r1;

    .line 7
    iget-wide v4, p2, Le/a/k/c/r1;->d:J

    .line 8
    iget-wide v6, p2, Le/a/k/c/r1;->c:J

    .line 9
    sget-object v8, Lcom/truecaller/videocallerid/utils/analytics/UploadResult;->SUCCESS:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    move-object v1, v0

    move-object v2, p1

    .line 10
    invoke-direct/range {v1 .. v8}, Le/a/k/c/h2/c;-><init>(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Ljava/lang/String;JJLcom/truecaller/videocallerid/utils/analytics/UploadResult;)V

    goto :goto_4

    .line 11
    :cond_0
    instance-of v0, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;

    if-eqz v0, :cond_7

    .line 12
    new-instance v0, Le/a/k/c/h2/c;

    .line 13
    check-cast p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;

    .line 14
    iget-object v1, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    move-object v3, v1

    .line 15
    iget-object v1, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;->c:Le/a/k/c/r1;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    .line 16
    iget-wide v6, v1, Le/a/k/c/r1;->d:J

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    if-eqz v1, :cond_3

    .line 17
    iget-wide v1, v1, Le/a/k/c/r1;->c:J

    move-wide v8, v1

    goto :goto_2

    :cond_3
    move-wide v8, v4

    .line 18
    :goto_2
    iget-object p2, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;->a:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 20
    sget-object p2, Lcom/truecaller/videocallerid/utils/analytics/UploadResult;->UPLOAD_FAILED:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    goto :goto_3

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 21
    :cond_5
    sget-object p2, Lcom/truecaller/videocallerid/utils/analytics/UploadResult;->FETCH_UPLOAD_LINKS_FAILED:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    goto :goto_3

    .line 22
    :cond_6
    sget-object p2, Lcom/truecaller/videocallerid/utils/analytics/UploadResult;->READ_FILE_FAILED:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    :goto_3
    move-object v1, v0

    move-object v2, p1

    move-wide v4, v6

    move-wide v6, v8

    move-object v8, p2

    .line 23
    invoke-direct/range {v1 .. v8}, Le/a/k/c/h2/c;-><init>(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Ljava/lang/String;JJLcom/truecaller/videocallerid/utils/analytics/UploadResult;)V

    .line 24
    :goto_4
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void

    .line 25
    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public e(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/a/c/b0;)Lq3/a/p1;
    .locals 9

    const-string v0, "playerContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$c;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$c;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Le/m/a/c/b0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)Lq3/a/p1;
    .locals 9

    const-string v0, "playerContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Exception;)Lq3/a/p1;
    .locals 7

    const-string v0, "ex"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/Exception;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->a:Ls1/w/f;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lq3/a/p1;
    .locals 8

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$d;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$d;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V
    .locals 3

    const-string v0, "onboardingData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;->getContext()Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging video caller id onboarding event id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    new-instance v2, Le/a/k/c/h2/f;

    invoke-direct {v2, v0, p1, p2}, Le/a/k/c/h2/f;-><init>(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    :cond_0
    return-void
.end method
