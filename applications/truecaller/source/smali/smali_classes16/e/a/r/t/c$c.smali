.class public Le/a/r/t/c$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/r/t/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r/t/c;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/a/r/t/c$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    .line 3
    iget-object v1, p0, Le/a/r/t/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r/t/c;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 5
    iget-object v2, v1, Le/a/r/t/c;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r/t/b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Page with name \""

    const-string v4, "\" is not registered in this wizard"

    .line 6
    invoke-static {v2, v0, v4}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v5, v2, Le/a/r/t/b;->b:Z

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v1}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v5

    const-string v6, "wizard_StartPage"

    invoke-interface {v5, v6, v0}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-boolean v5, v1, Le/a/r/t/c;->d:Z

    const-string v6, " can lose state"

    const/4 v7, 0x2

    const-string v8, "Wizard. New page: "

    const/4 v9, 0x3

    if-eqz v5, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {v1, v2, p1}, Le/a/r/t/c;->Aa(Le/a/r/t/b;Landroid/os/Bundle;)Ln3/r/a/f0;

    move-result-object v5

    invoke-virtual {v5}, Ln3/r/a/f0;->h()V

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v8, v5, v3

    aput-object v0, v5, v4

    const-string v10, " with state"

    aput-object v10, v5, v7

    .line 11
    invoke-static {v5}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 12
    invoke-static {v5}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v1, v2, p1}, Le/a/r/t/c;->Aa(Le/a/r/t/b;Landroid/os/Bundle;)Ln3/r/a/f0;

    move-result-object p1

    invoke-virtual {p1}, Ln3/r/a/f0;->i()V

    new-array p1, v9, [Ljava/lang/Object;

    aput-object v8, p1, v3

    aput-object v0, p1, v4

    aput-object v6, p1, v7

    .line 14
    invoke-static {p1}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1, v2, p1}, Le/a/r/t/c;->Aa(Le/a/r/t/b;Landroid/os/Bundle;)Ln3/r/a/f0;

    move-result-object p1

    invoke-virtual {p1}, Ln3/r/a/f0;->i()V

    new-array p1, v9, [Ljava/lang/Object;

    aput-object v8, p1, v3

    aput-object v0, p1, v4

    aput-object v6, p1, v7

    .line 16
    invoke-static {p1}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
