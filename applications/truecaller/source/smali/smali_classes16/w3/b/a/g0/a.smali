.class public abstract Lw3/b/a/g0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lw3/b/a/a;)Lw3/b/a/a;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method public d(Lw3/b/a/b0;Ljava/lang/Object;Lw3/b/a/a;Lw3/b/a/i0/b;)[I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/g0/a;->g(Lw3/b/a/b0;Ljava/lang/Object;Lw3/b/a/a;)[I

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Lw3/b/a/v;
    .locals 0

    .line 1
    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;Lw3/b/a/a;)J
    .locals 0

    .line 1
    sget-object p1, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method public g(Lw3/b/a/b0;Ljava/lang/Object;Lw3/b/a/a;)[I
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p3}, Lw3/b/a/g0/a;->f(Ljava/lang/Object;Lw3/b/a/a;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p3, p1, v0, v1}, Lw3/b/a/a;->m(Lw3/b/a/b0;J)[I

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Converter["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lw3/b/a/g0/c;->c()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lw3/b/a/g0/c;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
