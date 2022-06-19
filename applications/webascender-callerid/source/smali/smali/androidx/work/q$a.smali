.class public final Landroidx/work/q$a;
.super Landroidx/work/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/x$a<",
        "Landroidx/work/q$a;",
        "Landroidx/work/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/x$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Landroidx/work/x$a;->c:Landroidx/work/impl/n/p;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/work/impl/n/p;->e(J)V

    return-void
.end method


# virtual methods
.method bridge synthetic c()Landroidx/work/x;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/q$a;->h()Landroidx/work/q;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic d()Landroidx/work/x$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/work/q$a;->i()Landroidx/work/q$a;

    return-object p0
.end method

.method h()Landroidx/work/q;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/work/x$a;->a:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/work/x$a;->c:Landroidx/work/impl/n/p;

    iget-object v0, v0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    .line 2
    invoke-virtual {v0}, Landroidx/work/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/x$a;->c:Landroidx/work/impl/n/p;

    iget-boolean v2, v0, Landroidx/work/impl/n/p;->q:Z

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_3

    iget-object v0, v0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    .line 5
    invoke-virtual {v0}, Landroidx/work/c;->h()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Landroidx/work/q;

    invoke-direct {v0, p0}, Landroidx/work/q;-><init>(Landroidx/work/q$a;)V

    return-object v0
.end method

.method i()Landroidx/work/q$a;
    .locals 0

    return-object p0
.end method
