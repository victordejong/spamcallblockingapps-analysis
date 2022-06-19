.class public Le/h/a/c/t0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Le/h/a/c/f;

.field public final c:Le/h/a/c/n0/a;

.field public final d:Le/h/a/c/m;

.field public final e:Le/h/a/c/k;

.field public final f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final g:Landroid/content/Context;

.field public final h:Le/h/a/c/v;

.field public final i:Le/h/a/c/w;

.field public final j:Le/h/a/c/l0/a;

.field public final k:Le/h/a/c/b0;

.field public final l:Le/h/a/c/f0;

.field public final m:Le/h/a/c/w0/i;

.field public final n:Le/h/a/c/i0;

.field public final o:Le/h/a/c/a1/b;

.field public p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/h/a/c/t0/e;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/a1/b;Le/h/a/c/n0/a;Le/h/a/c/f;Le/h/a/c/w;Le/h/a/c/v;Le/h/a/c/i0;Le/h/a/c/f0;Le/h/a/c/k;Le/h/a/c/l0/c;Le/h/a/c/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/h/a/c/t0/e;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/h/a/c/t0/e;->p:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iput-object p1, p0, Le/h/a/c/t0/e;->g:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 7
    iput-object p4, p0, Le/h/a/c/t0/e;->o:Le/h/a/c/a1/b;

    .line 8
    iput-object p5, p0, Le/h/a/c/t0/e;->c:Le/h/a/c/n0/a;

    .line 9
    iput-object p6, p0, Le/h/a/c/t0/e;->b:Le/h/a/c/f;

    .line 10
    iput-object p7, p0, Le/h/a/c/t0/e;->i:Le/h/a/c/w;

    .line 11
    iget-object p1, p8, Le/h/a/c/v;->m:Le/h/a/c/w0/i;

    .line 12
    iput-object p1, p0, Le/h/a/c/t0/e;->m:Le/h/a/c/w0/i;

    .line 13
    iput-object p9, p0, Le/h/a/c/t0/e;->n:Le/h/a/c/i0;

    .line 14
    iput-object p10, p0, Le/h/a/c/t0/e;->l:Le/h/a/c/f0;

    .line 15
    iput-object p11, p0, Le/h/a/c/t0/e;->e:Le/h/a/c/k;

    .line 16
    iput-object p12, p0, Le/h/a/c/t0/e;->j:Le/h/a/c/l0/a;

    .line 17
    iput-object p8, p0, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 18
    iput-object p13, p0, Le/h/a/c/t0/e;->d:Le/h/a/c/m;

    return-void
.end method

.method public static a(Le/h/a/c/t0/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 2
    iget-object v0, v0, Le/h/a/c/v;->d:Le/h/a/c/o0/b;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, v0, Le/h/a/c/o0/b;->c:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    invoke-virtual {p0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object p0

    .line 5
    iput-object p0, v0, Le/h/a/c/o0/b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Le/h/a/c/o0/b;->f()V

    .line 7
    iget-object p0, v0, Le/h/a/c/o0/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Le/h/a/c/y0/b;->b()Le/h/a/c/y0/k;

    move-result-object p0

    .line 8
    new-instance v1, Le/h/a/c/o0/a;

    invoke-direct {v1, v0}, Le/h/a/c/o0/a;-><init>(Le/h/a/c/o0/b;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v2, Le/h/a/c/y0/j;

    const-string v3, "fetchFeatureFlags"

    invoke-direct {v2, p0, v3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object p0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "DisplayUnit : Can\'t reset Display Units, CTFeatureFlagsController is null"

    .line 14
    invoke-virtual {v0, p0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Le/h/a/c/t0/e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object p0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Product Config is not enabled for this instance"

    .line 5
    invoke-virtual {v0, p0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 7
    iget-object v0, v0, Le/h/a/c/v;->g:Le/h/a/c/v0/b;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v0, Le/h/a/c/v0/b;->h:Le/h/a/c/v0/e;

    iget-object v0, v0, Le/h/a/c/v0/b;->d:Le/h/a/c/z0/a;

    .line 9
    invoke-virtual {v1}, Le/h/a/c/v0/e;->g()V

    if-eqz v0, :cond_1

    .line 10
    iget-object v2, v1, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v2

    invoke-virtual {v2}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object v2

    .line 11
    new-instance v3, Le/h/a/c/v0/d;

    invoke-direct {v3, v1, v0}, Le/h/a/c/v0/d;-><init>(Le/h/a/c/v0/e;Le/h/a/c/z0/a;)V

    .line 12
    iget-object v0, v2, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v1, Le/h/a/c/y0/j;

    const-string v4, "ProductConfigSettings#eraseStoredSettingsFile"

    invoke-direct {v1, v2, v4, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "FileUtils can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    :goto_0
    iget-object v2, p0, Le/h/a/c/t0/e;->g:Landroid/content/Context;

    iget-object v0, p0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    iget-object v3, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v4, p0, Le/h/a/c/t0/e;->b:Le/h/a/c/f;

    iget-object v5, p0, Le/h/a/c/t0/e;->i:Le/h/a/c/w;

    iget-object v6, p0, Le/h/a/c/t0/e;->e:Le/h/a/c/k;

    .line 17
    invoke-virtual {v0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v8, Le/h/a/c/z0/a;

    invoke-direct {v8, v2, v3}, Le/h/a/c/z0/a;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 19
    new-instance v7, Le/h/a/c/v0/e;

    invoke-direct {v7, v0, v3, v8}, Le/h/a/c/v0/e;-><init>(Ljava/lang/String;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/z0/a;)V

    .line 20
    new-instance v0, Le/h/a/c/v0/b;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/h/a/c/v0/b;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/j;Le/h/a/c/w;Le/h/a/c/k;Le/h/a/c/v0/e;Le/h/a/c/z0/a;)V

    .line 21
    iget-object v1, p0, Le/h/a/c/t0/e;->h:Le/h/a/c/v;

    .line 22
    iput-object v0, v1, Le/h/a/c/v;->g:Le/h/a/c/v0/b;

    .line 23
    iget-object v0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object p0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 24
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Product Config reset"

    .line 25
    invoke-virtual {v0, p0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/e;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 2
    new-instance v1, Le/h/a/c/t0/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Le/h/a/c/t0/e$a;-><init>(Le/h/a/c/t0/e;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p2, Le/h/a/c/y0/j;

    const-string p3, "resetProfile"

    invoke-direct {p2, v0, p3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/e;->k:Le/h/a/c/b0;

    .line 2
    iget-object v1, v0, Le/h/a/c/b0;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3
    iget-object v0, v0, Le/h/a/c/b0;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/h/a/c/a1/a;

    .line 5
    iget-object v2, p0, Le/h/a/c/t0/e;->o:Le/h/a/c/a1/b;

    invoke-virtual {v2, v1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
