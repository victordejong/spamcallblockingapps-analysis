.class public final Le/a/c/a/c/f/p;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/c/f/o;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/o;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/p;->b:Le/a/c/a/c/f/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/c/a/c/f/p;->b:Le/a/c/a/c/f/o;

    .line 3
    iget-object p1, p1, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    .line 4
    sget-object v0, Lcom/truecaller/insights/utils/BannerState;->DISMISSED:Lcom/truecaller/insights/utils/BannerState;

    invoke-interface {p1, v0}, Le/a/c/c0/o;->s(Lcom/truecaller/insights/utils/BannerState;)V

    .line 5
    iget-object p1, p0, Le/a/c/a/c/f/p;->b:Le/a/c/a/c/f/o;

    .line 6
    iget-object v0, p1, Le/a/c/a/c/f/o;->d:Le/a/c/e/c;

    .line 7
    invoke-virtual {p1}, Le/a/c/a/c/f/o;->e()Le/a/c/r/d/c;

    move-result-object p1

    const-string v1, "model_download_success"

    invoke-virtual {p1, v1}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 9
    iget-object p1, p0, Le/a/c/a/c/f/p;->b:Le/a/c/a/c/f/o;

    .line 10
    iget-object p1, p1, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/c/c0/o;->o(J)V

    .line 12
    sget-object p1, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->g:Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "re_run_context_translations"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;->c(Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Le/a/c/a/c/f/p;->b:Le/a/c/a/c/f/o;

    .line 14
    iget-object v0, p1, Le/a/c/a/c/f/o;->d:Le/a/c/e/c;

    .line 15
    invoke-virtual {p1}, Le/a/c/a/c/f/o;->e()Le/a/c/r/d/c;

    move-result-object p1

    const-string v1, "model_download_failure"

    invoke-virtual {p1, v1}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 17
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
