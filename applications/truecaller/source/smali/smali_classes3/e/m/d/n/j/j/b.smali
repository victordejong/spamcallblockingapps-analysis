.class public final synthetic Le/m/d/n/j/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/i/a;


# instance fields
.field public final synthetic a:Le/m/d/n/j/j/d0;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/j/j/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/j/b;->a:Le/m/d/n/j/j/d0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Le/m/d/n/j/j/b;->a:Le/m/d/n/j/j/d0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Le/m/d/n/j/j/d0;->c:J

    sub-long/2addr v1, v3

    .line 3
    iget-object v0, v0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 4
    iget-object v3, v0, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    new-instance v4, Le/m/d/n/j/j/x;

    invoke-direct {v4, v0, v1, v2, p1}, Le/m/d/n/j/j/x;-><init>(Le/m/d/n/j/j/w;JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
