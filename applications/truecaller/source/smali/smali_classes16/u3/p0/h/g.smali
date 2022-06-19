.class public final Lu3/p0/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0$a;


# instance fields
.field public a:I

.field public final b:Lu3/p0/g/e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Lu3/p0/g/c;

.field public final f:Lu3/g0;

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lu3/p0/g/e;Ljava/util/List;ILu3/p0/g/c;Lu3/g0;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/p0/g/e;",
            "Ljava/util/List<",
            "+",
            "Lu3/b0;",
            ">;I",
            "Lu3/p0/g/c;",
            "Lu3/g0;",
            "III)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/h/g;->b:Lu3/p0/g/e;

    iput-object p2, p0, Lu3/p0/h/g;->c:Ljava/util/List;

    iput p3, p0, Lu3/p0/h/g;->d:I

    iput-object p4, p0, Lu3/p0/h/g;->e:Lu3/p0/g/c;

    iput-object p5, p0, Lu3/p0/h/g;->f:Lu3/g0;

    iput p6, p0, Lu3/p0/h/g;->g:I

    iput p7, p0, Lu3/p0/h/g;->h:I

    iput p8, p0, Lu3/p0/h/g;->i:I

    return-void
.end method

.method public static b(Lu3/p0/h/g;ILu3/p0/g/c;Lu3/g0;IIII)Lu3/p0/h/g;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget v1, v0, Lu3/p0/h/g;->d:I

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Lu3/p0/h/g;->e:Lu3/p0/g/c;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p2

    :goto_1
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Lu3/p0/h/g;->f:Lu3/g0;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p3

    :goto_2
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_3

    .line 4
    iget v1, v0, Lu3/p0/h/g;->g:I

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, p4

    :goto_3
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_4

    .line 5
    iget v1, v0, Lu3/p0/h/g;->h:I

    move v9, v1

    goto :goto_4

    :cond_4
    move/from16 v9, p5

    :goto_4
    and-int/lit8 v1, p7, 0x20

    if-eqz v1, :cond_5

    .line 6
    iget v1, v0, Lu3/p0/h/g;->i:I

    move v10, v1

    goto :goto_5

    :cond_5
    move/from16 v10, p6

    :goto_5
    const-string v1, "request"

    .line 7
    invoke-static {v7, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lu3/p0/h/g;

    iget-object v3, v0, Lu3/p0/h/g;->b:Lu3/p0/g/e;

    iget-object v4, v0, Lu3/p0/h/g;->c:Ljava/util/List;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lu3/p0/h/g;-><init>(Lu3/p0/g/e;Ljava/util/List;ILu3/p0/g/c;Lu3/g0;III)V

    return-object v1
.end method


# virtual methods
.method public a(Lu3/g0;)Lu3/k0;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lu3/p0/h/g;->d:I

    iget-object v1, p0, Lu3/p0/h/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lu3/p0/h/g;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Lu3/p0/h/g;->a:I

    .line 3
    iget-object v0, p0, Lu3/p0/h/g;->e:Lu3/p0/g/c;

    const-string v1, " must call proceed() exactly once"

    const-string v4, "network interceptor "

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Lu3/p0/g/c;->e:Lu3/p0/g/d;

    .line 5
    iget-object v5, p1, Lu3/g0;->b:Lu3/a0;

    .line 6
    invoke-virtual {v0, v5}, Lu3/p0/g/d;->b(Lu3/a0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Lu3/p0/h/g;->a:I

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lu3/p0/h/g;->c:Ljava/util/List;

    iget v2, p0, Lu3/p0/h/g;->d:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/b0;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lu3/p0/h/g;->c:Ljava/util/List;

    iget v1, p0, Lu3/p0/h/g;->d:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/b0;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    :goto_2
    iget v0, p0, Lu3/p0/h/g;->d:I

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3a

    move-object v5, p0

    move-object v8, p1

    invoke-static/range {v5 .. v12}, Lu3/p0/h/g;->b(Lu3/p0/h/g;ILu3/p0/g/c;Lu3/g0;IIII)Lu3/p0/h/g;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lu3/p0/h/g;->c:Ljava/util/List;

    iget v5, p0, Lu3/p0/h/g;->d:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/b0;

    .line 14
    invoke-interface {v0, p1}, Lu3/b0;->a(Lu3/b0$a;)Lu3/k0;

    move-result-object v5

    const-string v6, "interceptor "

    if-eqz v5, :cond_b

    .line 15
    iget-object v7, p0, Lu3/p0/h/g;->e:Lu3/p0/g/c;

    if-eqz v7, :cond_8

    .line 16
    iget v7, p0, Lu3/p0/h/g;->d:I

    add-int/2addr v7, v3

    iget-object v8, p0, Lu3/p0/h/g;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget p1, p1, Lu3/p0/h/g;->a:I

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    move p1, v2

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v3

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_8
    :goto_5
    iget-object p1, v5, Lu3/k0;->h:Lu3/l0;

    if-eqz p1, :cond_9

    move v2, v3

    :cond_9
    if-eqz v2, :cond_a

    return-object v5

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public call()Lu3/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/h/g;->b:Lu3/p0/g/e;

    return-object v0
.end method

.method public request()Lu3/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/h/g;->f:Lu3/g0;

    return-object v0
.end method
