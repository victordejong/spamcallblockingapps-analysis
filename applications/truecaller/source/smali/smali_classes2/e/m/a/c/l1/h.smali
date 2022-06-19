.class public final synthetic Le/m/a/c/l1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/l1/q$a;

.field public final synthetic b:Le/m/a/c/l1/q;

.field public final synthetic c:Le/m/a/c/l1/p$a;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/p$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/h;->a:Le/m/a/c/l1/q$a;

    iput-object p2, p0, Le/m/a/c/l1/h;->b:Le/m/a/c/l1/q;

    iput-object p3, p0, Le/m/a/c/l1/h;->c:Le/m/a/c/l1/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Le/m/a/c/l1/h;->a:Le/m/a/c/l1/q$a;

    iget-object v1, p0, Le/m/a/c/l1/h;->b:Le/m/a/c/l1/q;

    iget-object v2, p0, Le/m/a/c/l1/h;->c:Le/m/a/c/l1/p$a;

    .line 1
    iget v0, v0, Le/m/a/c/l1/q$a;->a:I

    check-cast v1, Le/m/a/c/b1/a;

    .line 2
    iget-object v3, v1, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 3
    iget-object v4, v3, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    iget-object v5, v2, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    .line 4
    :goto_0
    new-instance v8, Le/m/a/c/b1/a$a;

    if-eqz v7, :cond_1

    iget-object v9, v3, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    goto :goto_1

    :cond_1
    sget-object v9, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    :goto_1
    if-eqz v7, :cond_2

    iget-object v7, v3, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    iget-object v10, v3, Le/m/a/c/b1/a$b;->c:Le/m/a/c/y0$b;

    .line 5
    invoke-virtual {v7, v4, v10}, Le/m/a/c/y0;->f(ILe/m/a/c/y0$b;)Le/m/a/c/y0$b;

    move-result-object v4

    iget v4, v4, Le/m/a/c/y0$b;->b:I

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-direct {v8, v2, v9, v4}, Le/m/a/c/b1/a$a;-><init>(Le/m/a/c/l1/p$a;Le/m/a/c/y0;I)V

    .line 6
    iget-object v4, v3, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, v3, Le/m/a/c/b1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v4, v3, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/b1/a$a;

    iput-object v4, v3, Le/m/a/c/b1/a$b;->d:Le/m/a/c/b1/a$a;

    .line 9
    iget-object v4, v3, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_3

    iget-object v4, v3, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    invoke-virtual {v4}, Le/m/a/c/y0;->p()Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    iget-object v4, v3, Le/m/a/c/b1/a$b;->d:Le/m/a/c/b1/a$a;

    iput-object v4, v3, Le/m/a/c/b1/a$b;->e:Le/m/a/c/b1/a$a;

    .line 11
    :cond_3
    invoke-virtual {v1, v0, v2}, Le/m/a/c/b1/a;->v(ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    .line 12
    iget-object v0, v1, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/b;

    .line 13
    invoke-interface {v1}, Le/m/a/c/b1/b;->g()V

    goto :goto_3

    :cond_4
    return-void
.end method
