.class public final Lcom/google/gson/w/n/f;
.super Lcom/google/gson/stream/c;
.source "SourceFile"


# static fields
.field private static final t:Ljava/io/Writer;

.field private static final u:Lcom/google/gson/p;


# instance fields
.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/l;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Lcom/google/gson/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/w/n/f$a;

    invoke-direct {v0}, Lcom/google/gson/w/n/f$a;-><init>()V

    sput-object v0, Lcom/google/gson/w/n/f;->t:Ljava/io/Writer;

    .line 2
    new-instance v0, Lcom/google/gson/p;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/gson/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gson/w/n/f;->u:Lcom/google/gson/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/w/n/f;->t:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/google/gson/m;->a:Lcom/google/gson/m;

    iput-object v0, p0, Lcom/google/gson/w/n/f;->s:Lcom/google/gson/l;

    return-void
.end method

.method private G0()Lcom/google/gson/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/l;

    return-object v0
.end method

.method private I0(Lcom/google/gson/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/w/n/f;->G0()Lcom/google/gson/l;

    move-result-object v0

    check-cast v0, Lcom/google/gson/n;

    .line 4
    iget-object v1, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/n;->n(Ljava/lang/String;Lcom/google/gson/l;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-object p1, p0, Lcom/google/gson/w/n/f;->s:Lcom/google/gson/l;

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/google/gson/w/n/f;->G0()Lcom/google/gson/l;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/google/gson/i;

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Lcom/google/gson/i;

    invoke-virtual {v0, p1}, Lcom/google/gson/i;->n(Lcom/google/gson/l;)V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public c()Lcom/google/gson/stream/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/i;

    invoke-direct {v0}, Lcom/google/gson/i;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    .line 3
    iget-object v1, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    sget-object v1, Lcom/google/gson/w/n/f;->u:Lcom/google/gson/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/google/gson/stream/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/n;

    invoke-direct {v0}, Lcom/google/gson/n;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    .line 3
    iget-object v1, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

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

.method public g()Lcom/google/gson/stream/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/gson/w/n/f;->G0()Lcom/google/gson/l;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/i;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

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

.method public i()Lcom/google/gson/stream/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/gson/w/n/f;->G0()Lcom/google/gson/l;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/n;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

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

.method public k0(J)Lcom/google/gson/stream/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/p;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public l0(Ljava/lang/Boolean;)Lcom/google/gson/stream/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/w/n/f;->z()Lcom/google/gson/stream/c;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0, p1}, Lcom/google/gson/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public p0(Ljava/lang/Number;)Lcom/google/gson/stream/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/w/n/f;->z()Lcom/google/gson/stream/c;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/c;->o()Z

    move-result v0

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
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0, p1}, Lcom/google/gson/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public q0(Ljava/lang/String;)Lcom/google/gson/stream/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/w/n/f;->z()Lcom/google/gson/stream/c;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0, p1}, Lcom/google/gson/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/google/gson/stream/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/gson/w/n/f;->G0()Lcom/google/gson/l;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/n;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/gson/w/n/f;->r:Ljava/lang/String;

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

.method public s0(Z)Lcom/google/gson/stream/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/p;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public y0()Lcom/google/gson/l;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/gson/w/n/f;->s:Lcom/google/gson/l;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/w/n/f;->q:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z()Lcom/google/gson/stream/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/m;->a:Lcom/google/gson/m;

    invoke-direct {p0, v0}, Lcom/google/gson/w/n/f;->I0(Lcom/google/gson/l;)V

    return-object p0
.end method
