.class public abstract Ln3/y/b/a/w0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/h;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/b/a/w0/e0;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ln3/y/b/a/w0/k;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ln3/y/b/a/w0/e;->a:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ln3/y/b/a/w0/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, Ln3/y/b/a/w0/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln3/y/b/a/w0/e;->c:I

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/e;->d:Ln3/y/b/a/w0/k;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ln3/y/b/a/w0/e;->c:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/w0/e0;

    iget-boolean v3, p0, Ln3/y/b/a/w0/e;->a:Z

    .line 6
    invoke-interface {v2, p0, v0, v3, p1}, Ln3/y/b/a/w0/e0;->g(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/e;->d:Ln3/y/b/a/w0/k;

    .line 2
    sget v1, Ln3/y/b/a/x0/x;->a:I

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ln3/y/b/a/w0/e;->c:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/w0/e0;

    iget-boolean v3, p0, Ln3/y/b/a/w0/e;->a:Z

    invoke-interface {v2, p0, v0, v3}, Ln3/y/b/a/w0/e0;->e(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ln3/y/b/a/w0/e;->d:Ln3/y/b/a/w0/k;

    return-void
.end method

.method public final f(Ln3/y/b/a/w0/k;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ln3/y/b/a/w0/e;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/w0/e0;

    iget-boolean v2, p0, Ln3/y/b/a/w0/e;->a:Z

    invoke-interface {v1, p0, p1, v2}, Ln3/y/b/a/w0/e0;->d(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Ln3/y/b/a/w0/k;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/y/b/a/w0/e;->d:Ln3/y/b/a/w0/k;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ln3/y/b/a/w0/e;->c:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/y/b/a/w0/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/w0/e0;

    iget-boolean v2, p0, Ln3/y/b/a/w0/e;->a:Z

    invoke-interface {v1, p0, p1, v2}, Ln3/y/b/a/w0/e0;->h(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
