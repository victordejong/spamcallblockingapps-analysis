.class public final Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/d$d;,
        Lm/d$c;,
        Lm/d$a;,
        Lm/d$b;
    }
.end annotation


# static fields
.field public static final l:Lm/d$b;


# instance fields
.field private final f:Lm/k0/d/d;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/d$b;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/d;->l:Lm/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lm/k0/h/b;->a:Lm/k0/h/b;

    invoke-direct {p0, p1, p2, p3, v0}, Lm/d;-><init>(Ljava/io/File;JLm/k0/h/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLm/k0/h/b;)V
    .locals 9

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm/k0/d/d;

    .line 3
    sget-object v8, Lm/k0/e/e;->h:Lm/k0/e/e;

    const v4, 0x31191

    const/4 v5, 0x2

    move-object v1, v0

    move-object v2, p4

    move-object v3, p1

    move-wide v6, p2

    .line 4
    invoke-direct/range {v1 .. v8}, Lm/k0/d/d;-><init>(Lm/k0/h/b;Ljava/io/File;IIJLm/k0/e/e;)V

    iput-object v0, p0, Lm/d;->f:Lm/k0/d/d;

    return-void
.end method

.method private final a(Lm/k0/d/d$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lm/k0/d/d$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/d;->f:Lm/k0/d/d;

    invoke-virtual {v0}, Lm/k0/d/d;->A()V

    return-void
.end method

.method public final c(Lm/e0;)Lm/g0;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lm/d;->l:Lm/d$b;

    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/d$b;->b(Lm/y;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lm/d;->f:Lm/k0/d/d;

    invoke-virtual {v2, v0}, Lm/k0/d/d;->C(Ljava/lang/String;)Lm/k0/d/d$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 3
    :try_start_1
    new-instance v2, Lm/d$c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lm/k0/d/d$c;->b(I)Ln/d0;

    move-result-object v3

    invoke-direct {v2, v3}, Lm/d$c;-><init>(Ln/d0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    invoke-virtual {v2, v0}, Lm/d$c;->d(Lm/k0/d/d$c;)Lm/g0;

    move-result-object v0

    .line 5
    invoke-virtual {v2, p1, v0}, Lm/d$c;->b(Lm/e0;Lm/g0;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0}, Lm/g0;->a()Lm/h0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    :cond_0
    return-object v1

    :cond_1
    return-object v0

    .line 7
    :catch_0
    invoke-static {v0}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    :catch_1
    :cond_2
    return-object v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/d;->f:Lm/k0/d/d;

    invoke-virtual {v0}, Lm/k0/d/d;->close()V

    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lm/d;->h:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lm/d;->g:I

    return v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/d;->f:Lm/k0/d/d;

    invoke-virtual {v0}, Lm/k0/d/d;->flush()V

    return-void
.end method

.method public final g(Lm/g0;)Lm/k0/d/b;
    .locals 9

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lm/k0/f/f;->a:Lm/k0/f/f;

    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object v2

    invoke-virtual {v2}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm/k0/f/f;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/d;->i(Lm/e0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    .line 4
    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-object v2

    .line 5
    :cond_1
    sget-object v0, Lm/d;->l:Lm/d$b;

    invoke-virtual {v0, p1}, Lm/d$b;->a(Lm/g0;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    .line 6
    :cond_2
    new-instance v1, Lm/d$c;

    invoke-direct {v1, p1}, Lm/d$c;-><init>(Lm/g0;)V

    .line 7
    :try_start_1
    iget-object v3, p0, Lm/d;->f:Lm/k0/d/d;

    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object p1

    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/d$b;->b(Lm/y;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lm/k0/d/d;->z(Lm/k0/d/d;Ljava/lang/String;JILjava/lang/Object;)Lm/k0/d/d$a;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    .line 8
    :try_start_2
    invoke-virtual {v1, p1}, Lm/d$c;->f(Lm/k0/d/d$a;)V

    .line 9
    new-instance v0, Lm/d$d;

    invoke-direct {v0, p0, p1}, Lm/d$d;-><init>(Lm/d;Lm/k0/d/d$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :cond_3
    return-object v2

    :catch_1
    move-object p1, v2

    .line 10
    :catch_2
    invoke-direct {p0, p1}, Lm/d;->a(Lm/k0/d/d$a;)V

    return-object v2
.end method

.method public final i(Lm/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/d;->f:Lm/k0/d/d;

    sget-object v1, Lm/d;->l:Lm/d$b;

    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm/d$b;->b(Lm/y;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/k0/d/d;->s0(Ljava/lang/String;)Z

    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm/d;->h:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm/d;->g:I

    return-void
.end method

.method public final declared-synchronized o()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lm/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm/d;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r(Lm/k0/d/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "cacheStrategy"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lm/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm/d;->k:I

    .line 2
    invoke-virtual {p1}, Lm/k0/d/c;->b()Lm/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget p1, p0, Lm/d;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm/d;->i:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lm/k0/d/c;->a()Lm/g0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lm/d;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm/d;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final y(Lm/g0;Lm/g0;)V
    .locals 1

    const-string v0, "cached"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lm/d$c;

    invoke-direct {v0, p2}, Lm/d$c;-><init>(Lm/g0;)V

    .line 2
    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lm/d$a;

    invoke-virtual {p1}, Lm/d$a;->a()Lm/k0/d/d$c;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lm/k0/d/d$c;->a()Lm/k0/d/d$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lm/d$c;->f(Lm/k0/d/d$a;)V

    .line 5
    invoke-virtual {p2}, Lm/k0/d/d$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :catch_0
    invoke-direct {p0, p2}, Lm/d;->a(Lm/k0/d/d$a;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
