.class public Le/m/d/n/j/j/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/d/n/j/j/d0;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/e0;->a:Le/m/d/n/j/j/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/e0;->a:Le/m/d/n/j/j/d0;

    .line 2
    iget-object v0, v0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 3
    iget-object v1, v0, Le/m/d/n/j/j/w;->c:Le/m/d/n/j/j/f0;

    .line 4
    invoke-virtual {v1}, Le/m/d/n/j/j/f0;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Le/m/d/n/j/j/w;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Le/m/d/n/j/j/w;->j:Le/m/d/n/j/c;

    invoke-interface {v0, v1}, Le/m/d/n/j/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v3, 0x2

    .line 8
    invoke-virtual {v1, v3}, Le/m/d/n/j/f;->a(I)Z

    .line 9
    iget-object v0, v0, Le/m/d/n/j/j/w;->c:Le/m/d/n/j/j/f0;

    .line 10
    invoke-virtual {v0}, Le/m/d/n/j/j/f0;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
