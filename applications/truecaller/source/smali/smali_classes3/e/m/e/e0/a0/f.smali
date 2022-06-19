.class public final Le/m/e/e0/a0/f;
.super Le/m/e/g0/c;
.source "SourceFile"


# static fields
.field public static final o:Ljava/io/Writer;

.field public static final p:Le/m/e/w;


# instance fields
.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/e/q;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field public n:Le/m/e/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/e/e0/a0/f$a;

    invoke-direct {v0}, Le/m/e/e0/a0/f$a;-><init>()V

    sput-object v0, Le/m/e/e0/a0/f;->o:Ljava/io/Writer;

    .line 2
    new-instance v0, Le/m/e/w;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/e/e0/a0/f;->p:Le/m/e/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/m/e/e0/a0/f;->o:Ljava/io/Writer;

    invoke-direct {p0, v0}, Le/m/e/g0/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    .line 3
    sget-object v0, Le/m/e/s;->a:Le/m/e/s;

    iput-object v0, p0, Le/m/e/e0/a0/f;->n:Le/m/e/q;

    return-void
.end method


# virtual methods
.method public D0()Le/m/e/q;
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/e/e0/a0/f;->n:Le/m/e/q;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected one JSON element but was "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F0()Le/m/e/q;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Le/d/c/a/a;->F1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/q;

    return-object v0
.end method

.method public final G0(Le/m/e/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Le/m/e/s;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Le/m/e/g0/c;->i:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/m/e/e0/a0/f;->F0()Le/m/e/q;

    move-result-object v0

    check-cast v0, Le/m/e/t;

    .line 5
    iget-object v1, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v0, v1, p1}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iput-object p1, p0, Le/m/e/e0/a0/f;->n:Le/m/e/q;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Le/m/e/e0/a0/f;->F0()Le/m/e/q;

    move-result-object v0

    .line 11
    instance-of v1, v0, Le/m/e/n;

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Le/m/e/n;

    .line 13
    iget-object v0, v0, Le/m/e/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public I()Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/s;->a:Le/m/e/s;

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method

.method public W(D)Le/m/e/g0/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/e/g0/c;->f:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Le/m/e/w;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    sget-object v1, Le/m/e/e0/a0/f;->p:Le/m/e/w;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Le/m/e/g0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/e/n;

    invoke-direct {v0}, Le/m/e/n;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    .line 3
    iget-object v1, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public j()Le/m/e/g0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/e/t;

    invoke-direct {v0}, Le/m/e/t;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    .line 3
    iget-object v1, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public k0(J)Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/e/w;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method

.method public l()Le/m/e/g0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/e/e0/a0/f;->F0()Le/m/e/q;

    move-result-object v0

    .line 3
    instance-of v0, v0, Le/m/e/n;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n0(Ljava/lang/Boolean;)Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/m/e/s;->a:Le/m/e/s;

    invoke-virtual {p0, p1}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method

.method public p0(Ljava/lang/Number;)Le/m/e/g0/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/m/e/s;->a:Le/m/e/s;

    invoke-virtual {p0, p1}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/m/e/g0/c;->f:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method

.method public q()Le/m/e/g0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/e/e0/a0/f;->F0()Le/m/e/q;

    move-result-object v0

    .line 3
    instance-of v0, v0, Le/m/e/t;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public s(Ljava/lang/String;)Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/e/e0/a0/f;->F0()Le/m/e/q;

    move-result-object v0

    .line 3
    instance-of v0, v0, Le/m/e/t;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Le/m/e/e0/a0/f;->m:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public t0(Ljava/lang/String;)Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/m/e/s;->a:Le/m/e/s;

    invoke-virtual {p0, p1}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method

.method public z0(Z)Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/e/w;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Le/m/e/e0/a0/f;->G0(Le/m/e/q;)V

    return-object p0
.end method
