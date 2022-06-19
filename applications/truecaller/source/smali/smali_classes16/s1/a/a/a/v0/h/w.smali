.class public Ls1/a/a/a/v0/h/w;
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


# instance fields
.field public final a:Ls1/a/a/a/v0/h/n;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/h/w;->a:Ls1/a/a/a/v0/h/n;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/w;->a:Ls1/a/a/a/v0/h/n;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getByteString(I)Ls1/a/a/a/v0/h/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/w;->a:Ls1/a/a/a/v0/h/n;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/h/n;->getByteString(I)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Ls1/a/a/a/v0/h/w;->a:Ls1/a/a/a/v0/h/n;

    invoke-interface {v0}, Ls1/a/a/a/v0/h/n;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiableView()Ls1/a/a/a/v0/h/n;
    .locals 0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/w$b;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/h/w$b;-><init>(Ls1/a/a/a/v0/h/w;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/w$a;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/h/w$a;-><init>(Ls1/a/a/a/v0/h/w;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/w;->a:Ls1/a/a/a/v0/h/n;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public z1(Ls1/a/a/a/v0/h/c;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
