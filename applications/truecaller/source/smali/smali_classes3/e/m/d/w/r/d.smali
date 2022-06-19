.class public abstract Le/m/d/w/r/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/w/r/d$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, " expiresInSecs"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-nez v0, :cond_1

    const-string v2, " tokenCreationEpochInSecs"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()J
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Le/m/d/w/r/c$a;
.end method

.method public abstract g()J
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/d/w/r/d;->f()Le/m/d/w/r/c$a;

    move-result-object v0

    sget-object v1, Le/m/d/w/r/c$a;->e:Le/m/d/w/r/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le/m/d/w/r/a;

    .line 2
    iget-object v0, v0, Le/m/d/w/r/a;->c:Le/m/d/w/r/c$a;

    .line 3
    sget-object v1, Le/m/d/w/r/c$a;->b:Le/m/d/w/r/c$a;

    if-eq v0, v1, :cond_1

    .line 4
    sget-object v1, Le/m/d/w/r/c$a;->a:Le/m/d/w/r/c$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/d/w/r/d;->f()Le/m/d/w/r/c$a;

    move-result-object v0

    sget-object v1, Le/m/d/w/r/c$a;->d:Le/m/d/w/r/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k()Le/m/d/w/r/d$a;
.end method
