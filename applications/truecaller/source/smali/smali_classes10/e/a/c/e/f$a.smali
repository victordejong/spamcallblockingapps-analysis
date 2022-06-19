.class public final Le/a/c/e/f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/e/f;->j(JLe/a/c/r/j/i;)V
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
    c = "com.truecaller.insights.analytics.SmartCardAnalyticsManagerImpl$addActionDataToItemMap$1"
    f = "SmartCardAnalyticsManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/e/f;

.field public final synthetic f:Le/a/c/r/j/i;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Le/a/c/e/f;Le/a/c/r/j/i;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/e/f$a;->e:Le/a/c/e/f;

    iput-object p2, p0, Le/a/c/e/f$a;->f:Le/a/c/r/j/i;

    iput-wide p3, p0, Le/a/c/e/f$a;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/c/e/f$a;

    iget-object v1, p0, Le/a/c/e/f$a;->e:Le/a/c/e/f;

    iget-object v2, p0, Le/a/c/e/f$a;->f:Le/a/c/r/j/i;

    iget-wide v3, p0, Le/a/c/e/f$a;->g:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/e/f$a;-><init>(Le/a/c/e/f;Le/a/c/r/j/i;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/c/e/f$a;->e:Le/a/c/e/f;

    iget-object v0, p0, Le/a/c/e/f$a;->f:Le/a/c/r/j/i;

    iget-wide v1, p0, Le/a/c/e/f$a;->g:J

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/c/e/f;->c:Ljava/util/Map;

    .line 6
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 7
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/e/f$a;->e:Le/a/c/e/f;

    .line 2
    iget-object p1, p1, Le/a/c/e/f;->c:Ljava/util/Map;

    .line 3
    iget-wide v0, p0, Le/a/c/e/f$a;->g:J

    .line 4
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 5
    iget-object v0, p0, Le/a/c/e/f$a;->f:Le/a/c/r/j/i;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
