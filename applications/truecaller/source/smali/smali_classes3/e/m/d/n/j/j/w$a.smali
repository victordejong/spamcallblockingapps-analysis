.class public Le/m/d/n/j/j/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/d/n/j/j/w;->h(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/Task;

.field public final synthetic b:Le/m/d/n/j/j/w;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    iput-object p2, p0, Le/m/d/n/j/j/w$a;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    .line 3
    iget-object v0, v0, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    .line 4
    new-instance v1, Le/m/d/n/j/j/v;

    invoke-direct {v1, p0, p1}, Le/m/d/n/j/j/v;-><init>(Le/m/d/n/j/j/w$a;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Le/m/d/n/j/j/m;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
