.class public final Ln3/z/n2;
.super Ln3/z/m2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/m2$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Ln3/z/m2;

.field public final synthetic c:Ln3/z/m2$b;


# direct methods
.method public constructor <init>(Lq3/a/n;Ln3/z/m2;Ln3/z/m2$b;)V
    .locals 0

    iput-object p1, p0, Ln3/z/n2;->a:Lq3/a/n;

    iput-object p2, p0, Ln3/z/n2;->b:Ln3/z/m2;

    iput-object p3, p0, Ln3/z/n2;->c:Ln3/z/m2$b;

    .line 1
    invoke-direct {p0}, Ln3/z/m2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;II)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/n2;->b:Ln3/z/m2;

    invoke-virtual {v0}, Ln3/z/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/z/n2;->a:Lq3/a/n;

    .line 3
    new-instance p2, Ln3/z/v$a;

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 4
    invoke-interface {p1, p2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    .line 6
    iget-object v1, p0, Ln3/z/n2;->c:Ln3/z/m2$b;

    .line 7
    new-instance v8, Ln3/z/v$a;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move-object v4, v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-ne v0, p3, :cond_2

    move-object v5, v2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int v7, p3, p2

    move-object v2, v8

    move-object v3, p1

    move v6, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 12
    iget-boolean p1, v1, Ln3/z/m2$b;->d:Z

    if-eqz p1, :cond_7

    .line 13
    iget p1, v1, Ln3/z/m2$b;->c:I

    .line 14
    iget p2, v8, Ln3/z/v$a;->d:I

    const/high16 p3, -0x80000000

    if-eq p2, p3, :cond_6

    iget p2, v8, Ln3/z/v$a;->e:I

    if-eq p2, p3, :cond_6

    const/16 p3, 0x20

    if-lez p2, :cond_4

    .line 15
    iget-object p2, v8, Ln3/z/v$a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, p1

    if-nez p2, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    iget p2, v8, Ln3/z/v$a;->d:I

    iget-object v0, v8, Ln3/z/v$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    iget p2, v8, Ln3/z/v$a;->e:I

    add-int/2addr v0, p2

    .line 17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, "PositionalDataSource requires initial load size to be a multiple of page"

    const-string v2, " size to support internal tiling. loadSize "

    .line 18
    invoke-static {v1, v2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, v8, Ln3/z/v$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    iget p3, v8, Ln3/z/v$a;->d:I

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", totalCount "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", pageSize "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_4
    :goto_2
    iget p2, v8, Ln3/z/v$a;->d:I

    rem-int/2addr p2, p1

    if-nez p2, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Initial load must be pageSize aligned.Position = "

    .line 24
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Ln3/z/v$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Placeholders requested, but totalCount not provided. Please call the three-parameter onResult method, or disable placeholders in the PagedList.Config"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    :goto_3
    iget-object p1, p0, Ln3/z/n2;->a:Lq3/a/n;

    invoke-interface {p1, v8}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
