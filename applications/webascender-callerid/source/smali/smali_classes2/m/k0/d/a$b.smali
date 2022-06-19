.class public final Lm/k0/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/k0/d/a;->a(Lm/k0/d/b;Lm/g0;)Lm/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private f:Z

.field final synthetic g:Ln/h;

.field final synthetic h:Lm/k0/d/b;

.field final synthetic i:Ln/g;


# direct methods
.method constructor <init>(Ln/h;Lm/k0/d/b;Ln/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/k0/d/a$b;->g:Ln/h;

    iput-object p2, p0, Lm/k0/d/a$b;->h:Lm/k0/d/b;

    iput-object p3, p0, Lm/k0/d/a$b;->i:Ln/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm/k0/d/a$b;->f:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lm/k0/b;->p(Ln/d0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm/k0/d/a$b;->f:Z

    .line 3
    iget-object v0, p0, Lm/k0/d/a$b;->h:Lm/k0/d/b;

    invoke-interface {v0}, Lm/k0/d/b;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lm/k0/d/a$b;->g:Ln/h;

    invoke-interface {v0}, Ln/d0;->close()V

    return-void
.end method

.method public read(Ln/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lm/k0/d/a$b;->g:Ln/h;

    invoke-interface {v1, p1, p2, p3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lm/k0/d/a$b;->f:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lm/k0/d/a$b;->f:Z

    .line 4
    iget-object p1, p0, Lm/k0/d/a$b;->i:Ln/g;

    invoke-interface {p1}, Ln/b0;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lm/k0/d/a$b;->i:Ln/g;

    invoke-interface {v0}, Ln/g;->m()Ln/f;

    move-result-object v3

    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Ln/f;->g(Ln/f;JJ)Ln/f;

    .line 6
    iget-object p1, p0, Lm/k0/d/a$b;->i:Ln/g;

    invoke-interface {p1}, Ln/g;->d0()Ln/g;

    return-wide p2

    :catch_0
    move-exception p1

    .line 7
    iget-boolean p2, p0, Lm/k0/d/a$b;->f:Z

    if-nez p2, :cond_2

    .line 8
    iput-boolean v0, p0, Lm/k0/d/a$b;->f:Z

    .line 9
    iget-object p2, p0, Lm/k0/d/a$b;->h:Lm/k0/d/b;

    invoke-interface {p2}, Lm/k0/d/b;->a()V

    .line 10
    :cond_2
    throw p1
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/d/a$b;->g:Ln/h;

    invoke-interface {v0}, Ln/d0;->timeout()Ln/e0;

    move-result-object v0

    return-object v0
.end method
