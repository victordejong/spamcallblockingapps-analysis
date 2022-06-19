.class public final Lu3/p0/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lu3/p0/e/a$a;Lu3/k0;)Lu3/k0;
    .locals 19

    move-object/from16 v0, p1

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lu3/k0;->h:Lu3/l0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    const-string v1, "response"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Lu3/k0;->b:Lu3/g0;

    .line 4
    iget-object v4, v0, Lu3/k0;->c:Lu3/f0;

    .line 5
    iget v6, v0, Lu3/k0;->e:I

    .line 6
    iget-object v5, v0, Lu3/k0;->d:Ljava/lang/String;

    .line 7
    iget-object v7, v0, Lu3/k0;->f:Lu3/y;

    .line 8
    iget-object v1, v0, Lu3/k0;->g:Lu3/z;

    .line 9
    invoke-virtual {v1}, Lu3/z;->c()Lu3/z$a;

    move-result-object v1

    .line 10
    iget-object v10, v0, Lu3/k0;->i:Lu3/k0;

    .line 11
    iget-object v11, v0, Lu3/k0;->j:Lu3/k0;

    .line 12
    iget-object v12, v0, Lu3/k0;->k:Lu3/k0;

    .line 13
    iget-wide v13, v0, Lu3/k0;->l:J

    .line 14
    iget-wide v8, v0, Lu3/k0;->m:J

    .line 15
    iget-object v0, v0, Lu3/k0;->n:Lu3/p0/g/c;

    const/4 v15, 0x0

    if-ltz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v1}, Lu3/z$a;->d()Lu3/z;

    move-result-object v1

    .line 17
    new-instance v18, Lu3/k0;

    move-object/from16 v2, v18

    move-wide/from16 v16, v8

    move-object v8, v1

    move-object v9, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    move-object/from16 v0, v18

    goto :goto_2

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "code < 0: "

    .line 21
    invoke-static {v0, v6}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Content-Length"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Connection"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
