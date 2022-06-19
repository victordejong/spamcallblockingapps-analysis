.class public Lw3/b/a/s;
.super Lw3/b/a/e0/e;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/x;
.implements Lw3/b/a/z;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/s$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/e0/e;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw3/b/a/e0/e;-><init>(JLw3/b/a/g;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y(Lw3/b/a/g;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->d(Lw3/b/a/g;)Lw3/b/a/g;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lw3/b/a/e0/c;->c()Lw3/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lw3/b/a/e;->d(Lw3/b/a/g;)Lw3/b/a/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lw3/b/a/g;->j(Lw3/b/a/g;J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 6
    invoke-virtual {v2, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 9
    iput-wide v0, p0, Lw3/b/a/e0/e;->a:J

    return-void
.end method
