.class final Lm/k0/g/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
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
    iput-object p1, p0, Lm/k0/g/b$e;->h:Lm/k0/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln/m;

    invoke-static {p1}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object p1

    invoke-interface {p1}, Ln/b0;->timeout()Ln/e0;

    move-result-object p1

    invoke-direct {v0, p1}, Ln/m;-><init>(Ln/e0;)V

    iput-object v0, p0, Lm/k0/g/b$e;->f:Ln/m;

    return-void
.end method


# virtual methods
.method public B0(Ln/f;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lm/k0/g/b$e;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lm/k0/b;->i(JJJ)V

    .line 3
    iget-object v0, p0, Lm/k0/g/b$e;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ln/b0;->B0(Ln/f;J)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm/k0/g/b$e;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm/k0/g/b$e;->g:Z

    .line 3
    iget-object v0, p0, Lm/k0/g/b$e;->h:Lm/k0/g/b;

    iget-object v1, p0, Lm/k0/g/b$e;->f:Ln/m;

    invoke-static {v0, v1}, Lm/k0/g/b;->i(Lm/k0/g/b;Ln/m;)V

    .line 4
    iget-object v0, p0, Lm/k0/g/b$e;->h:Lm/k0/g/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lm/k0/g/b;->p(Lm/k0/g/b;I)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/k0/g/b$e;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/k0/g/b$e;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    invoke-interface {v0}, Ln/g;->flush()V

    return-void
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/g/b$e;->f:Ln/m;

    return-object v0
.end method
