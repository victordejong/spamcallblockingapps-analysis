.class public Ls1/a/a/a/v0/h/m;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ls1/a/a/a/v0/h/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ls1/a/a/a/v0/h/n;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/h/n;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/m;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/m;-><init>()V

    .line 2
    new-instance v1, Ls1/a/a/a/v0/h/w;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/h/w;-><init>(Ls1/a/a/a/v0/h/n;)V

    .line 3
    sput-object v1, Ls1/a/a/a/v0/h/m;->b:Ls1/a/a/a/v0/h/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/n;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/m;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ls1/a/a/a/v0/h/m;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ls1/a/a/a/v0/h/c;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ls1/a/a/a/v0/h/c;

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    check-cast p0, [B

    .line 6
    sget-object v0, Ls1/a/a/a/v0/h/i;->a:[B

    .line 7
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2
    instance-of v0, p2, Ls1/a/a/a/v0/h/n;

    if-eqz v0, :cond_0

    check-cast p2, Ls1/a/a/a/v0/h/n;

    invoke-interface {p2}, Ls1/a/a/a/v0/h/n;->getUnderlyingElements()Ljava/util/List;

    move-result-object p2

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 4
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/m;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ls1/a/a/a/v0/h/m;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Ls1/a/a/a/v0/h/c;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Ls1/a/a/a/v0/h/c;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c;->o()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 9
    :cond_2
    check-cast v0, [B

    .line 10
    sget-object v1, Ls1/a/a/a/v0/h/i;->a:[B

    .line 11
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ls1/a/a/a/v0/f/d;->s2([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getByteString(I)Ls1/a/a/a/v0/h/c;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/h/c;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Ls1/a/a/a/v0/h/c;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ls1/a/a/a/v0/h/c;->c(Ljava/lang/String;)Ls1/a/a/a/v0/h/c;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    move-object v1, v0

    check-cast v1, [B

    .line 7
    sget-object v2, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    .line 8
    array-length v2, v1

    .line 9
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance v1, Ls1/a/a/a/v0/h/o;

    invoke-direct {v1, v3}, Ls1/a/a/a/v0/h/o;-><init>([B)V

    :goto_0
    if-eq v1, v0, :cond_2

    .line 12
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiableView()Ls1/a/a/a/v0/h/n;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/w;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/h/w;-><init>(Ls1/a/a/a/v0/h/n;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/h/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/h/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public z1(Ls1/a/a/a/v0/h/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method
