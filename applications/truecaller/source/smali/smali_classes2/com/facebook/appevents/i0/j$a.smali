.class public final Lcom/facebook/appevents/i0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/i0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0007J\"\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/appevents/codeless/CodelessMatcher$Companion;",
        "",
        "()V",
        "CURRENT_CLASS_NAME",
        "",
        "PARENT_CLASS_NAME",
        "TAG",
        "codelessMatcher",
        "Lcom/facebook/appevents/codeless/CodelessMatcher;",
        "getInstance",
        "getParameters",
        "Landroid/os/Bundle;",
        "mapping",
        "Lcom/facebook/appevents/codeless/internal/EventBinding;",
        "rootView",
        "Landroid/view/View;",
        "hostView",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/facebook/appevents/i0/j;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/i0/j;->a()Lcom/facebook/appevents/i0/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/facebook/appevents/i0/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/i0/j;-><init>(Ls1/z/c/f;)V

    .line 3
    const-class v1, Lcom/facebook/appevents/i0/j;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    sput-object v0, Lcom/facebook/appevents/i0/j;->h:Lcom/facebook/appevents/i0/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/i0/j;->a()Lcom/facebook/appevents/i0/j;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "rootView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostView"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/facebook/appevents/i0/n/a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "unmodifiableList(parameters)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/i0/n/b;

    .line 4
    iget-object v3, v2, Lcom/facebook/appevents/i0/n/b;->b:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    .line 6
    iget-object v3, v2, Lcom/facebook/appevents/i0/n/b;->a:Ljava/lang/String;

    .line 7
    iget-object v2, v2, Lcom/facebook/appevents/i0/n/b;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v3, v2, Lcom/facebook/appevents/i0/n/b;->c:Ljava/util/List;

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 11
    iget-object v3, v2, Lcom/facebook/appevents/i0/n/b;->d:Ljava/lang/String;

    const-string v6, "relative"

    .line 12
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iget-object v8, v2, Lcom/facebook/appevents/i0/n/b;->c:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v3, "hostView.javaClass.simpleName"

    invoke-static {v11, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    move-object v7, p3

    .line 15
    invoke-static/range {v6 .. v11}, Lcom/facebook/appevents/i0/j$c;->d(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v8, v2, Lcom/facebook/appevents/i0/n/b;->c:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v3, "rootView.javaClass.simpleName"

    invoke-static {v11, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    move-object v7, p2

    .line 18
    invoke-static/range {v6 .. v11}, Lcom/facebook/appevents/i0/j$c;->d(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 19
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/i0/j$b;

    .line 20
    invoke-virtual {v6}, Lcom/facebook/appevents/i0/j$b;->a()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    sget-object v7, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-virtual {v6}, Lcom/facebook/appevents/i0/j$b;->a()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/appevents/i0/n/f;->j(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v5

    :goto_4
    if-eqz v7, :cond_4

    .line 23
    iget-object v2, v2, Lcom/facebook/appevents/i0/n/b;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method
