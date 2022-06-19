.class public Le/k/a/c/g0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/t$a;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/g0/t$a;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/d0;->a:Le/k/a/c/g0/t$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/d0;->a:Le/k/a/c/g0/t$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/d0;->a:Le/k/a/c/g0/t$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    instance-of v1, v0, Le/k/a/c/g0/d0;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Le/k/a/c/g0/d0;

    invoke-virtual {v0}, Le/k/a/c/g0/d0;->b()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
