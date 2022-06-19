.class public final Lq3/a/w2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/w2/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/a/w2/l<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u000c\u001a\u00020\rH\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0012\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u0011\u0010\u0010\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u0011\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\tR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$Itr;",
        "E",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "channel",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "(Lkotlinx/coroutines/channels/AbstractChannel;)V",
        "result",
        "",
        "getResult",
        "()Ljava/lang/Object;",
        "setResult",
        "(Ljava/lang/Object;)V",
        "hasNext",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasNextResult",
        "hasNextSuspend",
        "next",
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


# instance fields
.field public final a:Lq3/a/w2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq3/a/w2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    .line 2
    sget-object p1, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    iput-object p1, p0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    iget-object v1, p0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lq3/a/w2/a$a;->b(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    invoke-virtual {v1}, Lq3/a/w2/a;->B()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    if-eq v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lq3/a/w2/a$a;->b(Ljava/lang/Object;)Z

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->s1(Ls1/w/d;)Lq3/a/o;

    move-result-object v1

    .line 9
    new-instance v2, Lq3/a/w2/a$d;

    invoke-direct {v2, p0, v1}, Lq3/a/w2/a$d;-><init>(Lq3/a/w2/a$a;Lq3/a/n;)V

    .line 10
    :cond_2
    iget-object v3, p0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    .line 11
    sget v4, Lq3/a/w2/a;->d:I

    .line 12
    invoke-virtual {v3, v2}, Lq3/a/w2/a;->t(Lq3/a/w2/y;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iget-object v0, p0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Lq3/a/w2/a$f;

    invoke-direct {v3, v0, v2}, Lq3/a/w2/a$f;-><init>(Lq3/a/w2/a;Lq3/a/w2/y;)V

    invoke-virtual {v1, v3}, Lq3/a/o;->r(Ls1/z/b/l;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v3, p0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    invoke-virtual {v3}, Lq3/a/w2/a;->B()Ljava/lang/Object;

    move-result-object v3

    .line 17
    iput-object v3, p0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    .line 18
    instance-of v4, v3, Lq3/a/w2/o;

    if-eqz v4, :cond_5

    .line 19
    check-cast v3, Lq3/a/w2/o;

    iget-object v0, v3, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v1, v0}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v3}, Lq3/a/w2/o;->T()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-eq v3, v0, :cond_2

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    iget-object v2, p0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    iget-object v2, v2, Lq3/a/w2/c;->a:Ls1/z/b/l;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 25
    :cond_6
    iget-object v4, v1, Lq3/a/o;->e:Ls1/w/f;

    .line 26
    new-instance v5, Lq3/a/y2/r;

    invoke-direct {v5, v2, v3, v4}, Lq3/a/y2/r;-><init>(Ls1/z/b/l;Ljava/lang/Object;Ls1/w/f;)V

    move-object v2, v5

    .line 27
    :goto_0
    iget v3, v1, Lq3/a/r0;->c:I

    invoke-virtual {v1, v0, v3, v2}, Lq3/a/o;->H(Ljava/lang/Object;ILs1/z/b/l;)V

    .line 28
    :goto_1
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 29
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_7

    const-string v1, "frame"

    .line 30
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq3/a/w2/o;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lq3/a/w2/o;

    iget-object v0, p1, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lq3/a/w2/o;->T()Ljava/lang/Throwable;

    move-result-object p1

    .line 3
    sget-object v0, Lq3/a/y2/w;->a:Ljava/lang/String;

    .line 4
    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lq3/a/w2/o;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    if-eq v0, v1, :cond_0

    .line 4
    iput-object v1, p0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Lq3/a/w2/o;

    invoke-virtual {v0}, Lq3/a/w2/o;->T()Ljava/lang/Throwable;

    move-result-object v0

    .line 7
    sget-object v1, Lq3/a/y2/w;->a:Ljava/lang/String;

    .line 8
    throw v0
.end method
