.class public final synthetic Le/m/h/b/b/e/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final a:Le/m/h/b/b/e/q;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/r;->a:Le/m/h/b/b/e/q;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/h/b/b/e/r;->a:Le/m/h/b/b/e/q;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TranslateModelLoader"

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Le/m/h/b/b/e/q;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "Try to load newly downloaded model file."

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Le/m/h/b/b/e/q;->a:Le/m/h/b/b/e/e;

    invoke-virtual {v2}, Le/m/h/b/b/e/e;->d()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Le/m/h/a/a;

    const-string v3, "Newly downloaded model file could not be loaded."

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Le/m/h/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    sget-object v2, Le/m/h/b/b/e/q;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "Loading existing model file."

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Le/m/h/b/b/e/q;->a()V

    :goto_0
    return-object p1
.end method
