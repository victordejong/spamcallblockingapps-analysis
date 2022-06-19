.class Lcom/google/common/collect/c0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field i:I

.field final synthetic j:Lcom/google/common/collect/c0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/c0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$d;->j:Lcom/google/common/collect/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/c0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/t0;->g(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c0$d;->f:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/c0;->l(Lcom/google/common/collect/c0;)Lcom/google/common/collect/c0$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c0$d;->g:Lcom/google/common/collect/c0$f;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/c0;->j(Lcom/google/common/collect/c0;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/c0$d;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/c0;Lcom/google/common/collect/c0$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0$d;-><init>(Lcom/google/common/collect/c0;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->j:Lcom/google/common/collect/c0;

    invoke-static {v0}, Lcom/google/common/collect/c0;->j(Lcom/google/common/collect/c0;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/c0$d;->i:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c0$d;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->g:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c0$d;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->g:Lcom/google/common/collect/c0$f;

    invoke-static {v0}, Lcom/google/common/collect/c0;->m(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->g:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0$d;->h:Lcom/google/common/collect/c0$f;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/c0$d;->f:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/c0$f;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->g:Lcom/google/common/collect/c0$f;

    iget-object v0, v0, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0$d;->g:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/c0$d;->f:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/c0$f;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->h:Lcom/google/common/collect/c0$f;

    iget-object v0, v0, Lcom/google/common/collect/c0$f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c0$d;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->h:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/j;->c(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->j:Lcom/google/common/collect/c0;

    iget-object v1, p0, Lcom/google/common/collect/c0$d;->h:Lcom/google/common/collect/c0$f;

    iget-object v1, v1, Lcom/google/common/collect/c0$f;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/c0;->o(Lcom/google/common/collect/c0;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/c0$d;->h:Lcom/google/common/collect/c0$f;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/c0$d;->j:Lcom/google/common/collect/c0;

    invoke-static {v0}, Lcom/google/common/collect/c0;->j(Lcom/google/common/collect/c0;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/c0$d;->i:I

    return-void
.end method
