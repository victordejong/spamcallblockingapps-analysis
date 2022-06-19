.class public final Ln3/y/b/a/q0/u/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/u/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/p;

.field public final b:Ln3/y/b/a/q0/u/k;

.field public c:Ln3/y/b/a/q0/u/i;

.field public d:Ln3/y/b/a/q0/u/c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Ln3/y/b/a/x0/m;

.field public final j:Ln3/y/b/a/x0/m;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    .line 3
    new-instance p1, Ln3/y/b/a/q0/u/k;

    invoke-direct {p1}, Ln3/y/b/a/q0/u/k;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 4
    new-instance p1, Ln3/y/b/a/x0/m;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d$b;->i:Ln3/y/b/a/x0/m;

    .line 5
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d$b;->j:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public final a()Ln3/y/b/a/q0/u/j;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v1, v0, Ln3/y/b/a/q0/u/k;->a:Ln3/y/b/a/q0/u/c;

    iget v1, v1, Ln3/y/b/a/q0/u/c;->a:I

    .line 2
    iget-object v0, v0, Ln3/y/b/a/q0/u/k;->n:Ln3/y/b/a/q0/u/j;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    invoke-virtual {v0, v1}, Ln3/y/b/a/q0/u/i;->a(I)Ln3/y/b/a/q0/u/j;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, v0, Ln3/y/b/a/q0/u/j;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public b(Ln3/y/b/a/q0/u/i;Ln3/y/b/a/q0/u/c;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/q0/u/d$b;->d:Ln3/y/b/a/q0/u/c;

    .line 5
    iget-object p2, p0, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    iget-object p1, p1, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {p2, p1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/q0/u/d$b;->d()V

    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    iget v0, p0, Ln3/y/b/a/q0/u/d$b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 2
    iget v0, p0, Ln3/y/b/a/q0/u/d$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Ln3/y/b/a/q0/u/d$b;->f:I

    .line 3
    iget-object v2, p0, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v2, v2, Ln3/y/b/a/q0/u/k;->g:[I

    iget v3, p0, Ln3/y/b/a/q0/u/d$b;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 4
    iput v3, p0, Ln3/y/b/a/q0/u/d$b;->g:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln3/y/b/a/q0/u/d$b;->f:I

    return v0

    :cond_0
    return v1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Ln3/y/b/a/q0/u/k;->d:I

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Ln3/y/b/a/q0/u/k;->r:J

    .line 4
    iput-boolean v1, v0, Ln3/y/b/a/q0/u/k;->l:Z

    .line 5
    iput-boolean v1, v0, Ln3/y/b/a/q0/u/k;->q:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Ln3/y/b/a/q0/u/k;->n:Ln3/y/b/a/q0/u/j;

    .line 7
    iput v1, p0, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 8
    iput v1, p0, Ln3/y/b/a/q0/u/d$b;->g:I

    .line 9
    iput v1, p0, Ln3/y/b/a/q0/u/d$b;->f:I

    .line 10
    iput v1, p0, Ln3/y/b/a/q0/u/d$b;->h:I

    return-void
.end method
