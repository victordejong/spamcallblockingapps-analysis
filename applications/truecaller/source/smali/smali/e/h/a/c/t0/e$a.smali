.class public Le/h/a/c/t0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/t0/e;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Le/h/a/c/t0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/t0/e;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    iput-object p2, p0, Le/h/a/c/t0/e$a;->a:Ljava/util/Map;

    iput-object p3, p0, Le/h/a/c/t0/e$a;->b:Ljava/lang/String;

    iput-object p4, p0, Le/h/a/c/t0/e$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 2
    iget-object v1, v1, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 4
    iget-object v2, v2, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asyncProfileSwitchUser:[profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/h/a/c/t0/e$a;->a:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with Cached GUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v4, p0, Le/h/a/c/t0/e$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 8
    iget-object v4, v4, Le/h/a/c/t0/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NULL and cleverTapID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/h/a/c/t0/e$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 12
    iget-object v1, v1, Le/h/a/c/t0/e;->i:Le/h/a/c/w;

    .line 13
    iget-object v2, v1, Le/h/a/c/w;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    .line 14
    :try_start_1
    iput-boolean v3, v1, Le/h/a/c/w;->e:Z

    .line 15
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 16
    :try_start_2
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 17
    iget-object v1, v1, Le/h/a/c/t0/e;->m:Le/h/a/c/w0/i;

    .line 18
    invoke-virtual {v1, v3}, Le/h/a/c/w0/i;->g(Z)V

    .line 19
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 20
    iget-object v2, v1, Le/h/a/c/t0/e;->c:Le/h/a/c/n0/a;

    .line 21
    iget-object v1, v1, Le/h/a/c/t0/e;->g:Landroid/content/Context;

    .line 22
    sget-object v4, Le/h/a/c/n0/c;->b:Le/h/a/c/n0/c;

    invoke-virtual {v2, v1, v4}, Le/h/a/c/n0/a;->a(Landroid/content/Context;Le/h/a/c/n0/c;)V

    .line 23
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 24
    iget-object v2, v1, Le/h/a/c/t0/e;->c:Le/h/a/c/n0/a;

    .line 25
    iget-object v1, v1, Le/h/a/c/t0/e;->g:Landroid/content/Context;

    .line 26
    sget-object v4, Le/h/a/c/n0/c;->c:Le/h/a/c/n0/c;

    invoke-virtual {v2, v1, v4}, Le/h/a/c/n0/a;->a(Landroid/content/Context;Le/h/a/c/n0/c;)V

    .line 27
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 28
    iget-object v2, v1, Le/h/a/c/t0/e;->j:Le/h/a/c/l0/a;

    .line 29
    iget-object v1, v1, Le/h/a/c/t0/e;->g:Landroid/content/Context;

    .line 30
    invoke-virtual {v2, v1}, Le/h/a/c/l0/a;->a(Landroid/content/Context;)V

    .line 31
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 32
    iget-object v1, v1, Le/h/a/c/t0/e;->l:Le/h/a/c/f0;

    .line 33
    invoke-virtual {v1}, Le/h/a/c/f0;->a()V

    const/4 v1, 0x1

    .line 34
    sput v1, Le/h/a/c/w;->v:I

    .line 35
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 36
    iget-object v2, v2, Le/h/a/c/t0/e;->n:Le/h/a/c/i0;

    .line 37
    invoke-virtual {v2}, Le/h/a/c/i0;->a()V

    .line 38
    iget-object v2, p0, Le/h/a/c/t0/e$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 39
    iget-object v4, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 40
    iget-object v4, v4, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 41
    invoke-virtual {v4, v2}, Le/h/a/c/b0;->c(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 43
    iget-object v2, v2, Le/h/a/c/t0/e;->e:Le/h/a/c/k;

    .line 44
    iget-object v4, p0, Le/h/a/c/t0/e$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Le/h/a/c/k;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 46
    iget-object v4, v2, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 47
    iget-boolean v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    if-eqz v4, :cond_2

    .line 48
    iget-object v2, v2, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 49
    iget-object v4, p0, Le/h/a/c/t0/e$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Le/h/a/c/b0;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, v2, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 51
    invoke-virtual {v2}, Le/h/a/c/b0;->e()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v2, v4}, Le/h/a/c/b0;->c(Ljava/lang/String;)V

    .line 53
    :goto_1
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 54
    iget-object v4, v2, Le/h/a/c/t0/e;->e:Le/h/a/c/k;

    .line 55
    iget-object v2, v2, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 56
    invoke-virtual {v2}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Le/h/a/c/k;->a(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 58
    iget-object v2, v2, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 59
    invoke-virtual {v2}, Le/h/a/c/b0;->q()V

    .line 60
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 61
    iget-object v2, v2, Le/h/a/c/t0/e;->b:Le/h/a/c/f;

    .line 62
    iget-object v4, v2, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-virtual {v4, v3}, Le/h/a/c/w;->d(Z)V

    .line 63
    invoke-virtual {v2}, Le/h/a/c/f;->h()V

    .line 64
    iget-object v2, p0, Le/h/a/c/t0/e$a;->a:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 65
    iget-object v4, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 66
    iget-object v4, v4, Le/h/a/c/t0/e;->b:Le/h/a/c/f;

    .line 67
    invoke-virtual {v4, v2}, Le/h/a/c/f;->o(Ljava/util/Map;)V

    .line 68
    :cond_3
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 69
    iget-object v2, v2, Le/h/a/c/t0/e;->m:Le/h/a/c/w0/i;

    .line 70
    invoke-virtual {v2, v1}, Le/h/a/c/w0/i;->g(Z)V

    .line 71
    sget-object v1, Le/h/a/c/t0/e;->q:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    sget-object v1, Le/h/a/c/t0/e;->q:Ljava/lang/Object;

    :try_start_3
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 72
    :try_start_4
    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 73
    iput-object v0, v2, Le/h/a/c/t0/e;->p:Ljava/lang/String;

    .line 74
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    :try_start_5
    iget-object v1, v2, Le/h/a/c/t0/e;->d:Le/h/a/c/m;

    .line 76
    iget-object v1, v1, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 77
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 78
    :try_start_6
    iget-object v2, v2, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 79
    iput-object v0, v2, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    .line 80
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 81
    :try_start_7
    invoke-virtual {v2}, Le/h/a/c/v;->a()V

    .line 82
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    invoke-static {v1}, Le/h/a/c/t0/e;->a(Le/h/a/c/t0/e;)V

    .line 83
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    invoke-static {v1}, Le/h/a/c/t0/e;->b(Le/h/a/c/t0/e;)V

    .line 84
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    invoke-virtual {v1}, Le/h/a/c/t0/e;->d()V

    .line 85
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 86
    iget-object v2, v1, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 87
    iget-object v2, v2, Le/h/a/c/v;->c:Le/h/a/c/m0/a;

    if-eqz v2, :cond_4

    .line 88
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 89
    :try_start_8
    iget-object v1, v2, Le/h/a/c/m0/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 90
    :try_start_9
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 91
    :cond_4
    iget-object v2, v1, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v1, v1, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 92
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "DisplayUnit : Can\'t reset Display Units, DisplayUnitcontroller is null"

    .line 93
    invoke-virtual {v2, v1, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_2
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 95
    iget-object v2, v1, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 96
    iget-object v2, v2, Le/h/a/c/v;->a:Le/h/a/c/d0;

    .line 97
    iget-object v1, v1, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 98
    invoke-virtual {v1}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v4, v2, Le/h/a/c/d0;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 100
    iput v3, v2, Le/h/a/c/d0;->g:I

    .line 101
    iget-object v3, v2, Le/h/a/c/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 102
    iput-object v1, v2, Le/h/a/c/d0;->d:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v1}, Le/h/a/c/d0;->h(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 104
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_2
    move-exception v2

    .line 105
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_3
    move-exception v1

    .line 106
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 107
    :catchall_4
    iget-object v1, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 108
    iget-object v1, v1, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 109
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/t0/e$a;->d:Le/h/a/c/t0/e;

    .line 110
    iget-object v2, v2, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 111
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 112
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v0
.end method
