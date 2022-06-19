.class public final Le/m/a/f/q/g;
.super Lcom/google/android/gms/tasks/CancellationToken;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/f/q/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/f/q/b0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/CancellationToken;-><init>()V

    new-instance v0, Le/m/a/f/q/b0;

    invoke-direct {v0}, Le/m/a/f/q/b0;-><init>()V

    iput-object v0, p0, Le/m/a/f/q/g;->a:Le/m/a/f/q/b0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/q/g;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0}, Le/m/a/f/q/b0;->r()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/g;->a:Le/m/a/f/q/b0;

    new-instance v1, Le/m/a/f/q/a;

    invoke-direct {v1, p1}, Le/m/a/f/q/a;-><init>(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V

    sget-object p1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Le/m/a/f/q/b0;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method
