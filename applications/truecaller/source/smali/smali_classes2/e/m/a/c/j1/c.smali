.class public final synthetic Le/m/a/c/j1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Le/m/a/c/j1/g;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/j1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/j1/c;->a:Le/m/a/c/j1/g;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Le/m/a/c/j1/c;->a:Le/m/a/c/j1/g;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/j1/g$b;

    .line 4
    iget-object v1, p1, Le/m/a/c/j1/g$b;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/m/a/c/j1/g;->l:Ljava/util/List;

    .line 5
    iget-object v1, p1, Le/m/a/c/j1/g$b;->a:Le/m/a/c/j1/f;

    .line 6
    invoke-virtual {v0}, Le/m/a/c/j1/g;->c()Z

    move-result v3

    .line 7
    iget-boolean p1, p1, Le/m/a/c/j1/g$b;->b:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, v0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/g$d;

    .line 9
    invoke-interface {v4, v0, v1}, Le/m/a/c/j1/g$d;->g(Le/m/a/c/j1/g;Le/m/a/c/j1/f;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, v0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/g$d;

    .line 11
    invoke-interface {v4, v0, v1}, Le/m/a/c/j1/g$d;->e(Le/m/a/c/j1/g;Le/m/a/c/j1/f;)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {v0}, Le/m/a/c/j1/g;->a()V

    goto :goto_5

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 14
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 15
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 16
    iget v3, v0, Le/m/a/c/j1/g;->e:I

    sub-int/2addr v3, v1

    iput v3, v0, Le/m/a/c/j1/g;->e:I

    .line 17
    iput p1, v0, Le/m/a/c/j1/g;->f:I

    if-nez p1, :cond_4

    if-nez v3, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 18
    iget-object p1, v0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/j1/g$d;

    .line 19
    invoke-interface {v1, v0}, Le/m/a/c/j1/g$d;->c(Le/m/a/c/j1/g;)V

    goto :goto_3

    .line 20
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 21
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Le/m/a/c/j1/g;->l:Ljava/util/List;

    .line 22
    invoke-virtual {v0}, Le/m/a/c/j1/g;->c()Z

    move-result p1

    .line 23
    iget-object v1, v0, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/j1/g$d;

    .line 24
    invoke-interface {v3, v0}, Le/m/a/c/j1/g$d;->d(Le/m/a/c/j1/g;)V

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {v0}, Le/m/a/c/j1/g;->a()V

    :cond_7
    :goto_5
    return v2
.end method
