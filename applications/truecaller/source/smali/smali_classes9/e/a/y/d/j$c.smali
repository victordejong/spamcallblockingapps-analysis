.class public final Le/a/y/d/j$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/d/j;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$updateFlashState$1"
    f = "FlashPendingManager.kt"
    l = {
        0xcc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/y/d/j;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/y/d/j;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    iput-object p2, p0, Le/a/y/d/j$c;->g:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$c;

    iget-object v0, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    iget-object v1, p0, Le/a/y/d/j$c;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/d/j$c;-><init>(Le/a/y/d/j;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$c;

    iget-object v0, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    iget-object v1, p0, Le/a/y/d/j$c;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/d/j$c;-><init>(Le/a/y/d/j;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/d/j$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "Failed to Query in Flash"

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/y/d/j$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/y/d/j$c;->g:Ljava/util/List;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/y/g/d;

    .line 7
    iget-boolean v5, v5, Le/a/y/g/d;->c:Z

    .line 8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/y/d/j$c;->g:Ljava/util/List;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/y/g/d;

    .line 13
    iget-boolean v6, v6, Le/a/y/g/d;->c:Z

    xor-int/2addr v6, v3

    .line 14
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_5
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    iget-object v5, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    invoke-static {v5, v4}, Le/a/y/d/j;->d(Le/a/y/d/j;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v5

    iput-object v5, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 17
    iget-object v5, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 18
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 21
    check-cast v8, Le/a/y/g/d;

    .line 22
    iget-object v8, v8, Le/a/y/g/d;->a:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 23
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Le/a/y/d/b;->c:Ljava/lang/String;

    const-string v9, " ( ? )"

    invoke-static {v7, v8, v9}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 25
    :try_start_0
    iget-object v5, v5, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v9, Le/a/y/d/l;->b:Landroid/net/Uri;

    new-array v10, v8, [Ljava/lang/String;

    .line 26
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    check-cast v6, [Ljava/lang/String;

    .line 27
    invoke-virtual {v5, v9, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 28
    :cond_8
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    new-instance v5, Lcom/truecaller/log/UnmutedException$f;

    invoke-direct {v5, v0}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 30
    :goto_3
    iget-object v5, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    invoke-static {v5, v2}, Le/a/y/d/j;->d(Le/a/y/d/j;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v5

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/y/g/d;

    .line 33
    iget-object v10, v10, Le/a/y/g/d;->a:Ljava/lang/String;

    .line 34
    invoke-static {v5, v10}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v10

    .line 35
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 36
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 37
    :cond_a
    new-instance v7, Ls1/z/c/c0;

    invoke-direct {v7}, Ls1/z/c/c0;-><init>()V

    .line 38
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/y/g/d;

    .line 40
    iget-object v11, v11, Le/a/y/g/d;->a:Ljava/lang/String;

    .line 41
    invoke-static {v5, v11}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v3

    .line 42
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 43
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    iput-object v9, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v5, v7, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 46
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/y/g/d;

    .line 47
    iget-object v10, v9, Le/a/y/g/d;->a:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 48
    iget-object v11, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 49
    iget-object v11, v11, Le/a/y/d/j;->b:Ln3/g/f;

    .line 50
    invoke-virtual {v11, v10, v9}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/y/g/d;

    .line 51
    :cond_d
    sget-object v10, Le/a/y/d/l;->b:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 52
    invoke-virtual {v9}, Le/a/y/g/d;->a()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 53
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    .line 54
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 55
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/y/g/d;

    .line 56
    iget-object v9, v6, Le/a/y/g/d;->a:Ljava/lang/String;

    if-eqz v9, :cond_f

    .line 57
    iget-object v10, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 58
    iget-object v10, v10, Le/a/y/d/j;->b:Ln3/g/f;

    .line 59
    invoke-virtual {v10, v9, v6}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/y/g/d;

    .line 60
    :cond_f
    sget-object v9, Le/a/y/d/l;->b:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 61
    sget-object v10, Le/a/y/d/b;->b:Ljava/lang/String;

    new-array v11, v3, [Ljava/lang/String;

    .line 62
    iget-object v12, v6, Le/a/y/g/d;->a:Ljava/lang/String;

    aput-object v12, v11, v8

    .line 63
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 64
    invoke-virtual {v6}, Le/a/y/g/d;->a()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 66
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 67
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/y/g/d;

    .line 68
    iget-object v5, v5, Le/a/y/g/d;->a:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 69
    iget-object v6, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 70
    iget-object v6, v6, Le/a/y/d/j;->b:Ln3/g/f;

    .line 71
    invoke-virtual {v6, v5}, Ln3/g/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 72
    :cond_12
    :try_start_1
    iget-object v4, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 73
    iget-object v4, v4, Le/a/y/d/j;->d:Landroid/content/Context;

    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Le/a/y/d/l;->a:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "com.truecaller.flashsdk.provider"

    :try_start_2
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    const-string v4, "managerContext.contentRe\u2026tch(FLASH_AUTHORITY, ops)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 75
    :catch_1
    new-instance v2, Lcom/truecaller/log/UnmutedException$f;

    invoke-direct {v2, v0}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 76
    :goto_9
    iget-object v0, p0, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 77
    iget-object v0, v0, Le/a/y/d/j;->e:Ls1/w/f;

    .line 78
    new-instance v2, Le/a/y/d/j$c$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v7, v4}, Le/a/y/d/j$c$a;-><init>(Le/a/y/d/j$c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput v3, p0, Le/a/y/d/j$c;->e:I

    invoke-static {v0, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_13

    return-object v1

    .line 79
    :cond_13
    :goto_a
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
