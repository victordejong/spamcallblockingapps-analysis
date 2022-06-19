.class public Le/h/a/c/y0/i;
.super Le/h/a/c/y0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Le/h/a/c/y0/c<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final b:Le/h/a/c/y0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/h/a/c/y0/g<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/h/a/c/y0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/h/a/c/y0/g<",
            "TTResult;>;",
            "Lcom/clevertap/android/sdk/CleverTapInstanceConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/h/a/c/y0/c;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    iput-object p2, p0, Le/h/a/c/y0/i;->b:Le/h/a/c/y0/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/c;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Le/h/a/c/y0/i$a;

    invoke-direct {v1, p0, p1}, Le/h/a/c/y0/i$a;-><init>(Le/h/a/c/y0/i;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
