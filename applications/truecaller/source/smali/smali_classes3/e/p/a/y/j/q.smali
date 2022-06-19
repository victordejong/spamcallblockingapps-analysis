.class public Le/p/a/y/j/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv3/p;

.field public b:I

.field public final c:Lv3/h;


# direct methods
.method public constructor <init>(Lv3/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/p/a/y/j/q$a;

    invoke-direct {v0, p0, p1}, Le/p/a/y/j/q$a;-><init>(Le/p/a/y/j/q;Lv3/b0;)V

    .line 3
    new-instance p1, Le/p/a/y/j/q$b;

    invoke-direct {p1, p0}, Le/p/a/y/j/q$b;-><init>(Le/p/a/y/j/q;)V

    .line 4
    new-instance v1, Lv3/p;

    invoke-direct {v1, v0, p1}, Lv3/p;-><init>(Lv3/b0;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Le/p/a/y/j/q;->a:Lv3/p;

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->K(Lv3/b0;)Lv3/h;

    move-result-object p1

    iput-object p1, p0, Le/p/a/y/j/q;->c:Lv3/h;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/j/q;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Le/p/a/y/j/q;->b:I

    .line 2
    iget-object p1, p0, Le/p/a/y/j/q;->c:Lv3/h;

    invoke-interface {p1}, Lv3/h;->readInt()I

    move-result p1

    if-ltz p1, :cond_5

    const/16 v0, 0x400

    if-gt p1, v0, :cond_4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Le/p/a/y/j/q;->c:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 5
    iget-object v3, p0, Le/p/a/y/j/q;->c:Lv3/h;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lv3/h;->e0(J)Lv3/i;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lv3/i;->p()Lv3/i;

    move-result-object v2

    .line 7
    iget-object v3, p0, Le/p/a/y/j/q;->c:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    .line 8
    iget-object v4, p0, Le/p/a/y/j/q;->c:Lv3/h;

    int-to-long v5, v3

    invoke-interface {v4, v5, v6}, Lv3/h;->e0(J)Lv3/i;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lv3/i;->f()I

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    new-instance v4, Le/p/a/y/j/l;

    invoke-direct {v4, v2, v3}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "name.size == 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    iget p1, p0, Le/p/a/y/j/q;->b:I

    if-lez p1, :cond_3

    .line 13
    iget-object p1, p0, Le/p/a/y/j/q;->a:Lv3/p;

    invoke-virtual {p1}, Lv3/p;->b()Z

    .line 14
    iget p1, p0, Le/p/a/y/j/q;->b:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "compressedLimit > 0: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/p/a/y/j/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object v0

    .line 15
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "numberOfPairs > 1024: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "numberOfPairs < 0: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
