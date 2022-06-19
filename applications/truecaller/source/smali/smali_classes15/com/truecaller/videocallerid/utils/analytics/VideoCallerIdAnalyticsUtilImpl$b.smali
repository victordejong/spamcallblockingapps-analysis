.class public final Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->f(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;)Lq3/a/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$logVideoNotShown$1"
    f = "VideoCallerIdAnalyticsUtil.kt"
    l = {
        0xa7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    iput-object p2, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->i:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iput-object p5, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->k:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    iget-object v2, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->i:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iget-object v5, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->k:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->i:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->getValue()Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    .line 6
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->c:Le/a/k/c/q;

    .line 7
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->j:Ljava/lang/String;

    iput v2, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->e:I

    invoke-interface {p1, v1, p0}, Le/a/k/c/q;->f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Le/a/k/c/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result p1

    .line 8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move v5, p1

    .line 10
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    .line 11
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    .line 12
    new-instance v6, Le/a/k/c/h2/e;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->i:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iget-object v2, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$b;->k:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/k/c/h2/e;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v6}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
