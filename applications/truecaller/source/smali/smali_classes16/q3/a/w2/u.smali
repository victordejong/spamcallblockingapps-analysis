.class public Lq3/a/w2/u;
.super Lq3/a/w2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/a<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\'\u0012 \u0010\u0003\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0011J!\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u00002\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0014H\u0014\u00a2\u0006\u0002\u0010\u0015J/\u0010\u0016\u001a\u00020\u00052\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bH\u0014\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0008\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\n\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/LinkedListChannel;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "isBufferAlwaysEmpty",
        "",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "offerInternal",
        "",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "onCancelIdempotentList",
        "list",
        "Lkotlinx/coroutines/internal/InlineList;",
        "Lkotlinx/coroutines/channels/Send;",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "onCancelIdempotentList-w-w6eGU",
        "(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-TE;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lq3/a/w2/a;-><init>(Ls1/z/b/l;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Lq3/a/w2/o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq3/a/w2/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_3

    check-cast p1, Lq3/a/w2/c0;

    .line 2
    instance-of v1, p1, Lq3/a/w2/c$a;

    if-eqz v1, :cond_2

    .line 3
    iget-object p2, p0, Lq3/a/w2/c;->a:Ls1/z/b/l;

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lq3/a/w2/c$a;

    iget-object p1, p1, Lq3/a/w2/c$a;->d:Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ls1/a/a/a/v0/f/d;->N(Ls1/z/b/l;Ljava/lang/Object;Lq3/a/y2/f0;)Lq3/a/y2/f0;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1, p2}, Lq3/a/w2/c0;->Q(Lq3/a/w2/o;)V

    goto :goto_2

    .line 5
    :cond_3
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/w2/c0;

    .line 8
    instance-of v4, v1, Lq3/a/w2/c$a;

    if-eqz v4, :cond_5

    .line 9
    iget-object v4, p0, Lq3/a/w2/c;->a:Ls1/z/b/l;

    if-nez v4, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    check-cast v1, Lq3/a/w2/c$a;

    iget-object v1, v1, Lq3/a/w2/c$a;->d:Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Ls1/a/a/a/v0/f/d;->N(Ls1/z/b/l;Ljava/lang/Object;Lq3/a/y2/f0;)Lq3/a/y2/f0;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {v1, p2}, Lq3/a/w2/c0;->Q(Lq3/a/w2/o;)V

    :goto_1
    if-gez v3, :cond_6

    move-object v0, v2

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    return-void

    .line 11
    :cond_8
    throw v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/w2/b;->b:Lq3/a/y2/x;

    :cond_0
    invoke-super {p0, p1}, Lq3/a/w2/c;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    sget-object v2, Lq3/a/w2/b;->c:Lq3/a/y2/x;

    if-ne v1, v2, :cond_5

    .line 3
    iget-object v2, p0, Lq3/a/w2/c;->b:Lq3/a/y2/k;

    new-instance v3, Lq3/a/w2/c$a;

    invoke-direct {v3, p1}, Lq3/a/w2/c$a;-><init>(Ljava/lang/Object;)V

    .line 4
    :cond_2
    invoke-virtual {v2}, Lq3/a/y2/m;->G()Lq3/a/y2/m;

    move-result-object v1

    .line 5
    instance-of v4, v1, Lq3/a/w2/a0;

    if-eqz v4, :cond_3

    check-cast v1, Lq3/a/w2/a0;

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1, v3, v2}, Lq3/a/y2/m;->B(Lq3/a/y2/m;Lq3/a/y2/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    return-object v0

    .line 7
    :cond_4
    instance-of v2, v1, Lq3/a/w2/o;

    if-eqz v2, :cond_0

    return-object v1

    .line 8
    :cond_5
    instance-of p1, v1, Lq3/a/w2/o;

    if-eqz p1, :cond_6

    return-object v1

    :cond_6
    const-string p1, "Invalid offerInternal result "

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
