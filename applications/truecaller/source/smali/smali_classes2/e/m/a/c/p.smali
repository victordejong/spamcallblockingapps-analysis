.class public final synthetic Le/m/a/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/e0;

.field public final synthetic b:Le/m/a/c/s0;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/e0;Le/m/a/c/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/p;->a:Le/m/a/c/e0;

    iput-object p2, p0, Le/m/a/c/p;->b:Le/m/a/c/s0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/c/p;->a:Le/m/a/c/e0;

    iget-object v1, p0, Le/m/a/c/p;->b:Le/m/a/c/s0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Le/m/a/c/e0;->c(Le/m/a/c/s0;)V
    :try_end_0
    .catch Le/m/a/c/b0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error delivering message on external thread."

    .line 3
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
