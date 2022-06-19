.class public final Le/m/d/z/m/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/z/m/j$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/d/z/g/d;

.field public final b:F

.field public c:Le/m/d/z/m/j$a;

.field public d:Le/m/d/z/m/j$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/d/z/n/f;J)V
    .locals 11

    .line 1
    new-instance v8, Le/m/d/z/n/a;

    invoke-direct {v8}, Le/m/d/z/n/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 3
    invoke-static {}, Le/m/d/z/g/d;->e()Le/m/d/z/g/d;

    move-result-object v9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Le/m/d/z/m/j;->c:Le/m/d/z/m/j$a;

    .line 6
    iput-object v1, p0, Le/m/d/z/m/j;->d:Le/m/d/z/m/j$a;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Le/m/d/z/m/j;->e:Z

    const/4 v2, 0x0

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    iput v0, p0, Le/m/d/z/m/j;->b:F

    .line 9
    iput-object v9, p0, Le/m/d/z/m/j;->a:Le/m/d/z/g/d;

    .line 10
    new-instance v10, Le/m/d/z/m/j$a;

    iget-boolean v7, p0, Le/m/d/z/m/j;->e:Z

    const-string v6, "Trace"

    move-object v0, v10

    move-object v1, p2

    move-wide v2, p3

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Le/m/d/z/m/j$a;-><init>(Le/m/d/z/n/f;JLe/m/d/z/n/a;Le/m/d/z/g/d;Ljava/lang/String;Z)V

    iput-object v10, p0, Le/m/d/z/m/j;->c:Le/m/d/z/m/j$a;

    .line 11
    new-instance v10, Le/m/d/z/m/j$a;

    iget-boolean v7, p0, Le/m/d/z/m/j;->e:Z

    const-string v6, "Network"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Le/m/d/z/m/j$a;-><init>(Le/m/d/z/n/f;JLe/m/d/z/n/a;Le/m/d/z/g/d;Ljava/lang/String;Z)V

    iput-object v10, p0, Le/m/d/z/m/j;->d:Le/m/d/z/m/j$a;

    .line 12
    invoke-static {p1}, Le/m/d/z/n/h;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Le/m/d/z/m/j;->e:Z

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sampling bucket ID should be in range [0.0f, 1.0f)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosityCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {p1, v1}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosity(I)Le/m/d/z/o/f;

    move-result-object p1

    sget-object v0, Le/m/d/z/o/f;->c:Le/m/d/z/o/f;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
