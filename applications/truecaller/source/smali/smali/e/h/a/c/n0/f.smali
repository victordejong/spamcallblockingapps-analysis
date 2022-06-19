.class public Le/h/a/c/n0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/h/a/c/n0/e$d;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/f;->a:Le/h/a/c/n0/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/f;->a:Le/h/a/c/n0/e$d;

    iget-object v0, v0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 2
    iget-object v0, v0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 4
    new-instance v1, Le/h/a/c/n0/f$a;

    invoke-direct {v1, p0}, Le/h/a/c/n0/f$a;-><init>(Le/h/a/c/n0/f;)V

    .line 5
    iget-object v2, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "queueEventWithDelay"

    invoke-direct {v3, v0, v4, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
