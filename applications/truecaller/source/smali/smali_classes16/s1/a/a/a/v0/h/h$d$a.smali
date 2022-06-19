.class public Ls1/a/a/a/v0/h/h$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/h$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ls1/a/a/a/v0/h/h$e;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ls1/a/a/a/v0/h/h$e;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final synthetic d:Ls1/a/a/a/v0/h/h$d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/h$d;ZLs1/a/a/a/v0/h/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$d$a;->d:Ls1/a/a/a/v0/h/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    .line 3
    iget-boolean p3, p1, Ls1/a/a/a/v0/h/g;->c:Z

    if-eqz p3, :cond_0

    .line 4
    new-instance p3, Ls1/a/a/a/v0/h/k$c;

    iget-object p1, p1, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/u;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/h/u$d;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/u$d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p3, p1}, Ls1/a/a/a/v0/h/k$c;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/u;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/h/u$d;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/u$d;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 6
    :goto_0
    iput-object p3, p0, Ls1/a/a/a/v0/h/h$d$a;->a:Ljava/util/Iterator;

    .line 7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    .line 9
    :cond_1
    iput-boolean p2, p0, Ls1/a/a/a/v0/h/h$d$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(ILs1/a/a/a/v0/h/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/h/h$e;

    .line 2
    iget v0, v0, Ls1/a/a/a/v0/h/h$e;->b:I

    if-ge v0, p1, :cond_7

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/h/h$e;

    .line 4
    iget-boolean v1, p0, Ls1/a/a/a/v0/h/h$d$a;->c:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/h/y;->a:Ls1/a/a/a/v0/h/z;

    .line 7
    sget-object v2, Ls1/a/a/a/v0/h/z;->j:Ls1/a/a/a/v0/h/z;

    if-ne v1, v2, :cond_0

    .line 8
    iget-boolean v1, v0, Ls1/a/a/a/v0/h/h$e;->d:Z

    if-nez v1, :cond_0

    .line 9
    iget v0, v0, Ls1/a/a/a/v0/h/h$e;->b:I

    .line 10
    iget-object v1, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/p;

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p2, v2, v3}, Ls1/a/a/a/v0/h/e;->A(II)V

    const/16 v4, 0x10

    .line 12
    invoke-virtual {p2, v4}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 13
    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 14
    invoke-virtual {p2, v3, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    const/4 v0, 0x4

    .line 15
    invoke-virtual {p2, v2, v0}, Ls1/a/a/a/v0/h/e;->A(II)V

    goto/16 :goto_4

    .line 16
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 17
    sget-object v2, Ls1/a/a/a/v0/h/g;->d:Ls1/a/a/a/v0/h/g;

    .line 18
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/h$e;->getLiteType()Ls1/a/a/a/v0/h/y;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/h$e;->getNumber()I

    move-result v3

    .line 20
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/h$e;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    check-cast v1, Ljava/util/List;

    .line 22
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/h$e;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 23
    invoke-virtual {p2, v3, v0}, Ls1/a/a/a/v0/h/e;->A(II)V

    const/4 v0, 0x0

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 25
    invoke-static {v2, v4}, Ls1/a/a/a/v0/h/g;->d(Ls1/a/a/a/v0/h/y;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    invoke-static {p2, v2, v1}, Ls1/a/a/a/v0/h/g;->o(Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/y;Ljava/lang/Object;)V

    goto :goto_2

    .line 29
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-static {p2, v2, v3, v1}, Ls1/a/a/a/v0/h/g;->n(Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/y;ILjava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_3
    instance-of v0, v1, Ls1/a/a/a/v0/h/k;

    if-eqz v0, :cond_4

    .line 32
    check-cast v1, Ls1/a/a/a/v0/h/k;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/k;->a()Ls1/a/a/a/v0/h/p;

    move-result-object v0

    invoke-static {p2, v2, v3, v0}, Ls1/a/a/a/v0/h/g;->n(Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/y;ILjava/lang/Object;)V

    goto :goto_4

    .line 33
    :cond_4
    invoke-static {p2, v2, v3, v1}, Ls1/a/a/a/v0/h/g;->n(Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/y;ILjava/lang/Object;)V

    .line 34
    :cond_5
    :goto_4
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Ls1/a/a/a/v0/h/h$d$a;->b:Ljava/util/Map$Entry;

    goto/16 :goto_0

    :cond_7
    return-void
.end method
