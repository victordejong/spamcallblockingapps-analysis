.class public final Lm/k0/d/d$b$a;
.super Ln/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/k0/d/d$b;->k(I)Ln/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private f:Z

.field final synthetic g:Lm/k0/d/d$b;

.field final synthetic h:Ln/d0;


# direct methods
.method constructor <init>(Lm/k0/d/d$b;Ln/d0;Ln/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/d0;",
            "Ln/d0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/k0/d/d$b$a;->g:Lm/k0/d/d$b;

    iput-object p2, p0, Lm/k0/d/d$b$a;->h:Ln/d0;

    invoke-direct {p0, p3}, Ln/l;-><init>(Ln/d0;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln/l;->close()V

    .line 2
    iget-boolean v0, p0, Lm/k0/d/d$b$a;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm/k0/d/d$b$a;->f:Z

    .line 4
    iget-object v0, p0, Lm/k0/d/d$b$a;->g:Lm/k0/d/d$b;

    iget-object v0, v0, Lm/k0/d/d$b;->j:Lm/k0/d/d;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lm/k0/d/d$b$a;->g:Lm/k0/d/d$b;

    invoke-virtual {v1}, Lm/k0/d/d$b;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lm/k0/d/d$b;->n(I)V

    .line 6
    iget-object v1, p0, Lm/k0/d/d$b$a;->g:Lm/k0/d/d$b;

    invoke-virtual {v1}, Lm/k0/d/d$b;->f()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lm/k0/d/d$b$a;->g:Lm/k0/d/d$b;

    invoke-virtual {v1}, Lm/k0/d/d$b;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lm/k0/d/d$b$a;->g:Lm/k0/d/d$b;

    iget-object v2, v1, Lm/k0/d/d$b;->j:Lm/k0/d/d;

    invoke-virtual {v2, v1}, Lm/k0/d/d;->u0(Lm/k0/d/d$b;)Z

    .line 8
    :cond_0
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
