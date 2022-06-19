.class public final Lq3/a/x2/o1/z;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ljava/lang/Integer;",
        "Ls1/w/f$a;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "count",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/x2/o1/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/o1/x<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/x2/o1/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/o1/x<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/o1/z;->b:Lq3/a/x2/o1/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ls1/w/f$a;

    .line 2
    invoke-interface {p2}, Ls1/w/f$a;->getKey()Ls1/w/f$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lq3/a/x2/o1/z;->b:Lq3/a/x2/o1/x;

    iget-object v1, v1, Lq3/a/x2/o1/x;->e:Ls1/w/f;

    invoke-interface {v1, v0}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v1

    .line 4
    sget v2, Lq3/a/p1;->e0:I

    sget-object v2, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    if-eq v0, v2, :cond_1

    if-eq p2, v1, :cond_0

    const/high16 p1, -0x80000000

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 5
    :cond_1
    check-cast v1, Lq3/a/p1;

    .line 6
    check-cast p2, Lq3/a/p1;

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_1

    :cond_2
    if-ne p2, v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    instance-of v2, p2, Lq3/a/y2/u;

    if-nez v2, :cond_5

    :goto_1
    if-ne p2, v1, :cond_4

    if-nez v1, :cond_0

    .line 8
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", expected child of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_5
    check-cast p2, Lq3/a/y2/u;

    .line 12
    invoke-virtual {p2}, Lq3/a/u1;->U()Lq3/a/s;

    move-result-object p2

    if-nez p2, :cond_6

    move-object p2, v0

    goto :goto_0

    :cond_6
    invoke-interface {p2}, Lq3/a/s;->getParent()Lq3/a/p1;

    move-result-object p2

    goto :goto_0
.end method
