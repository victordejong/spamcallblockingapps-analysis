.class public final Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/y2/h;
    .locals 5

    .line 1
    new-instance v0, Le/a/y2/h;

    const-class v1, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    const-wide/16 v1, 0x1

    .line 2
    invoke-static {v1, v2}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v3

    const-string v4, "Duration.standardDays(1)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "interval"

    .line 3
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v3, v0, Le/a/y2/h;->a:Lw3/b/a/i;

    .line 5
    sget-object v3, Ln3/m0/a;->a:Ln3/m0/a;

    invoke-static {v1, v2}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v1

    const-string v2, "Duration.standardHours(1)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Le/a/y2/h;->d(Ln3/m0/a;Lw3/b/a/i;)Le/a/y2/h;

    .line 6
    iget-object v1, v0, Le/a/y2/h;->c:Ln3/m0/d$a;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Ln3/m0/d$a;->a:Z

    .line 8
    iput-boolean v2, v1, Ln3/m0/d$a;->d:Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "InsightsResyncEventLogWorker"

    return-object v0
.end method
