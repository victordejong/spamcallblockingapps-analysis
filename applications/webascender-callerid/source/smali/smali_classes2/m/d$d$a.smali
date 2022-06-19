.class public final Lm/d$d$a;
.super Ln/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/d$d;-><init>(Lm/d;Lm/k0/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lm/d$d;


# direct methods
.method constructor <init>(Lm/d$d;Ln/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/b0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/d$d$a;->g:Lm/d$d;

    invoke-direct {p0, p2}, Ln/k;-><init>(Ln/b0;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/d$d$a;->g:Lm/d$d;

    iget-object v0, v0, Lm/d$d;->e:Lm/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lm/d$d$a;->g:Lm/d$d;

    invoke-virtual {v1}, Lm/d$d;->d()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, p0, Lm/d$d$a;->g:Lm/d$d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lm/d$d;->e(Z)V

    .line 4
    iget-object v1, p0, Lm/d$d$a;->g:Lm/d$d;

    iget-object v1, v1, Lm/d$d;->e:Lm/d;

    invoke-virtual {v1}, Lm/d;->f()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lm/d;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    invoke-super {p0}, Ln/k;->close()V

    .line 7
    iget-object v0, p0, Lm/d$d$a;->g:Lm/d$d;

    invoke-static {v0}, Lm/d$d;->c(Lm/d$d;)Lm/k0/d/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lm/k0/d/d$a;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method
