.class public final Lo3/b/a/c/c/c$b;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/b/a/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lo3/b/a/b/a;


# direct methods
.method public constructor <init>(Lo3/b/a/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/b/a/c/c/c$b;->a:Lo3/b/a/b/a;

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/v/y0;->onCleared()V

    .line 2
    iget-object v0, p0, Lo3/b/a/c/c/c$b;->a:Lo3/b/a/b/a;

    const-class v1, Lo3/b/a/c/c/c$c;

    .line 3
    invoke-static {v0, v1}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/b/a/c/c/c$c;

    .line 4
    invoke-interface {v0}, Lo3/b/a/c/c/c$c;->b()Lo3/b/a/a;

    move-result-object v0

    .line 5
    check-cast v0, Lo3/b/a/c/c/c$d;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Le/q/f/a/d/a;->a:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Le/q/f/a/d/a;->a:Ljava/lang/Thread;

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Le/q/f/a/d/a;->a:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 10
    iget-object v0, v0, Lo3/b/a/c/c/c$d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/b/a/a$a;

    .line 11
    invoke-interface {v1}, Lo3/b/a/a$a;->a()V

    goto :goto_1

    :cond_2
    return-void

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on the Main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
