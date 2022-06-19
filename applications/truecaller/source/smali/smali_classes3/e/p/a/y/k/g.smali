.class public final Le/p/a/y/k/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/y/k/g$b;
    }
.end annotation


# static fields
.field public static final q:Le/p/a/v;


# instance fields
.field public final a:Le/p/a/q;

.field public final b:Le/p/a/y/k/q;

.field public final c:Le/p/a/u;

.field public d:Le/p/a/y/k/i;

.field public e:J

.field public f:Z

.field public final g:Z

.field public final h:Le/p/a/s;

.field public i:Le/p/a/s;

.field public j:Le/p/a/u;

.field public k:Le/p/a/u;

.field public l:Lv3/z;

.field public final m:Z

.field public final n:Z

.field public o:Le/p/a/y/k/b;

.field public p:Le/p/a/y/k/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/p/a/y/k/g$a;

    invoke-direct {v0}, Le/p/a/y/k/g$a;-><init>()V

    sput-object v0, Le/p/a/y/k/g;->q:Le/p/a/v;

    return-void
.end method

.method public constructor <init>(Le/p/a/q;Le/p/a/s;ZZZLe/p/a/y/k/q;Le/p/a/y/k/m;Le/p/a/u;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, -0x1

    .line 2
    iput-wide v3, v0, Le/p/a/y/k/g;->e:J

    .line 3
    iput-object v1, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 4
    iput-object v2, v0, Le/p/a/y/k/g;->h:Le/p/a/s;

    move/from16 v3, p3

    .line 5
    iput-boolean v3, v0, Le/p/a/y/k/g;->g:Z

    move/from16 v3, p4

    .line 6
    iput-boolean v3, v0, Le/p/a/y/k/g;->m:Z

    move/from16 v3, p5

    .line 7
    iput-boolean v3, v0, Le/p/a/y/k/g;->n:Z

    if-eqz p6, :cond_0

    move-object/from16 v3, p6

    goto :goto_1

    .line 8
    :cond_0
    new-instance v3, Le/p/a/y/k/q;

    .line 9
    iget-object v4, v1, Le/p/a/q;->p:Le/p/a/h;

    .line 10
    invoke-virtual/range {p2 .. p2}, Le/p/a/s;->b()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 11
    iget-object v6, v1, Le/p/a/q;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 12
    iget-object v5, v1, Le/p/a/q;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 13
    iget-object v7, v1, Le/p/a/q;->n:Le/p/a/e;

    move-object v14, v5

    move-object v13, v6

    move-object v15, v7

    goto :goto_0

    :cond_1
    move-object v13, v6

    move-object v14, v13

    move-object v15, v14

    .line 14
    :goto_0
    new-instance v5, Le/p/a/a;

    .line 15
    iget-object v2, v2, Le/p/a/s;->a:Le/p/a/n;

    .line 16
    iget-object v9, v2, Le/p/a/n;->d:Ljava/lang/String;

    .line 17
    iget v10, v2, Le/p/a/n;->e:I

    .line 18
    iget-object v11, v1, Le/p/a/q;->q:Le/p/a/k;

    .line 19
    iget-object v12, v1, Le/p/a/q;->k:Ljavax/net/SocketFactory;

    .line 20
    iget-object v2, v1, Le/p/a/q;->o:Le/p/a/b;

    .line 21
    iget-object v6, v1, Le/p/a/q;->c:Ljava/net/Proxy;

    .line 22
    iget-object v7, v1, Le/p/a/q;->d:Ljava/util/List;

    .line 23
    iget-object v8, v1, Le/p/a/q;->e:Ljava/util/List;

    .line 24
    iget-object v1, v1, Le/p/a/q;->h:Ljava/net/ProxySelector;

    move-object/from16 v19, v8

    move-object v8, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v1

    .line 25
    invoke-direct/range {v8 .. v20}, Le/p/a/a;-><init>(Ljava/lang/String;ILe/p/a/k;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Le/p/a/e;Le/p/a/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 26
    invoke-direct {v3, v4, v5}, Le/p/a/y/k/q;-><init>(Le/p/a/h;Le/p/a/a;)V

    :goto_1
    iput-object v3, v0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    move-object/from16 v1, p7

    .line 27
    iput-object v1, v0, Le/p/a/y/k/g;->l:Lv3/z;

    move-object/from16 v1, p8

    .line 28
    iput-object v1, v0, Le/p/a/y/k/g;->c:Le/p/a/u;

    return-void
.end method

.method public static b(Le/p/a/u;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Le/p/a/u;->a:Le/p/a/s;

    .line 2
    iget-object v0, v0, Le/p/a/s;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Le/p/a/u;->c:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    sget-object v0, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 6
    iget-object v0, p0, Le/p/a/u;->f:Le/p/a/m;

    .line 7
    invoke-static {v0}, Le/p/a/y/k/j;->a(Le/p/a/m;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 8
    iget-object p0, p0, Le/p/a/u;->f:Le/p/a/m;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const-string v0, "chunked"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v3
.end method

.method public static k(Le/p/a/u;)Le/p/a/u;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Le/p/a/u;->g:Le/p/a/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/p/a/u$b;->g:Le/p/a/v;

    .line 4
    invoke-virtual {p0}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Le/p/a/y/k/q;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/g;->l:Lv3/z;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Le/p/a/u;->g:Le/p/a/v;

    .line 5
    invoke-static {v0}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v0}, Le/p/a/y/k/q;->b()V

    .line 7
    :goto_0
    iget-object v0, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    return-object v0
.end method

.method public c(Le/p/a/s;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Le/p/a/s;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Le/m/d/y/n;->P0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final d()Le/p/a/u;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    invoke-interface {v0}, Le/p/a/y/k/i;->a()V

    .line 2
    iget-object v0, p0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    invoke-interface {v0}, Le/p/a/y/k/i;->c()Le/p/a/u$b;

    move-result-object v0

    iget-object v1, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    .line 3
    iput-object v1, v0, Le/p/a/u$b;->a:Le/p/a/s;

    .line 4
    iget-object v1, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v1}, Le/p/a/y/k/q;->a()Le/p/a/y/l/a;

    move-result-object v1

    .line 5
    iget-object v1, v1, Le/p/a/y/l/a;->d:Le/p/a/l;

    .line 6
    iput-object v1, v0, Le/p/a/u$b;->e:Le/p/a/l;

    .line 7
    sget-object v1, Le/p/a/y/k/j;->c:Ljava/lang/String;

    iget-wide v2, p0, Le/p/a/y/k/g;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, v0, Le/p/a/u$b;->f:Le/p/a/m$b;

    .line 9
    invoke-virtual {v3, v1, v2}, Le/p/a/m$b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v1}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 11
    iget-object v4, v3, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v3, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Le/p/a/y/k/j;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, v0, Le/p/a/u$b;->f:Le/p/a/m$b;

    .line 15
    invoke-virtual {v3, v1, v2}, Le/p/a/m$b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v1}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 17
    iget-object v4, v3, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, v3, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v0

    .line 20
    iget-boolean v1, p0, Le/p/a/y/k/g;->n:Z

    if-nez v1, :cond_0

    .line 21
    invoke-virtual {v0}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object v1

    iget-object v2, p0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    invoke-interface {v2, v0}, Le/p/a/y/k/i;->g(Le/p/a/u;)Le/p/a/v;

    move-result-object v0

    .line 22
    iput-object v0, v1, Le/p/a/u$b;->g:Le/p/a/v;

    .line 23
    invoke-virtual {v1}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v0

    .line 24
    :cond_0
    iget-object v1, v0, Le/p/a/u;->a:Le/p/a/s;

    .line 25
    iget-object v1, v1, Le/p/a/s;->c:Le/p/a/m;

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    iget-object v1, v0, Le/p/a/u;->f:Le/p/a/m;

    invoke-virtual {v1, v2}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    :cond_2
    iget-object v1, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v1}, Le/p/a/y/k/q;->f()V

    :cond_3
    return-object v0
