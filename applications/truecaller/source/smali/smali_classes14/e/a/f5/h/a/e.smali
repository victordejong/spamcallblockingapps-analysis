.class public final Le/a/f5/h/a/e;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/f5/h/a/d;",
        ">;",
        "Le/a/f5/h/a/e;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Ls1/f0/h;

.field public final d:Le/a/f5/a;

.field public final e:Le/a/f5/i/b;

.field public final f:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/f5/a;Le/a/f5/i/b;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "swishManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishAppDataManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f5/h/a/e;->d:Le/a/f5/a;

    iput-object p2, p0, Le/a/f5/h/a/e;->e:Le/a/f5/i/b;

    iput-object p3, p0, Le/a/f5/h/a/e;->f:Le/a/q2/a;

    .line 2
    new-instance p1, Ls1/f0/h;

    const-string p2, "\\d{0,6}([.,]\\d{0,2})?"

    invoke-direct {p1, p2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/f5/h/a/e;->c:Ls1/f0/h;

    return-void
.end method


# virtual methods
.method public final Hj(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    const-string v0, ","

    const-string v2, "."

    const/4 v3, 0x4

    .line 2
    invoke-static {p1, v0, v2, v1, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/f5/h/a/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/f5/h/a/e;->f:Le/a/q2/a;

    const-string v0, "swishInput"

    const-string v1, "viewId"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Le/a/q2/y0/a/a;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, v0, v2, v2}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    invoke-interface {p1, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
