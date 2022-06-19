.class public final Le/a/a/g1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g1/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g1/c;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/g1/c;->c:Le/a/u3/g;

    .line 2
    :try_start_0
    invoke-static {p1}, Le/m/h/a/d/g;->d(Landroid/content/Context;)Le/m/h/a/d/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    sget-object p1, Le/a/a/g1/c$a;->b:Le/a/a/g1/c$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/g1/c;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/w/i;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 2
    invoke-static {}, Le/m/h/a/c/c;->a()Le/m/h/a/c/c;

    move-result-object v1

    const-string v2, "RemoteModelManager.getInstance()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Le/m/h/b/b/b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Le/m/h/b/b/b;-><init>(Ljava/lang/String;Le/m/h/b/b/s;)V

    const-string p1, "TranslateRemoteModel.Builder(languageCode).build()"

    .line 4
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "RemoteModel cannot be null"

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/m/h/a/c/c;->b(Ljava/lang/Class;)Le/m/h/a/d/n/h;

    move-result-object p1

    invoke-interface {p1, v2}, Le/m/h/a/d/n/h;->d(Le/m/h/a/c/b;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v1, "modelManager.isModelDownloaded(model)"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Le/a/a/g1/c$i;

    invoke-direct {v1, v0}, Le/a/a/g1/c$i;-><init>(Ls1/w/d;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->h(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 9
    new-instance v1, Le/a/a/g1/c$j;

    invoke-direct {v1, v0}, Le/a/a/g1/c$j;-><init>(Ls1/w/d;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 10
    new-instance v1, Le/a/a/g1/c$k;

    invoke-direct {v1, v0}, Le/a/a/g1/c$k;-><init>(Ls1/w/d;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 11
    invoke-virtual {v0}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 12
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Locale(languageCode).displayLanguage"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Le/m/h/b/b/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/h/b/b/d;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/w/i;

    invoke-static {p3}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 2
    invoke-static {}, Le/m/h/a/d/g;->c()Le/m/h/a/d/g;

    move-result-object v1

    const-class v2, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;

    invoke-virtual {v1, v2}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;

    .line 3
    new-instance v11, Lcom/google/mlkit/nl/translate/TranslatorImpl;

    iget-object v4, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->a:Le/m/d/v/b;

    iget-object v2, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->b:Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

    .line 4
    invoke-virtual {v2, p1}, Le/m/h/a/d/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    iget-object v2, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->c:Le/m/h/b/b/e/n$a;

    .line 5
    invoke-virtual {p1}, Le/m/h/b/b/d;->a()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/m/h/b/b/e/n$a;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Le/m/h/b/b/e/n;

    move-result-object v6

    iget-object v2, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->e:Le/m/h/a/d/d;

    .line 6
    iget-object v3, p1, Le/m/h/b/b/d;->c:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object v7, v3

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v2, Le/m/h/a/d/d;->a:Le/m/d/v/b;

    invoke-interface {v2}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    move-object v7, v2

    .line 9
    :goto_0
    iget-object v8, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->f:Le/m/h/b/b/e/l;

    iget-object v9, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->g:Le/m/h/a/d/b$a;

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/mlkit/nl/translate/TranslatorImpl;-><init>(Le/m/h/b/b/d;Le/m/d/v/b;Lcom/google/mlkit/nl/translate/internal/TranslateJni;Le/m/h/b/b/e/n;Ljava/util/concurrent/Executor;Le/m/h/b/b/e/l;Le/m/h/a/d/b$a;Le/m/h/b/b/v;)V

    .line 10
    iget-object p1, v1, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->d:Le/m/h/b/b/e/v;

    .line 11
    iget-object v1, v11, Lcom/google/mlkit/nl/translate/TranslatorImpl;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    .line 12
    iget-object v1, v1, Le/m/h/a/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 13
    iget-object v1, v11, Lcom/google/mlkit/nl/translate/TranslatorImpl;->c:Le/m/h/b/b/e/n;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/h/b/b/e/n;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    .line 16
    invoke-virtual {v1, v2, v3}, Le/m/h/b/b/e/n;->c(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 17
    iget-object p1, p1, Le/m/h/b/b/e/v;->a:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    .line 18
    sget-wide v1, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzb:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(J)Lcom/google/android/gms/tasks/Task;

    const-string p1, "Translation.getClient(options)"

    .line 19
    invoke-static {v11, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Input can\'t be null"

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, v11, Lcom/google/mlkit/nl/translate/TranslatorImpl;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Translator has been closed"

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 24
    invoke-virtual {p1}, Le/m/h/a/d/j;->b()Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    .line 25
    iget-object v1, v11, Lcom/google/mlkit/nl/translate/TranslatorImpl;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Le/m/h/b/b/u;

    invoke-direct {v2, p1, p2}, Le/m/h/b/b/u;-><init>(Lcom/google/mlkit/nl/translate/internal/TranslateJni;Ljava/lang/String;)V

    iget-object v3, v11, Lcom/google/mlkit/nl/translate/TranslatorImpl;->f:Lcom/google/android/gms/tasks/CancellationToken;

    .line 26
    invoke-virtual {p1, v1, v2, v3}, Le/m/h/a/d/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 27
    new-instance v1, Le/m/h/b/b/w;

    move-object v2, v1

    move-object v3, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Le/m/h/b/b/w;-><init>(Lcom/google/mlkit/nl/translate/TranslatorImpl;Ljava/lang/String;ZJ)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 28
    new-instance p2, Le/a/a/g1/c$m;

    invoke-direct {p2, v0, v11}, Le/a/a/g1/c$m;-><init>(Ls1/w/d;Le/m/h/b/b/c;)V

    check-cast p1, Le/m/a/f/q/b0;

    .line 29
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, p2}, Le/m/a/f/q/b0;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 30
    new-instance p2, Le/a/a/g1/c$n;

    invoke-direct {p2, v0, v11}, Le/a/a/g1/c$n;-><init>(Ls1/w/d;Le/m/h/b/b/c;)V

    .line 31
    invoke-virtual {p1, v1, p2}, Le/m/a/f/q/b0;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 32
    invoke-virtual {v0}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_2

    const-string p2, "frame"

    .line 33
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/g1/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "context.resources.configuration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    const-string v1, "locale"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale.language"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/w/i;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 2
    invoke-static {}, Le/m/h/a/c/c;->a()Le/m/h/a/c/c;

    move-result-object v1

    const-class v2, Le/m/h/b/b/b;

    .line 3
    iget-object v1, v1, Le/m/h/a/c/c;->a:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/v/b;

    invoke-interface {v1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/h/a/d/n/h;

    .line 5
    invoke-interface {v1}, Le/m/h/a/d/n/h;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 6
    new-instance v2, Le/a/a/g1/c$e;

    invoke-direct {v2, v0}, Le/a/a/g1/c$e;-><init>(Ls1/w/d;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->h(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 7
    new-instance v2, Le/a/a/g1/c$f;

    invoke-direct {v2, v0}, Le/a/a/g1/c$f;-><init>(Ls1/w/d;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-virtual {v0}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_0

    const-string v1, "frame"

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    instance-of v5, v4, Le/a/a/g1/c$l;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Le/a/a/g1/c$l;

    iget v6, v5, Le/a/a/g1/c$l;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Le/a/a/g1/c$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Le/a/a/g1/c$l;

    invoke-direct {v5, v0, v4}, Le/a/a/g1/c$l;-><init>(Le/a/a/g1/c;Ls1/w/d;)V

    :goto_0
    iget-object v4, v5, Le/a/a/g1/c$l;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v5, Le/a/a/g1/c$l;->e:I

    const-string v8, ""

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v12, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v10, :cond_1

    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v5, Le/a/a/g1/c$l;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget v1, v5, Le/a/a/g1/c$l;->m:I

    iget-object v2, v5, Le/a/a/g1/c$l;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v5, Le/a/a/g1/c$l;->k:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v7, v5, Le/a/a/g1/c$l;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/regex/Matcher;

    iget-object v10, v5, Le/a/a/g1/c$l;->i:Ljava/lang/Object;

    check-cast v10, Le/m/h/b/b/d;

    iget-object v13, v5, Le/a/a/g1/c$l;->h:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v5, Le/a/a/g1/c$l;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/g1/c;

    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v15, v1

    move-object v1, v8

    goto/16 :goto_6

    :cond_4
    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v4, Le/m/h/b/b/d;

    const-string v7, "null reference"

    .line 5
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {v4, v1, v2, v11, v11}, Le/m/h/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Le/m/h/b/b/x;)V

    const-string v1, "TranslatorOptions.Builde\u2026eTo)\n            .build()"

    .line 8
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v1, v3

    if-nez v1, :cond_5

    move v1, v12

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 10
    iget-object v1, v0, Le/a/a/g1/c;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    :goto_2
    move-object/from16 v2, p3

    goto :goto_4

    .line 11
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget-object v2, Le/a/a/g1/d;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    array-length v2, v3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_7

    aget-object v10, v3, v7

    const/16 v13, 0x7c

    .line 15
    invoke-static {v13}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(@\\b"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\\b)"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_2

    .line 18
    :goto_4
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v3, 0x0

    move-object v14, v0

    move-object v7, v1

    move-object v10, v4

    move-object v1, v8

    .line 19
    :goto_5
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v13, "null cannot be cast to non-null type java.lang.String"

    if-eqz v4, :cond_a

    .line 20
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 21
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 22
    invoke-static {v2, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v13, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v14, v5, Le/a/a/g1/c$l;->g:Ljava/lang/Object;

    iput-object v2, v5, Le/a/a/g1/c$l;->h:Ljava/lang/Object;

    iput-object v10, v5, Le/a/a/g1/c$l;->i:Ljava/lang/Object;

    iput-object v7, v5, Le/a/a/g1/c$l;->j:Ljava/lang/Object;

    iput-object v8, v5, Le/a/a/g1/c$l;->k:Ljava/lang/Object;

    iput-object v4, v5, Le/a/a/g1/c$l;->l:Ljava/lang/Object;

    iput v15, v5, Le/a/a/g1/c$l;->m:I

    iput v12, v5, Le/a/a/g1/c$l;->e:I

    invoke-virtual {v14, v10, v3, v5}, Le/a/a/g1/c;->c(Le/m/h/b/b/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_8

    return-object v6

    :cond_8
    move-object v13, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v8

    :goto_6
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    move-object v4, v1

    .line 25
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v13

    move v3, v15

    goto :goto_5

    :cond_a
    if-lez v3, :cond_d

    .line 26
    invoke-static {v2, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v8, v5, Le/a/a/g1/c$l;->g:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->h:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->i:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->j:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->k:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->l:Ljava/lang/Object;

    iput v9, v5, Le/a/a/g1/c$l;->e:I

    invoke-virtual {v14, v10, v2, v5}, Le/a/a/g1/c;->c(Le/m/h/b/b/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_b

    return-object v6

    :cond_b
    move-object/from16 v16, v8

    move-object v8, v1

    move-object/from16 v1, v16

    :goto_8
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object v8, v4

    .line 28
    :cond_c
    invoke-static {v1, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 29
    :cond_d
    iput-object v11, v5, Le/a/a/g1/c$l;->g:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->h:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->i:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->j:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->k:Ljava/lang/Object;

    iput-object v11, v5, Le/a/a/g1/c$l;->l:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v5, Le/a/a/g1/c$l;->e:I

    invoke-virtual {v14, v10, v2, v5}, Le/a/a/g1/c;->c(Le/m/h/b/b/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_e

    return-object v6

    .line 30
    :cond_e
    :goto_9
    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    :goto_a
    if-eqz v1, :cond_f

    .line 31
    invoke-static {v1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_f
    return-object v11
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g1/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Le/a/a/g1/a;

    invoke-virtual {p0}, Le/a/a/g1/c;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "und"

    invoke-direct {p1, v0, v3, p2}, Le/a/a/g1/a;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ls1/w/i;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v4

    invoke-direct {v0, v4}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 4
    iget-object v4, p0, Le/a/a/g1/c;->c:Le/a/u3/g;

    .line 5
    iget-object v5, v4, Le/a/u3/g;->l3:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0xdc

    aget-object v6, v6, v7

    invoke-virtual {v5, v4, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v4

    check-cast v4, Le/a/u3/i;

    const/high16 v5, 0x3f000000    # 0.5f

    .line 6
    invoke-interface {v4, v5}, Le/a/u3/i;->i(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v7

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_4
    cmpl-float v3, v5, v3

    if-ltz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    new-array v4, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "Threshold value %f should be between 0 and 1"

    .line 9
    invoke-static {v3, v6, v4}, Lcom/google/android/gms/common/internal/Preconditions;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 11
    new-instance v4, Le/m/h/b/a/a;

    invoke-direct {v4, v3, v7, v7}, Le/m/h/b/a/a;-><init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Le/m/h/b/a/e;)V

    const-string v3, "LanguageIdentificationOp\u2026nce)\n            .build()"

    .line 12
    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "LanguageIdentificationOptions can not be null"

    .line 13
    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Le/m/h/a/d/g;->c()Le/m/h/a/d/g;

    move-result-object v3

    const-class v5, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    .line 15
    invoke-virtual {v3, v5}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    .line 16
    iget-object v5, v3, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iget-object v6, v3, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->a:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iget-object v3, v3, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->c:Le/m/h/a/d/d;

    .line 17
    new-instance v8, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    .line 18
    iget-object v9, v4, Le/m/h/b/a/a;->b:Ljava/util/concurrent/Executor;

    .line 19
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    iget-object v3, v3, Le/m/h/a/d/d;->a:Le/m/d/v/b;

    invoke-interface {v3}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/util/concurrent/Executor;

    .line 21
    :goto_4
    invoke-direct {v8, v4, v5, v6, v9}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;-><init>(Le/m/h/b/a/a;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Ljava/util/concurrent/Executor;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v3

    .line 23
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v3

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    move-result-object v4

    iget-object v5, v8, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->a:Le/m/h/b/a/a;

    .line 25
    invoke-virtual {v5}, Le/m/h/b/a/a;->a()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_language_id/zzaj;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;

    .line 27
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;Lcom/google/android/gms/internal/mlkit_language_id/zzaj;)V

    .line 28
    iget-object v3, v8, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    .line 29
    iget-object v3, v3, Le/m/h/a/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v3, "LanguageIdentification.getClient(options)"

    .line 30
    invoke-static {v8, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Text can not be null"

    .line 31
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v3, v8, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    if-eqz v3, :cond_7

    move v2, v1

    :cond_7
    const-string v4, "LanguageIdentification has been closed"

    .line 33
    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    .line 34
    invoke-virtual {v3}, Le/m/h/a/d/j;->b()Z

    move-result v2

    xor-int/2addr v1, v2

    .line 35
    iget-object v2, v8, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Le/m/h/b/a/f;

    invoke-direct {v4, v8, v3, p1, v1}, Le/m/h/b/a/f;-><init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/lang/String;Z)V

    iget-object v1, v8, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 36
    iget-object v1, v1, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Le/m/a/f/q/g;

    .line 37
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 38
    new-instance v6, Le/m/h/b/a/b/b;

    invoke-direct {v6, v3, v5, v2}, Le/m/h/b/a/b/b;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;)V

    .line 39
    invoke-virtual {v3, v6, v4, v1}, Le/m/h/a/d/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 40
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    new-instance v2, Le/a/a/g1/c$g;

    invoke-direct {v2, v0, p0, p1}, Le/a/a/g1/c$g;-><init>(Ls1/w/d;Le/a/a/g1/c;Ljava/lang/String;)V

    check-cast v1, Le/m/a/f/q/b0;

    .line 42
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v2}, Le/m/a/f/q/b0;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 44
    new-instance v2, Le/a/a/g1/c$h;

    invoke-direct {v2, v0, p0, p1}, Le/a/a/g1/c$h;-><init>(Ls1/w/d;Le/a/a/g1/c;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v3, v2}, Le/m/a/f/q/b0;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 46
    invoke-virtual {v0}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_8

    const-string v0, "frame"

    .line 47
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method

.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/m/h/b/b/a;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "TranslateLanguage.getAllLanguages()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;Ls1/z/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/m/h/a/c/c;->a()Le/m/h/a/c/c;

    move-result-object v0

    const-string v1, "RemoteModelManager.getInstance()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Le/m/h/b/b/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Le/m/h/b/b/b;-><init>(Ljava/lang/String;Le/m/h/b/b/s;)V

    const-string p1, "TranslateRemoteModel.Builder(languageCode).build()"

    .line 3
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "RemoteModel cannot be null"

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class p1, Le/m/h/b/b/b;

    invoke-virtual {v0, p1}, Le/m/h/a/c/c;->b(Ljava/lang/Class;)Le/m/h/a/d/n/h;

    move-result-object p1

    invoke-interface {p1, v1}, Le/m/h/a/d/n/h;->c(Le/m/h/a/c/b;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 6
    new-instance v0, Le/a/a/g1/c$b;

    invoke-direct {v0, p2}, Le/a/a/g1/c$b;-><init>(Ls1/z/b/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->h(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public j(Ljava/lang/String;ZZLs1/z/b/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-class v0, Le/m/h/b/b/b;

    const-string v1, "languageCode"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/m/h/a/c/c;->a()Le/m/h/a/c/c;

    move-result-object v1

    const-string v2, "RemoteModelManager.getInstance()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Le/m/h/b/b/b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Le/m/h/b/b/b;-><init>(Ljava/lang/String;Le/m/h/b/b/s;)V

    const-string p1, "TranslateRemoteModel.Builder(languageCode).build()"

    .line 3
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 4
    :goto_0
    new-instance p3, Le/m/h/a/c/a;

    invoke-direct {p3, p1, p2, v3}, Le/m/h/a/c/a;-><init>(ZZLe/m/h/a/c/d;)V

    const-string p1, "DownloadConditions.Build\u2026      }\n        }.build()"

    .line 5
    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "RemoteModel cannot be null"

    .line 6
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DownloadConditions cannot be null"

    .line 7
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, v1, Le/m/h/a/c/c;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Le/m/h/a/c/c;->b(Ljava/lang/Class;)Le/m/h/a/d/n/h;

    move-result-object p1

    .line 10
    invoke-interface {p1, v2, p3}, Le/m/h/a/d/n/h;->a(Le/m/h/a/c/b;Le/m/h/a/c/a;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Le/m/h/a/a;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x46

    const-string v0, "Feature model \'"

    const-string v1, "\' doesn\'t have a corresponding modelmanager registered."

    invoke-static {p3, v0, p2, v1}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xd

    invoke-direct {p1, p2, p3}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 14
    :goto_1
    new-instance p2, Le/a/a/g1/c$c;

    invoke-direct {p2, p4}, Le/a/a/g1/c$c;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->h(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 15
    new-instance p2, Le/a/a/g1/c$d;

    invoke-direct {p2, p4}, Le/a/a/g1/c$d;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
