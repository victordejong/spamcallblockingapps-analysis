.class public final Lq3/a/w2/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/a3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/w2/a;->f()Lq3/a/a3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/a3/b<",
        "Lq3/a/w2/m<",
        "+TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001JQ\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072(\u0010\u0008\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "kotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "registerSelectClause1",
        "",
        "R",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
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
.field public final synthetic a:Lq3/a/w2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/a<",
            "TE;>;"
        }
    .end annotation
.end field


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

    iput-object p1, p0, Lq3/a/w2/a$i;->a:Lq3/a/w2/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lq3/a/a3/c;Ls1/z/b/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/a3/c<",
            "-TR;>;",
            "Ls1/z/b/p<",
            "-",
            "Lq3/a/w2/m<",
            "+TE;>;-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$i;->a:Lq3/a/w2/a;

    .line 2
    sget v1, Lq3/a/w2/a;->d:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    :goto_0
    move-object v1, p1

    check-cast v1, Lq3/a/a3/a;

    invoke-virtual {v1}, Lq3/a/a3/a;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v2, v0, Lq3/a/w2/c;->b:Lq3/a/y2/k;

    .line 6
    invoke-virtual {v2}, Lq3/a/y2/m;->F()Lq3/a/y2/m;

    move-result-object v2

    instance-of v2, v2, Lq3/a/w2/c0;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lq3/a/w2/a;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 7
    new-instance v2, Lq3/a/w2/a$e;

    invoke-direct {v2, v0, p1, p2, v3}, Lq3/a/w2/a$e;-><init>(Lq3/a/w2/a;Lq3/a/a3/c;Ls1/z/b/p;I)V

    .line 8
    invoke-virtual {v0, v2}, Lq3/a/w2/a;->t(Lq3/a/w2/y;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Lq3/a/a3/a;->u(Lq3/a/v0;)V

    :cond_3
    if-eqz v3, :cond_0

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {v0, p1}, Lq3/a/w2/a;->C(Lq3/a/a3/c;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    sget-object v3, Lq3/a/a3/d;->a:Ljava/lang/Object;

    sget-object v3, Lq3/a/a3/d;->b:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    :goto_2
    return-void

    .line 12
    :cond_5
    sget-object v3, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    if-ne v2, v3, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    sget-object v3, Lq3/a/y2/c;->b:Ljava/lang/Object;

    if-ne v2, v3, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    instance-of v3, v2, Lq3/a/w2/o;

    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {v1}, Lq3/a/a3/a;->v()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    .line 16
    :cond_8
    check-cast v2, Lq3/a/w2/o;

    iget-object v2, v2, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    .line 17
    new-instance v3, Lq3/a/w2/m$a;

    invoke-direct {v3, v2}, Lq3/a/w2/m$a;-><init>(Ljava/lang/Throwable;)V

    .line 18
    new-instance v2, Lq3/a/w2/m;

    invoke-direct {v2, v3}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-static {p2, v2, v1}, Ls1/a/a/a/v0/f/d;->w3(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)V

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    .line 20
    check-cast v2, Lq3/a/w2/o;

    iget-object v2, v2, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    .line 21
    new-instance v3, Lq3/a/w2/m$a;

    invoke-direct {v3, v2}, Lq3/a/w2/m$a;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 22
    :cond_a
    new-instance v3, Lq3/a/w2/m;

    invoke-direct {v3, v2}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    .line 23
    invoke-static {p2, v3, v1}, Ls1/a/a/a/v0/f/d;->w3(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)V

    goto :goto_0
.end method
