.class public final Le/a/e3/k/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/s/c;


# instance fields
.field public final a:Le/a/e3/k/s/a;

.field public final b:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/e3/k/s/a;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callCacheDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/k/s/d;->a:Le/a/e3/k/s/a;

    iput-object p2, p0, Le/a/e3/k/s/d;->b:Le/a/p5/c;

    return-void
.end method

.method public static final d(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Number;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e3/k/s/d;->a:Le/a/e3/k/s/a;

    new-instance v1, Le/a/e3/k/s/d$c;

    invoke-direct {v1, p0, p1, p2}, Le/a/e3/k/s/d$c;-><init>(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Le/a/e3/k/s/d;->e(Le/a/e3/k/s/a;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lcom/truecaller/data/entity/Number;Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e3/k/s/d;->a:Le/a/e3/k/s/a;

    new-instance v1, Le/a/e3/k/s/d$b;

    invoke-direct {v1, p0, p1, p2}, Le/a/e3/k/s/d$b;-><init>(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;)V

    invoke-virtual {p0, v0, v1}, Le/a/e3/k/s/d;->e(Le/a/e3/k/s/a;Ls1/z/b/l;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/truecaller/data/entity/Number;Ljava/lang/String;Lu3/k0;)V
    .locals 7

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lu3/k0;->b()Lu3/e;

    move-result-object p3

    .line 2
    iget p3, p3, Lu3/e;->c:I

    int-to-long v1, p3

    .line 3
    iget-object p3, p0, Le/a/e3/k/s/d;->a:Le/a/e3/k/s/a;

    new-instance v6, Le/a/e3/k/s/d$a;

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/e3/k/s/d$a;-><init>(JLe/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v6}, Le/a/e3/k/s/d;->e(Le/a/e3/k/s/a;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    return-void
.end method

.method public final e(Le/a/e3/k/s/a;Ls1/z/b/l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/e3/k/s/a;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/e3/k/s/a;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
