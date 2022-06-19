.class public Le/p/a/y/k/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final synthetic c:Le/p/a/y/k/g;


# direct methods
.method public constructor <init>(Le/p/a/y/k/g;ILe/p/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/p/a/y/k/g$b;->a:I

    return-void
.end method


# virtual methods
.method public a(Le/p/a/s;)Le/p/a/u;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/k/g$b;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/p/a/y/k/g$b;->b:I

    .line 2
    iget v0, p0, Le/p/a/y/k/g$b;->a:I

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-lez v0, :cond_2

    .line 3
    iget-object v4, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    iget-object v4, v4, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 4
    iget-object v4, v4, Le/p/a/q;->g:Ljava/util/List;

    sub-int/2addr v0, v1

    .line 5
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/p/a/o;

    .line 6
    iget-object v4, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    iget-object v4, v4, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v4}, Le/p/a/y/k/q;->a()Le/p/a/y/l/a;

    move-result-object v4

    .line 7
    iget-object v4, v4, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 8
    iget-object v4, v4, Le/p/a/w;->a:Le/p/a/a;

    .line 9
    iget-object v5, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 10
    iget-object v5, v5, Le/p/a/n;->d:Ljava/lang/String;

    .line 11
    iget-object v6, v4, Le/p/a/a;->a:Le/p/a/n;

    .line 12
    iget-object v6, v6, Le/p/a/n;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    iget-object v5, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 15
    iget v5, v5, Le/p/a/n;->e:I

    .line 16
    iget-object v4, v4, Le/p/a/a;->a:Le/p/a/n;

    .line 17
    iget v4, v4, Le/p/a/n;->e:I

    if-ne v5, v4, :cond_1

    .line 18
    iget v4, p0, Le/p/a/y/k/g$b;->b:I

    if-gt v4, v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    :goto_0
    iget v0, p0, Le/p/a/y/k/g$b;->a:I

    iget-object v4, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    iget-object v4, v4, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 22
    iget-object v4, v4, Le/p/a/q;->g:Ljava/util/List;

    .line 23
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 24
    new-instance v0, Le/p/a/y/k/g$b;

    iget-object v4, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    iget v5, p0, Le/p/a/y/k/g$b;->a:I

    add-int/lit8 v6, v5, 0x1

    invoke-direct {v0, v4, v6, p1}, Le/p/a/y/k/g$b;-><init>(Le/p/a/y/k/g;ILe/p/a/s;)V

    .line 25
    iget-object p1, v4, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 26
    iget-object p1, p1, Le/p/a/q;->g:Ljava/util/List;

    .line 27
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/a/o;

    .line 28
    invoke-interface {p1, v0}, Le/p/a/o;->a(Le/p/a/o$a;)Le/p/a/u;

    move-result-object v4

    .line 29
    iget v0, v0, Le/p/a/y/k/g$b;->b:I

    if-ne v0, v1, :cond_4

    if-eqz v4, :cond_3

    return-object v4

    .line 30
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_5
    iget-object v0, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    .line 33
    iget-object v0, v0, Le/p/a/y/k/g;->d:Le/p/a/y/k/i;

    .line 34
    invoke-interface {v0, p1}, Le/p/a/y/k/i;->f(Le/p/a/s;)V

    .line 35
    iget-object v0, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    .line 36
    iput-object p1, v0, Le/p/a/y/k/g;->i:Le/p/a/s;

    .line 37
    invoke-virtual {v0, p1}, Le/p/a/y/k/g;->c(Le/p/a/s;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_6
    iget-object p1, p0, Le/p/a/y/k/g$b;->c:Le/p/a/y/k/g;

    .line 40
    invoke-virtual {p1}, Le/p/a/y/k/g;->d()Le/p/a/u;

    move-result-object p1

    .line 41
    iget v0, p1, Le/p/a/u;->c:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_7

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_8

    .line 42
    :cond_7
    iget-object v1, p1, Le/p/a/u;->g:Le/p/a/v;

    .line 43
    invoke-virtual {v1}, Le/p/a/v;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_9

    :cond_8
    return-object p1

    .line 44
    :cond_9
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "HTTP "

    const-string v3, " had non-zero Content-Length: "

    invoke-static {v2, v0, v3}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    iget-object p1, p1, Le/p/a/u;->g:Le/p/a/v;

    .line 46
    invoke-virtual {p1}, Le/p/a/v;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
