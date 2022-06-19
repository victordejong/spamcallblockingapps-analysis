.class public final Ln3/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e0/a/c;
.implements Ln3/c0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c0/b$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/e0/a/c;

.field public final b:Ln3/c0/b$a;


# virtual methods
.method public b()Ln3/e0/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/b;->a:Ln3/e0/a/c;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/c0/b;->b:Ln3/c0/b$a;

    invoke-virtual {v0}, Ln3/c0/b$a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/b;->a:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Ln3/e0/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/b;->b:Ln3/c0/b$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/b;->a:Ln3/e0/a/c;

    invoke-interface {v0, p1}, Ln3/e0/a/c;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
