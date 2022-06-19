.class public Le/m/d/n/j/j/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/d/n/j/p/f;

.field public final synthetic b:Le/m/d/n/j/j/d0;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/d0;Le/m/d/n/j/p/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/b0;->b:Le/m/d/n/j/j/d0;

    iput-object p2, p0, Le/m/d/n/j/j/b0;->a:Le/m/d/n/j/p/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/b0;->b:Le/m/d/n/j/j/d0;

    iget-object v1, p0, Le/m/d/n/j/j/b0;->a:Le/m/d/n/j/p/f;

    invoke-static {v0, v1}, Le/m/d/n/j/j/d0;->a(Le/m/d/n/j/j/d0;Le/m/d/n/j/p/f;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
