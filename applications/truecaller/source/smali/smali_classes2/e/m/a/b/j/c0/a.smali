.class public final synthetic Le/m/a/b/j/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/c;

.field public final synthetic b:Le/m/a/b/j/r;

.field public final synthetic c:Le/m/a/b/h;

.field public final synthetic d:Le/m/a/b/j/n;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/c;Le/m/a/b/j/r;Le/m/a/b/h;Le/m/a/b/j/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/a;->a:Le/m/a/b/j/c0/c;

    iput-object p2, p0, Le/m/a/b/j/c0/a;->b:Le/m/a/b/j/r;

    iput-object p3, p0, Le/m/a/b/j/c0/a;->c:Le/m/a/b/h;

    iput-object p4, p0, Le/m/a/b/j/c0/a;->d:Le/m/a/b/j/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/m/a/b/j/c0/a;->a:Le/m/a/b/j/c0/c;

    iget-object v1, p0, Le/m/a/b/j/c0/a;->b:Le/m/a/b/j/r;

    iget-object v2, p0, Le/m/a/b/j/c0/a;->c:Le/m/a/b/h;

    iget-object v3, p0, Le/m/a/b/j/c0/a;->d:Le/m/a/b/j/n;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v4, v0, Le/m/a/b/j/c0/c;->c:Le/m/a/b/j/y/e;

    .line 3
    invoke-virtual {v1}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Le/m/a/b/j/y/e;->get(Ljava/lang/String;)Le/m/a/b/j/y/m;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Transport backend \'%s\' is not registered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 5
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Le/m/a/b/j/c0/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Le/m/a/b/h;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v4, v3}, Le/m/a/b/j/y/m;->a(Le/m/a/b/j/n;)Le/m/a/b/j/n;

    move-result-object v3

    .line 9
    iget-object v4, v0, Le/m/a/b/j/c0/c;->e:Le/m/a/b/j/d0/b;

    new-instance v5, Le/m/a/b/j/c0/b;

    invoke-direct {v5, v0, v1, v3}, Le/m/a/b/j/c0/b;-><init>(Le/m/a/b/j/c0/c;Le/m/a/b/j/r;Le/m/a/b/j/n;)V

    invoke-interface {v4, v5}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    invoke-interface {v2, v0}, Le/m/a/b/h;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Le/m/a/b/j/c0/c;->f:Ljava/util/logging/Logger;

    const-string v3, "Error scheduling event "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, v0}, Le/m/a/b/h;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
