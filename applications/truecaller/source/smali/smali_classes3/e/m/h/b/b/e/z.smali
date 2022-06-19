.class public final synthetic Le/m/h/b/b/e/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final a:Le/m/h/b/b/e/x;

.field public final b:Le/m/h/b/b/b;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/x;Le/m/h/b/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/z;->a:Le/m/h/b/b/e/x;

    iput-object p2, p0, Le/m/h/b/b/e/z;->b:Le/m/h/b/b/b;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 10

    iget-object p1, p0, Le/m/h/b/b/e/z;->a:Le/m/h/b/b/e/x;

    iget-object v0, p0, Le/m/h/b/b/e/z;->b:Le/m/h/b/b/b;

    .line 1
    iget-object p1, p1, Le/m/h/b/b/e/x;->b:Le/m/h/b/b/e/q$a;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Le/m/h/b/b/e/q$a;->a(Le/m/h/b/b/b;Z)Le/m/h/b/b/e/q;

    move-result-object p1

    .line 3
    iget-object v0, p1, Le/m/h/b/b/e/q;->d:Lcom/google/android/gms/tasks/CancellationTokenSource;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    .line 5
    :cond_0
    iget-object v0, p1, Le/m/h/b/b/e/q;->a:Le/m/h/b/b/e/e;

    .line 6
    invoke-virtual {v0}, Le/m/h/b/b/e/e;->f()V

    .line 7
    iget-object v2, v0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v3, v0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v2, v3}, Le/m/h/a/d/l;->b(Le/m/h/a/c/b;)V

    .line 8
    iget-object v2, v0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v2}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, v0, Le/m/h/b/b/e/e;->b:Le/m/h/a/d/n/f;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Le/m/h/a/d/n/f;->a(Z)Ljava/io/File;

    move-result-object v3

    .line 10
    invoke-static {v2}, Le/m/h/b/b/e/w;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 11
    aget-object v6, v5, v4

    aget-object v7, v5, v1

    invoke-static {v3, v6, v7}, Le/m/h/b/b/e/v;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    aget-object v6, v5, v1

    aget-object v5, v5, v4

    invoke-static {v3, v6, v5}, Le/m/h/b/b/e/v;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v5, Lcom/google/android/gms/internal/mlkit_translate/zzp;

    invoke-direct {v5}, Lcom/google/android/gms/internal/mlkit_translate/zzp;-><init>()V

    .line 14
    invoke-static {v2}, Le/m/h/b/b/e/w;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    :cond_1
    :goto_0
    if-ge v4, v6, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Ljava/lang/String;

    .line 16
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_1

    .line 18
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 21
    new-instance p1, Le/m/h/a/a;

    const-string v0, "Couldn\'t delete model files "

    const-string v1, ", "

    .line 22
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    const/16 v1, 0xd

    invoke-direct {p1, v0, v1}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 23
    :cond_4
    iget-object v0, v0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Le/m/h/a/a;

    const-string v3, "Download canceled"

    invoke-direct {v2, v3, v1}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Le/m/h/b/b/e/q;->c:Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method