.end method

.method public e()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    if-nez v0, :cond_2

    iget-object v1, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    iget-boolean v1, p0, Le/p/a/y/k/g;->n:Z

    const-string v2, "Content-Length"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    invoke-interface {v1, v0}, Le/p/a/y/k/i;->f(Le/p/a/s;)V

    .line 6
    invoke-virtual {p0}, Le/p/a/y/k/g;->d()Le/p/a/u;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_4
    iget-boolean v1, p0, Le/p/a/y/k/g;->m:Z

    if-nez v1, :cond_5

    .line 8
    new-instance v1, Le/p/a/y/k/g$b;

    invoke-direct {v1, p0, v3, v0}, Le/p/a/y/k/g$b;-><init>(Le/p/a/y/k/g;ILe/p/a/s;)V

    invoke-virtual {v1, v0}, Le/p/a/y/k/g$b;->a(Le/p/a/s;)Le/p/a/u;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_5
    iget-wide v4, p0, Le/p/a/y/k/g;->e:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    .line 10
    sget-object v1, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 11
    iget-object v0, v0, Le/p/a/s;->c:Le/p/a/m;

    .line 12
    invoke-static {v0}, Le/p/a/y/k/j;->a(Le/p/a/m;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Le/p/a/y/k/g;->l:Lv3/z;

    instance-of v1, v0, Le/p/a/y/k/m;

    if-eqz v1, :cond_6

    .line 14
    check-cast v0, Le/p/a/y/k/m;

    .line 15
    iget-object v0, v0, Le/p/a/y/k/m;->c:Lv3/f;

    .line 16
    iget-wide v0, v0, Lv3/f;->b:J

    .line 17
    iget-object v4, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-virtual {v4}, Le/p/a/s;->c()Le/p/a/s$b;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    invoke-virtual {v4}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v0

    iput-object v0, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    .line 18
    :cond_6
    iget-object v0, p0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    iget-object v1, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-interface {v0, v1}, Le/p/a/y/k/i;->f(Le/p/a/s;)V

    .line 19
    :cond_7
    iget-object v0, p0, Le/p/a/y/k/g;->l:Lv3/z;

    if-eqz v0, :cond_8

    .line 20
    invoke-interface {v0}, Lv3/z;->close()V

    .line 21
    iget-object v0, p0, Le/p/a/y/k/g;->l:Lv3/z;

    instance-of v1, v0, Le/p/a/y/k/m;

    if-eqz v1, :cond_8

    .line 22
    iget-object v1, p0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    check-cast v0, Le/p/a/y/k/m;

    invoke-interface {v1, v0}, Le/p/a/y/k/i;->b(Le/p/a/y/k/m;)V

    .line 23
    :cond_8
    invoke-virtual {p0}, Le/p/a/y/k/g;->d()Le/p/a/u;

    move-result-object v0

    .line 24
    :goto_1
    iget-object v1, v0, Le/p/a/u;->f:Le/p/a/m;

    .line 25
    invoke-virtual {p0, v1}, Le/p/a/y/k/g;->f(Le/p/a/m;)V

    .line 26
    iget-object v1, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    const-string v4, "networkResponse"

    const/4 v5, 0x1

    if-eqz v1, :cond_16

    .line 27
    iget v6, v0, Le/p/a/u;->c:I

    const/16 v7, 0x130

    if-ne v6, v7, :cond_9

    goto :goto_3

    .line 28
    :cond_9
    iget-object v1, v1, Le/p/a/u;->f:Le/p/a/m;

    const-string v6, "Last-Modified"

    .line 29
    invoke-virtual {v1, v6}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_a

    .line 30
    invoke-static {v1}, Le/p/a/y/k/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_2

    :cond_a
    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_c

    .line 31
    iget-object v8, v0, Le/p/a/u;->f:Le/p/a/m;

    .line 32
    invoke-virtual {v8, v6}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 33
    invoke-static {v6}, Le/p/a/y/k/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    :cond_b
    if-eqz v7, :cond_c

    .line 34
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_c

    :goto_3
    move v1, v5

    goto :goto_4

    :cond_c
    move v1, v3

    :goto_4
    if-eqz v1, :cond_15

    .line 35
    iget-object v1, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    invoke-virtual {v1}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object v1

    iget-object v5, p0, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 36
    iput-object v5, v1, Le/p/a/u$b;->a:Le/p/a/s;

    .line 37
    iget-object v5, p0, Le/p/a/y/k/g;->c:Le/p/a/u;

    invoke-static {v5}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v5

    invoke-virtual {v1, v5}, Le/p/a/u$b;->e(Le/p/a/u;)Le/p/a/u$b;

    iget-object v5, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    .line 38
    iget-object v5, v5, Le/p/a/u;->f:Le/p/a/m;

    iget-object v6, v0, Le/p/a/u;->f:Le/p/a/m;

    .line 39
    new-instance v7, Le/p/a/m$b;

    invoke-direct {v7}, Le/p/a/m$b;-><init>()V

    .line 40
    invoke-virtual {v5}, Le/p/a/m;->d()I

    move-result v8

    move v9, v3

    :goto_5
    if-ge v9, v8, :cond_10

    .line 41
    invoke-virtual {v5, v9}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-virtual {v5, v9}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Warning"

    .line 43
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_6

    .line 44
    :cond_d
    invoke-static {v10}, Le/p/a/y/k/j;->b(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v6, v10}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_f

    .line 45
    :cond_e
    invoke-virtual {v7, v10, v11}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    :cond_f
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 46
    :cond_10
    invoke-virtual {v6}, Le/p/a/m;->d()I

    move-result v5

    :goto_7
    if-ge v3, v5, :cond_13

    .line 47
    invoke-virtual {v6, v3}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_8

    .line 49
    :cond_11
    invoke-static {v8}, Le/p/a/y/k/j;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 50
    invoke-virtual {v6, v3}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    :cond_12
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 51
    :cond_13
    invoke-virtual {v7}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Le/p/a/u$b;->d(Le/p/a/m;)Le/p/a/u$b;

    iget-object v2, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    invoke-static {v2}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/p/a/u$b;->b(Le/p/a/u;)Le/p/a/u$b;

    invoke-static {v0}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 53
    invoke-virtual {v1, v4, v2}, Le/p/a/u$b;->c(Ljava/lang/String;Le/p/a/u;)V

    .line 54
    :cond_14
    iput-object v2, v1, Le/p/a/u$b;->h:Le/p/a/u;

    .line 55
    invoke-virtual {v1}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v1

    iput-object v1, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    .line 56
    iget-object v0, v0, Le/p/a/u;->g:Le/p/a/v;

    .line 57
    invoke-virtual {v0}, Le/p/a/v;->close()V

    .line 58
    iget-object v0, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v0}, Le/p/a/y/k/q;->g()V

    .line 59
    sget-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v1, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    check-cast v0, Le/p/a/q$a;

    .line 60
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, v1, Le/p/a/q;->j:Le/p/a/y/c;

    .line 62
    invoke-interface {v0}, Le/p/a/y/c;->e()V

    .line 63
    iget-object v1, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    iget-object v2, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    invoke-static {v2}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/p/a/y/c;->d(Le/p/a/u;Le/p/a/u;)V

    .line 64
    iget-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    invoke-virtual {p0, v0}, Le/p/a/y/k/g;->l(Le/p/a/u;)Le/p/a/u;

    move-result-object v0

    iput-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    return-void

    .line 65
    :cond_15
    iget-object v1, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    .line 66
    iget-object v1, v1, Le/p/a/u;->g:Le/p/a/v;

    .line 67
    invoke-static {v1}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    .line 68
    :cond_16
    invoke-virtual {v0}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object v1

    iget-object v2, p0, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 69
    iput-object v2, v1, Le/p/a/u$b;->a:Le/p/a/s;

    .line 70
    iget-object v2, p0, Le/p/a/y/k/g;->c:Le/p/a/u;

    invoke-static {v2}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/p/a/u$b;->e(Le/p/a/u;)Le/p/a/u$b;

    iget-object v2, p0, Le/p/a/y/k/g;->j:Le/p/a/u;

    invoke-static {v2}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/p/a/u$b;->b(Le/p/a/u;)Le/p/a/u$b;

    invoke-static {v0}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 71
    invoke-virtual {v1, v4, v0}, Le/p/a/u$b;->c(Ljava/lang/String;Le/p/a/u;)V

    .line 72
    :cond_17
    iput-object v0, v1, Le/p/a/u$b;->h:Le/p/a/u;

    .line 73
    invoke-virtual {v1}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v0

    iput-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    .line 74
    invoke-static {v0}, Le/p/a/y/k/g;->b(Le/p/a/u;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 75
    sget-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v1, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    check-cast v0, Le/p/a/q$a;

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, v1, Le/p/a/q;->j:Le/p/a/y/c;

    if-nez v0, :cond_18

    goto :goto_9

    .line 78
    :cond_18
    iget-object v1, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    iget-object v2, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-static {v1, v2}, Le/p/a/y/k/c;->a(Le/p/a/u;Le/p/a/s;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 79
    iget-object v1, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    .line 80
    iget-object v1, v1, Le/p/a/s;->b:Ljava/lang/String;

    const-string v2, "POST"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    move v3, v5

    :cond_1a
    if-eqz v3, :cond_1c

    .line 82
    :try_start_0
    iget-object v1, p0, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-interface {v0, v1}, Le/p/a/y/c;->b(Le/p/a/s;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 83
    :cond_1b
    iget-object v1, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    invoke-static {v1}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v1

    invoke-interface {v0, v1}, Le/p/a/y/c;->a(Le/p/a/u;)Le/p/a/y/k/b;

    move-result-object v0

    iput-object v0, p0, Le/p/a/y/k/g;->o:Le/p/a/y/k/b;

    .line 84
    :catch_0
    :cond_1c
    :goto_9
    iget-object v0, p0, Le/p/a/y/k/g;->o:Le/p/a/y/k/b;

    iget-object v1, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    if-nez v0, :cond_1d

    goto :goto_a

    .line 85
    :cond_1d
    invoke-interface {v0}, Le/p/a/y/k/b;->a()Lv3/z;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_a

    .line 86
    :cond_1e
    iget-object v3, v1, Le/p/a/u;->g:Le/p/a/v;

    .line 87
    invoke-virtual {v3}, Le/p/a/v;->j()Lv3/h;

    move-result-object v3

    const-string v4, "$this$buffer"

    .line 88
    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v5, Lv3/u;

    invoke-direct {v5, v2}, Lv3/u;-><init>(Lv3/z;)V

    .line 90
    new-instance v2, Le/p/a/y/k/h;

    invoke-direct {v2, p0, v3, v0, v5}, Le/p/a/y/k/h;-><init>(Le/p/a/y/k/g;Lv3/h;Le/p/a/y/k/b;Lv3/g;)V

    .line 91
    invoke-virtual {v1}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object v0

    new-instance v3, Le/p/a/y/k/k;

    .line 92
    iget-object v1, v1, Le/p/a/u;->f:Le/p/a/m;

    .line 93
    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v4, Lv3/v;

    invoke-direct {v4, v2}, Lv3/v;-><init>(Lv3/b0;)V

    .line 95
    invoke-direct {v3, v1, v4}, Le/p/a/y/k/k;-><init>(Le/p/a/m;Lv3/h;)V

    .line 96
    iput-object v3, v0, Le/p/a/u$b;->g:Le/p/a/v;

    .line 97
    invoke-virtual {v0}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v1

    .line 98
    :goto_a
    invoke-virtual {p0, v1}, Le/p/a/y/k/g;->l(Le/p/a/u;)Le/p/a/u;

    move-result-object v0

    iput-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    :cond_1f
    return-void
.end method

.method public f(Le/p/a/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 2
    iget-object v0, v0, Le/p/a/q;->i:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/p/a/y/k/g;->h:Le/p/a/s;

    invoke-virtual {v1}, Le/p/a/s;->d()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Le/p/a/y/k/j;->d(Le/p/a/m;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public g(Le/p/a/y/k/n;)Le/p/a/y/k/g;
    .locals 10

    .line 1
    iget-object v0, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    .line 2
    iget-object v1, v0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Le/p/a/y/k/n;->a:Ljava/io/IOException;

    .line 4
    invoke-virtual {v0, v1}, Le/p/a/y/k/q;->c(Ljava/io/IOException;)V

    .line 5
    :cond_0
    iget-object v0, v0, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/p/a/y/k/o;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6
    :cond_1
    iget-object p1, p1, Le/p/a/y/k/n;->a:Ljava/io/IOException;

    .line 7
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_3

    .line 9
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    goto :goto_1

    .line 10
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_5

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    if-nez v1, :cond_8

    return-object p1

    .line 13
    :cond_8
    iget-object v0, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 14
    iget-boolean v0, v0, Le/p/a/q;->t:Z

    if-nez v0, :cond_9

    return-object p1

    .line 15
    :cond_9
    invoke-virtual {p0}, Le/p/a/y/k/g;->a()Le/p/a/y/k/q;

    move-result-object v7

    .line 16
    new-instance p1, Le/p/a/y/k/g;

    iget-object v2, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    iget-object v3, p0, Le/p/a/y/k/g;->h:Le/p/a/s;

    iget-boolean v4, p0, Le/p/a/y/k/g;->g:Z

    iget-boolean v5, p0, Le/p/a/y/k/g;->m:Z

    iget-boolean v6, p0, Le/p/a/y/k/g;->n:Z

    iget-object v0, p0, Le/p/a/y/k/g;->l:Lv3/z;

    move-object v8, v0

    check-cast v8, Le/p/a/y/k/m;

    iget-object v9, p0, Le/p/a/y/k/g;->c:Le/p/a/u;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Le/p/a/y/k/g;-><init>(Le/p/a/q;Le/p/a/s;ZZZLe/p/a/y/k/q;Le/p/a/y/k/m;Le/p/a/u;)V

    return-object p1
.end method

.method public h(Ljava/io/IOException;Lv3/z;)Le/p/a/y/k/g;
    .locals 9

    .line 1
    iget-object p2, p0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    .line 2
    iget-object v0, p2, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Le/p/a/y/l/a;->g:I

    .line 4
    invoke-virtual {p2, p1}, Le/p/a/y/k/q;->c(Ljava/io/IOException;)V

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object p2, p2, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Le/p/a/y/k/o;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    :cond_1
    instance-of p2, p1, Ljava/net/ProtocolException;

    if-eqz p2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_3

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    :goto_2
    const/4 p1, 0x0

    if-nez v1, :cond_5

    return-object p1

    .line 8
    :cond_5
    iget-object p2, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 9
    iget-boolean p2, p2, Le/p/a/q;->t:Z

    if-nez p2, :cond_6

    return-object p1

    .line 10
    :cond_6
    invoke-virtual {p0}, Le/p/a/y/k/g;->a()Le/p/a/y/k/q;

    move-result-object v6

    .line 11
    new-instance p1, Le/p/a/y/k/g;

    iget-object v1, p0, Le/p/a/y/k/g;->a:Le/p/a/q;

    iget-object v2, p0, Le/p/a/y/k/g;->h:Le/p/a/s;

    iget-boolean v3, p0, Le/p/a/y/k/g;->g:Z

    iget-boolean v4, p0, Le/p/a/y/k/g;->m:Z

    iget-boolean v5, p0, Le/p/a/y/k/g;->n:Z

    iget-object v8, p0, Le/p/a/y/k/g;->c:Le/p/a/u;

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Le/p/a/y/k/g;-><init>(Le/p/a/q;Le/p/a/s;ZZZLe/p/a/y/k/q;Le/p/a/y/k/m;Le/p/a/u;)V

    return-object p1
.end method

.method public i(Le/p/a/n;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 2
    iget-object v0, v0, Le/p/a/s;->a:Le/p/a/n;

    .line 3
    iget-object v1, v0, Le/p/a/n;->d:Ljava/lang/String;

    iget-object v2, p1, Le/p/a/n;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v1, v0, Le/p/a/n;->e:I

    iget v2, p1, Le/p/a/n;->e:I

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v0, v0, Le/p/a/n;->a:Ljava/lang/String;

    iget-object p1, p1, Le/p/a/n;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/p/a/y/k/l;,
            Le/p/a/y/k/n;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/p/a/y/k/g;->p:Le/p/a/y/k/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    if-nez v0, :cond_38

    .line 3
    iget-object v0, v1, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 4
    invoke-virtual {v0}, Le/p/a/s;->c()Le/p/a/s$b;

    move-result-object v2

    .line 5
    iget-object v3, v0, Le/p/a/s;->c:Le/p/a/m;

    const-string v4, "Host"

    invoke-virtual {v3, v4}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    iget-object v3, v0, Le/p/a/s;->a:Le/p/a/n;

    .line 7
    invoke-static {v3}, Le/p/a/y/i;->g(Le/p/a/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    .line 8
    :cond_1
    iget-object v3, v0, Le/p/a/s;->c:Le/p/a/m;

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "Keep-Alive"

    .line 9
    invoke-virtual {v2, v4, v3}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    .line 10
    :cond_2
    iget-object v3, v0, Le/p/a/s;->c:Le/p/a/m;

    const-string v4, "Accept-Encoding"

    invoke-virtual {v3, v4}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 11
    iput-boolean v5, v1, Le/p/a/y/k/g;->f:Z

    const-string v3, "gzip"

    .line 12
    invoke-virtual {v2, v4, v3}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    .line 13
    :cond_3
    iget-object v3, v1, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 14
    iget-object v3, v3, Le/p/a/q;->i:Ljava/net/CookieHandler;

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {v2}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v7

    .line 16
    iget-object v7, v7, Le/p/a/s;->c:Le/p/a/m;

    .line 17
    invoke-static {v7, v6}, Le/p/a/y/k/j;->d(Le/p/a/m;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 18
    invoke-virtual {v0}, Le/p/a/s;->d()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "Cookie"

    .line 21
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "Cookie2"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 22
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 23
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v5, :cond_6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_2

    .line 24
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_8

    if-lez v11, :cond_7

    const-string v12, "; "

    .line 26
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_7
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 28
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 29
    :goto_2
    iget-object v9, v2, Le/p/a/s$b;->c:Le/p/a/m$b;

    invoke-virtual {v9, v8, v7}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    goto :goto_0

    .line 30
    :cond_9
    iget-object v0, v0, Le/p/a/s;->c:Le/p/a/m;

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "okhttp/2.7.4"

    .line 31
    invoke-virtual {v2, v3, v0}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    .line 32
    :cond_a
    invoke-virtual {v2}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v0

    .line 33
    sget-object v2, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v3, v1, Le/p/a/y/k/g;->a:Le/p/a/q;

    check-cast v2, Le/p/a/q$a;

    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v2, v3, Le/p/a/q;->j:Le/p/a/y/c;

    if-eqz v2, :cond_b

    .line 36
    invoke-interface {v2, v0}, Le/p/a/y/c;->c(Le/p/a/s;)Le/p/a/u;

    move-result-object v3

    goto :goto_3

    :cond_b
    move-object v3, v6

    .line 37
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, -0x1

    if-eqz v3, :cond_14

    .line 38
    iget-object v12, v3, Le/p/a/u;->f:Le/p/a/m;

    .line 39
    invoke-virtual {v12}, Le/p/a/m;->d()I

    move-result v13

    move v14, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v24, v19

    move-object/from16 v25, v24

    move v15, v9

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    :goto_4
    if-ge v14, v13, :cond_13

    .line 40
    invoke-virtual {v12, v14}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v12, v14}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Date"

    .line 42
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 43
    invoke-static {v5}, Le/p/a/y/k/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v18, v5

    goto :goto_5

    :cond_c
    const-string v10, "Expires"

    .line 44
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 45
    invoke-static {v5}, Le/p/a/y/k/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    goto :goto_5

    :cond_d
    const-string v10, "Last-Modified"

    .line 46
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 47
    invoke-static {v5}, Le/p/a/y/k/f;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    move-object/from16 v17, v5

    goto :goto_5

    :cond_e
    const-string v10, "ETag"

    .line 48
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object/from16 v16, v5

    goto :goto_5

    :cond_f
    const-string v10, "Age"

    .line 49
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 50
    invoke-static {v5, v9}, Le/m/d/y/n;->O0(Ljava/lang/String;I)I

    move-result v15

    goto :goto_5

    .line 51
    :cond_10
    sget-object v10, Le/p/a/y/k/j;->c:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 52
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    goto :goto_5

    .line 53
    :cond_11
    sget-object v10, Le/p/a/y/k/j;->d:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 54
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :cond_12
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_13
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v10, v18

    goto :goto_6

    :cond_14
    move-object v4, v6

    move-object v5, v4

    move-object v10, v5

    move-object/from16 v19, v10

    move-object/from16 v24, v19

    move-object/from16 v25, v24

    move v15, v9

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    :goto_6
    if-nez v3, :cond_15

    .line 55
    new-instance v4, Le/p/a/y/k/c;

    invoke-direct {v4, v0, v6, v6}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    goto :goto_7

    .line 56
    :cond_15
    invoke-virtual {v0}, Le/p/a/s;->b()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 57
    iget-object v11, v3, Le/p/a/u;->e:Le/p/a/l;

    if-nez v11, :cond_16

    .line 58
    new-instance v4, Le/p/a/y/k/c;

    invoke-direct {v4, v0, v6, v6}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    goto :goto_7

    .line 59
    :cond_16
    invoke-static {v3, v0}, Le/p/a/y/k/c;->a(Le/p/a/u;Le/p/a/s;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 60
    new-instance v4, Le/p/a/y/k/c;

    invoke-direct {v4, v0, v6, v6}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    :goto_7
    move-object v11, v2

    move-object v1, v4

    move-object v4, v6

    goto/16 :goto_12

    .line 61
    :cond_17
    invoke-virtual {v0}, Le/p/a/s;->a()Le/p/a/c;

    move-result-object v11

    .line 62
    iget-boolean v12, v11, Le/p/a/c;->a:Z

    if-nez v12, :cond_2d

    .line 63
    invoke-static {v0}, Le/p/a/y/k/c$b;->a(Le/p/a/s;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto/16 :goto_11

    :cond_18
    if-eqz v19, :cond_19

    .line 64
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v12, v20, v12

    move-wide/from16 v16, v7

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_8

    :cond_19
    move-wide/from16 v16, v7

    const-wide/16 v12, 0x0

    :goto_8
    if-eq v15, v9, :cond_1a

    .line 65
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v15

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :cond_1a
    sub-long v6, v20, v22

    sub-long v15, v16, v20

    add-long/2addr v12, v6

    add-long/2addr v12, v15

    .line 66
    invoke-virtual {v3}, Le/p/a/u;->a()Le/p/a/c;

    move-result-object v6

    .line 67
    iget v6, v6, Le/p/a/c;->c:I

    if-eq v6, v9, :cond_1c

    .line 68
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v14, v6

    invoke-virtual {v7, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    :cond_1b
    :goto_9
    move-wide v14, v6

    goto :goto_b

    :cond_1c
    if-eqz v24, :cond_1e

    if-eqz v19, :cond_1d

    .line 69
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 70
    :cond_1d
    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v6, v20

    const-wide/16 v14, 0x0

    cmp-long v16, v6, v14

    if-lez v16, :cond_21

    goto :goto_9

    :cond_1e
    if-eqz v25, :cond_21

    .line 71
    iget-object v6, v3, Le/p/a/u;->a:Le/p/a/s;

    .line 72
    iget-object v6, v6, Le/p/a/s;->a:Le/p/a/n;

    .line 73
    iget-object v7, v6, Le/p/a/n;->g:Ljava/util/List;

    if-nez v7, :cond_1f

    const/4 v14, 0x0

    goto :goto_a

    .line 74
    :cond_1f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v6, v6, Le/p/a/n;->g:Ljava/util/List;

    invoke-static {v7, v6}, Le/p/a/n;->j(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_a
    if-nez v14, :cond_21

    if-eqz v19, :cond_20

    .line 77
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    .line 78
    :cond_20
    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v22, v22, v6

    const-wide/16 v6, 0x0

    cmp-long v14, v22, v6

    if-lez v14, :cond_1b

    const-wide/16 v14, 0xa

    .line 79
    div-long v14, v22, v14

    goto :goto_b

    :cond_21
    const-wide/16 v6, 0x0

    goto :goto_9

    .line 80
    :goto_b
    iget v6, v11, Le/p/a/c;->c:I

    if-eq v6, v9, :cond_22

    .line 81
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 82
    :cond_22
    iget v6, v11, Le/p/a/c;->i:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_23

    .line 83
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v9, v2

    int-to-long v1, v6

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_c

    :cond_23
    move-object v9, v2

    const-wide/16 v1, 0x0

    .line 84
    :goto_c
    invoke-virtual {v3}, Le/p/a/u;->a()Le/p/a/c;

    move-result-object v6

    .line 85
    iget-boolean v8, v6, Le/p/a/c;->g:Z

    if-nez v8, :cond_24

    .line 86
    iget v8, v11, Le/p/a/c;->h:I

    if-eq v8, v7, :cond_24

    .line 87
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v11, v9

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    goto :goto_d

    :cond_24
    move-object v11, v9

    const-wide/16 v7, 0x0

    .line 88
    :goto_d
    iget-boolean v6, v6, Le/p/a/c;->a:Z

    if-nez v6, :cond_28

    add-long/2addr v1, v12

    add-long/2addr v7, v14

    cmp-long v6, v1, v7

    if-gez v6, :cond_28

    .line 89
    invoke-virtual {v3}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object v4

    cmp-long v1, v1, v14

    const-string v2, "Warning"

    if-ltz v1, :cond_25

    .line 90
    iget-object v1, v4, Le/p/a/u$b;->f:Le/p/a/m$b;

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v1, v2, v5}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    :cond_25
    const-wide/32 v5, 0x5265c00

    cmp-long v1, v12, v5

    if-lez v1, :cond_27

    .line 91
    invoke-virtual {v3}, Le/p/a/u;->a()Le/p/a/c;

    move-result-object v1

    .line 92
    iget v1, v1, Le/p/a/c;->c:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_26

    if-nez v24, :cond_26

    const/16 v26, 0x1

    goto :goto_e

    :cond_26
    const/16 v26, 0x0

    :goto_e
    if-eqz v26, :cond_27

    .line 93
    iget-object v1, v4, Le/p/a/u$b;->f:Le/p/a/m$b;

    const-string v5, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v1, v2, v5}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    .line 94
    :cond_27
    new-instance v1, Le/p/a/y/k/c;

    invoke-virtual {v4}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v4}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    move-object v2, v1

    goto :goto_10

    .line 95
    :cond_28
    invoke-virtual {v0}, Le/p/a/s;->c()Le/p/a/s$b;

    move-result-object v1

    if-eqz v4, :cond_29

    const-string v2, "If-None-Match"

    .line 96
    invoke-virtual {v1, v2, v4}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    goto :goto_f

    :cond_29
    const-string v2, "If-Modified-Since"

    if-eqz v25, :cond_2a

    .line 97
    invoke-virtual {v1, v2, v5}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    goto :goto_f

    :cond_2a
    if-eqz v19, :cond_2b

    .line 98
    invoke-virtual {v1, v2, v10}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    .line 99
    :cond_2b
    :goto_f
    invoke-virtual {v1}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v1

    .line 100
    invoke-static {v1}, Le/p/a/y/k/c$b;->a(Le/p/a/s;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Le/p/a/y/k/c;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    goto :goto_10

    :cond_2c
    const/4 v4, 0x0

    new-instance v2, Le/p/a/y/k/c;

    invoke-direct {v2, v1, v4, v4}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    :goto_10
    move-object v1, v2

    goto :goto_12

    :cond_2d
    :goto_11
    move-object v11, v2

    move-object v4, v6

    .line 101
    new-instance v1, Le/p/a/y/k/c;

    invoke-direct {v1, v0, v4, v4}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    .line 102
    :goto_12
    iget-object v2, v1, Le/p/a/y/k/c;->a:Le/p/a/s;

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Le/p/a/s;->a()Le/p/a/c;

    move-result-object v2

    .line 103
    iget-boolean v2, v2, Le/p/a/c;->j:Z

    if-eqz v2, :cond_2e

    .line 104
    new-instance v1, Le/p/a/y/k/c;

    invoke-direct {v1, v4, v4, v4}, Le/p/a/y/k/c;-><init>(Le/p/a/s;Le/p/a/u;Le/p/a/y/k/c$a;)V

    :cond_2e
    move-object/from16 v2, p0

    .line 105
    iput-object v1, v2, Le/p/a/y/k/g;->p:Le/p/a/y/k/c;

    .line 106
    iget-object v4, v1, Le/p/a/y/k/c;->a:Le/p/a/s;

    iput-object v4, v2, Le/p/a/y/k/g;->i:Le/p/a/s;

    .line 107
    iget-object v4, v1, Le/p/a/y/k/c;->b:Le/p/a/u;

    iput-object v4, v2, Le/p/a/y/k/g;->j:Le/p/a/u;

    if-eqz v11, :cond_2f

    .line 108
    invoke-interface {v11, v1}, Le/p/a/y/c;->f(Le/p/a/y/k/c;)V

    :cond_2f
    if-eqz v3, :cond_30

    .line 109
    iget-object v1, v2, Le/p/a/y/k/g;->j:Le/p/a/u;

    if-nez v1, :cond_30

    .line 110
    iget-object v1, v3, Le/p/a/u;->g:Le/p/a/v;

    .line 111
    invoke-static {v1}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    .line 112
    :cond_30
    iget-object v1, v2, Le/p/a/y/k/g;->i:Le/p/a/s;

    if-eqz v1, :cond_35

    .line 113
    iget-object v1, v1, Le/p/a/s;->b:Ljava/lang/String;

    const-string v3, "GET"

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/lit8 v9, v1, 0x1

    .line 115
    iget-object v1, v2, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    iget-object v3, v2, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 116
    iget v5, v3, Le/p/a/q;->u:I

    .line 117
    iget v10, v3, Le/p/a/q;->v:I

    .line 118
    iget v11, v3, Le/p/a/q;->w:I

    .line 119
    iget-boolean v8, v3, Le/p/a/q;->t:Z

    .line 120
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    move v6, v10

    move v7, v11

    .line 121
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Le/p/a/y/k/q;->e(IIIZZ)Le/p/a/y/l/a;

    move-result-object v3

    .line 122
    iget-object v4, v3, Le/p/a/y/l/a;->f:Le/p/a/y/j/d;

    if-eqz v4, :cond_31

    .line 123
    new-instance v4, Le/p/a/y/k/e;

    iget-object v5, v3, Le/p/a/y/l/a;->f:Le/p/a/y/j/d;

    invoke-direct {v4, v1, v5}, Le/p/a/y/k/e;-><init>(Le/p/a/y/k/q;Le/p/a/y/j/d;)V

    goto :goto_13

    .line 124
    :cond_31
    iget-object v4, v3, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    .line 125
    invoke-virtual {v4, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 126
    iget-object v4, v3, Le/p/a/y/l/a;->h:Lv3/h;

    invoke-interface {v4}, Lv3/b0;->i()Lv3/c0;

    move-result-object v4

    int-to-long v5, v10

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 127
    iget-object v4, v3, Le/p/a/y/l/a;->i:Lv3/g;

    invoke-interface {v4}, Lv3/z;->i()Lv3/c0;

    move-result-object v4

    int-to-long v5, v11

    invoke-virtual {v4, v5, v6, v7}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 128
    new-instance v4, Le/p/a/y/k/d;

    iget-object v5, v3, Le/p/a/y/l/a;->h:Lv3/h;

    iget-object v6, v3, Le/p/a/y/l/a;->i:Lv3/g;

    invoke-direct {v4, v1, v5, v6}, Le/p/a/y/k/d;-><init>(Le/p/a/y/k/q;Lv3/h;Lv3/g;)V

    .line 129
    :goto_13
    iget-object v5, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    iget v6, v3, Le/p/a/y/l/a;->g:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v3, Le/p/a/y/l/a;->g:I

    .line 131
    iput-object v4, v1, Le/p/a/y/k/q;->f:Le/p/a/y/k/i;

    .line 132
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iput-object v4, v2, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    .line 134
    invoke-interface {v4, v2}, Le/p/a/y/k/i;->d(Le/p/a/y/k/g;)V

    .line 135
    iget-boolean v1, v2, Le/p/a/y/k/g;->m:Z

    if-eqz v1, :cond_37

    iget-object v1, v2, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-virtual {v2, v1}, Le/p/a/y/k/g;->c(Le/p/a/s;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v2, Le/p/a/y/k/g;->l:Lv3/z;

    if-nez v1, :cond_37

    .line 136
    sget-object v1, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 137
    iget-object v0, v0, Le/p/a/s;->c:Le/p/a/m;

    .line 138
    invoke-static {v0}, Le/p/a/y/k/j;->a(Le/p/a/m;)J

    move-result-wide v0

    .line 139
    iget-boolean v3, v2, Le/p/a/y/k/g;->g:Z

    if-eqz v3, :cond_34

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-gtz v3, :cond_33

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_32

    .line 140
    iget-object v3, v2, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    iget-object v4, v2, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-interface {v3, v4}, Le/p/a/y/k/i;->f(Le/p/a/s;)V

    .line 141
    new-instance v3, Le/p/a/y/k/m;

    long-to-int v0, v0

    invoke-direct {v3, v0}, Le/p/a/y/k/m;-><init>(I)V

    iput-object v3, v2, Le/p/a/y/k/g;->l:Lv3/z;

    goto/16 :goto_15

    .line 142
    :cond_32
    new-instance v0, Le/p/a/y/k/m;

    invoke-direct {v0}, Le/p/a/y/k/m;-><init>()V

    iput-object v0, v2, Le/p/a/y/k/g;->l:Lv3/z;

    goto/16 :goto_15

    .line 143
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_34
    iget-object v3, v2, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    iget-object v4, v2, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-interface {v3, v4}, Le/p/a/y/k/i;->f(Le/p/a/s;)V

    .line 145
    iget-object v3, v2, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    iget-object v4, v2, Le/p/a/y/k/g;->i:Le/p/a/s;

    invoke-interface {v3, v4, v0, v1}, Le/p/a/y/k/i;->e(Le/p/a/s;J)Lv3/z;

    move-result-object v0

    iput-object v0, v2, Le/p/a/y/k/g;->l:Lv3/z;

    goto :goto_15

    :catchall_0
    move-exception v0

    .line 146
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Le/p/a/y/k/n;

    invoke-direct {v1, v0}, Le/p/a/y/k/n;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 148
    :cond_35
    iget-object v0, v2, Le/p/a/y/k/g;->j:Le/p/a/u;

    if-eqz v0, :cond_36

    .line 149
    invoke-virtual {v0}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object v0

    iget-object v1, v2, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 150
    iput-object v1, v0, Le/p/a/u$b;->a:Le/p/a/s;

    .line 151
    iget-object v1, v2, Le/p/a/y/k/g;->c:Le/p/a/u;

    invoke-static {v1}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/p/a/u$b;->e(Le/p/a/u;)Le/p/a/u$b;

    iget-object v1, v2, Le/p/a/y/k/g;->j:Le/p/a/u;

    invoke-static {v1}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/p/a/u$b;->b(Le/p/a/u;)Le/p/a/u$b;

    invoke-virtual {v0}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v0

    iput-object v0, v2, Le/p/a/y/k/g;->k:Le/p/a/u;

    goto :goto_14

    .line 152
    :cond_36
    new-instance v0, Le/p/a/u$b;

    invoke-direct {v0}, Le/p/a/u$b;-><init>()V

    iget-object v1, v2, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 153
    iput-object v1, v0, Le/p/a/u$b;->a:Le/p/a/s;

    .line 154
    iget-object v1, v2, Le/p/a/y/k/g;->c:Le/p/a/u;

    invoke-static {v1}, Le/p/a/y/k/g;->k(Le/p/a/u;)Le/p/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/p/a/u$b;->e(Le/p/a/u;)Le/p/a/u$b;

    sget-object v1, Le/p/a/r;->c:Le/p/a/r;

    .line 155
    iput-object v1, v0, Le/p/a/u$b;->b:Le/p/a/r;

    const/16 v1, 0x1f8

    .line 156
    iput v1, v0, Le/p/a/u$b;->c:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 157
    iput-object v1, v0, Le/p/a/u$b;->d:Ljava/lang/String;

    .line 158
    sget-object v1, Le/p/a/y/k/g;->q:Le/p/a/v;

    .line 159
    iput-object v1, v0, Le/p/a/u$b;->g:Le/p/a/v;

    .line 160
    invoke-virtual {v0}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v0

    iput-object v0, v2, Le/p/a/y/k/g;->k:Le/p/a/u;

    .line 161
    :goto_14
    iget-object v0, v2, Le/p/a/y/k/g;->k:Le/p/a/u;

    invoke-virtual {v2, v0}, Le/p/a/y/k/g;->l(Le/p/a/u;)Le/p/a/u;

    move-result-object v0

    iput-object v0, v2, Le/p/a/y/k/g;->k:Le/p/a/u;

    :cond_37
    :goto_15
    return-void

    :cond_38
    move-object v2, v1

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final l(Le/p/a/u;)Le/p/a/u;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/g;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/p/a/y/k/g;->k:Le/p/a/u;

    .line 2
    iget-object v0, v0, Le/p/a/u;->f:Le/p/a/m;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "gzip"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p1, Le/p/a/u;->g:Le/p/a/v;

    if-nez v0, :cond_2

    return-object p1

    .line 5
    :cond_2
    new-instance v2, Lv3/o;

    invoke-virtual {v0}, Le/p/a/v;->j()Lv3/h;

    move-result-object v0

    invoke-direct {v2, v0}, Lv3/o;-><init>(Lv3/b0;)V

    .line 6
    iget-object v0, p1, Le/p/a/u;->f:Le/p/a/m;

    .line 7
    invoke-virtual {v0}, Le/p/a/m;->c()Le/p/a/m$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    invoke-virtual {v0}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Le/p/a/u;->c()Le/p/a/u$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Le/p/a/u$b;->d(Le/p/a/m;)Le/p/a/u$b;

    new-instance v1, Le/p/a/y/k/k;

    const-string v3, "$this$buffer"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Lv3/v;

    invoke-direct {v3, v2}, Lv3/v;-><init>(Lv3/b0;)V

    .line 11
    invoke-direct {v1, v0, v3}, Le/p/a/y/k/k;-><init>(Le/p/a/m;Lv3/h;)V

    .line 12
    iput-object v1, p1, Le/p/a/u$b;->g:Le/p/a/v;

    .line 13
    invoke-virtual {p1}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public m()V
    .locals 4

    .line 1
    iget-wide v0, p0, Le/p/a/y/k/g;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/p/a/y/k/g;->e:J

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
