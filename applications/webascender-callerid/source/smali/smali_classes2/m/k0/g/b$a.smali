.class abstract Lm/k0/g/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field private final f:Ln/m;

.field private g:Z

.field final synthetic h:Lm/k0/g/b;


# direct methods
.method public constructor <init>(Lm/k0/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln/m;

    invoke-static {p1}, Lm/k0/g/b;->m(Lm/k0/g/b;)Ln/h;

    move-result-object p1

    invoke-interface {p1}, Ln/d0;->timeout()Ln/e0;

    move-result-object p1

    invoke-direct {v0, p1}, Ln/m;-><init>(Ln/e0;)V

    iput-object v0, p0, Lm/k0/g/b$a;->f:Ln/m;

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/k0/g/b$a;->g:Z

    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->n(Lm/k0/g/b;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->n(Lm/k0/g/b;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    iget-object v2, p0, Lm/k0/g/b$a;->f:Ln/m;

    invoke-static {v0, v2}, Lm/k0/g/b;->i(Lm/k0/g/b;Ln/m;)V

    .line 4
    iget-object v0, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-static {v0, v1}, Lm/k0/g/b;->p(Lm/k0/g/b;I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-static {v2}, Lm/k0/g/b;->n(Lm/k0/g/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/k0/g/b$a;->g:Z

    return-void
.end method

.method public read(Ln/f;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->m(Lm/k0/g/b;)Ln/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lm/k0/g/b$a;->h:Lm/k0/g/b;

    invoke-virtual {p2}, Lm/k0/g/b;->e()Lokhttp3/internal/connection/g;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/internal/connection/g;->z()V

    .line 3
    invoke-virtual {p0}, Lm/k0/g/b$a;->b()V

    .line 4
    throw p1
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/g/b$a;->f:Ln/m;

    return-object v0
.end method
