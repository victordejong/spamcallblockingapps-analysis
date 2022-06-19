.class public Lio/realm/c0;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/c0$c;,
        Lio/realm/c0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lio/realm/OrderedRealmCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/String;

.field private final h:Lio/realm/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/p<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final i:Lio/realm/a;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/c0;->i:Lio/realm/a;

    .line 3
    iput-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lio/realm/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic d(Lio/realm/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/c0;->k()V

    return-void
.end method

.method static synthetic g(Lio/realm/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic h(Lio/realm/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic i(Lio/realm/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic j(Lio/realm/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    return-void
.end method

.method private n(ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p2

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "The list is empty."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static q(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/e0;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0, p1, p2}, Lio/realm/p;->f(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 8
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0, p1}, Lio/realm/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->l()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :goto_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 3
    instance-of v0, p1, Lio/realm/internal/m;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lio/realm/internal/m;

    .line 5
    invoke-interface {v0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    sget-object v1, Lio/realm/internal/f;->INSTANCE:Lio/realm/internal/f;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0, p1}, Lio/realm/p;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/realm/c0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/c0$b;-><init>(Lio/realm/c0;Lio/realm/c0$a;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/realm/c0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/realm/c0$c;

    invoke-direct {v0, p0, p1}, Lio/realm/c0$c;-><init>(Lio/realm/c0;I)V

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/realm/c0;->n(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v1, p1}, Lio/realm/p;->k(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/c0;->i:Lio/realm/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0, p1, p2}, Lio/realm/p;->m(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/c0;->k()V

    .line 3
    iget-object v0, p0, Lio/realm/c0;->h:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->p()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/c0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/realm/c0;->s()Z

    move-result v1

    const-string v2, "byte["

    const-string v3, ","

    const/4 v4, 0x0

    const-string v5, "]"

    if-nez v1, :cond_4

    const-string v1, "RealmList<?>@["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/c0;->size()I

    move-result v1

    :goto_0
    if-ge v4, v1, :cond_2

    .line 5
    invoke-virtual {p0, v4}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    instance-of v7, v6, Lio/realm/e0;

    if-eqz v7, :cond_0

    .line 7
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_0
    instance-of v7, v6, [B

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v6, [B

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lio/realm/c0;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_4
    const-string v1, "RealmList<"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lio/realm/c0;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_5
    iget-object v1, p0, Lio/realm/c0;->f:Ljava/lang/Class;

    invoke-static {v1}, Lio/realm/c0;->q(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    iget-object v1, p0, Lio/realm/c0;->i:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v1

    iget-object v6, p0, Lio/realm/c0;->f:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lio/realm/j0;->g(Ljava/lang/Class;)Lio/realm/h0;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/h0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20
    :cond_6
    iget-object v1, p0, Lio/realm/c0;->f:Ljava/lang/Class;

    const-class v6, [B

    if-ne v1, v6, :cond_7

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ">@["

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p0}, Lio/realm/c0;->p()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "invalid"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 26
    :cond_8
    iget-object v1, p0, Lio/realm/c0;->f:Ljava/lang/Class;

    invoke-static {v1}, Lio/realm/c0;->q(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 27
    :goto_3
    invoke-virtual {p0}, Lio/realm/c0;->size()I

    move-result v1

    if-ge v4, v1, :cond_9

    .line 28
    invoke-virtual {p0, v4}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/m;

    invoke-interface {v1}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 30
    :cond_9
    invoke-virtual {p0}, Lio/realm/c0;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    .line 32
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lio/realm/c0;->size()I

    move-result v1

    if-ge v4, v1, :cond_c

    .line 33
    invoke-virtual {p0, v4}, Lio/realm/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    instance-of v6, v1, [B

    if-eqz v6, :cond_b

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 36
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 38
    :cond_c
    invoke-virtual {p0}, Lio/realm/c0;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 40
    :cond_d
    :goto_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
