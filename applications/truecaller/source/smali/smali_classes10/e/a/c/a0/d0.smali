.class public final Le/a/c/a0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/c0;


# instance fields
.field public final a:Le/a/c/c/d/o0;

.field public final b:Le/a/c/c/d/g;

.field public final c:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/c/d/o0;Le/a/c/c/d/g;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "travelDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionStateDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/d0;->a:Le/a/c/c/d/o0;

    iput-object p2, p0, Le/a/c/a0/d0;->b:Le/a/c/c/d/g;

    iput-object p3, p0, Le/a/c/a0/d0;->c:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$f;",
            ">;>;"
        }
    .end annotation

    const-string v0, "loadConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v1

    .line 2
    iget-wide v2, p1, Le/a/c/q/f;->b:J

    .line 3
    invoke-virtual {v1, v2, v3}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    .line 5
    iget-wide v2, p1, Le/a/c/q/f;->c:J

    .line 6
    invoke-virtual {v0, v2, v3}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-boolean v2, p1, Le/a/c/q/f;->a:Z

    const-string v3, "endDateString"

    const-string v4, "startDateString"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 8
    iget-object p1, p0, Le/a/c/a0/d0;->a:Le/a/c/c/d/o0;

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Le/a/c/c/d/o0;->b(Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_1

    .line 11
    iget-object p1, p0, Le/a/c/a0/d0;->a:Le/a/c/c/d/o0;

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Le/a/c/c/d/o0;->a(Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/c/a0/d0;->a:Le/a/c/c/d/o0;

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Le/a/c/c/d/o0;->c(Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 13
    new-instance v1, Le/a/c/a0/d0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/c/a0/d0$a;-><init>(Le/a/c/a0/d0;Ls1/w/d;)V

    invoke-static {p1, v0, v1, v5, v2}, Ls1/a/a/a/v0/f/d;->S0(Lq3/a/x2/f;ILs1/z/b/p;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
