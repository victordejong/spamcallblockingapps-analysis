.class public final Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->g(Ljava/lang/Exception;)Lq3/a/p1;
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
    c = "com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl$logFetchUploadLinksFailed$1"
    f = "VideoCallerIdAnalyticsUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

.field public final synthetic f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/Exception;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->e:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    iput-object p2, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->f:Ljava/lang/Exception;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->e:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->f:Ljava/lang/Exception;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;Ljava/lang/Exception;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->e:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->f:Ljava/lang/Exception;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 5
    new-instance p2, Le/a/k/c/h2/a;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Le/a/k/c/h2/a;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    .line 7
    invoke-static {p2, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->f:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 3
    new-instance p1, Le/a/k/c/h2/a;

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->f:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/a/k/c/h2/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$a;->e:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    .line 4
    iget-object v0, v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;->b:Le/a/q2/a;

    .line 5
    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
