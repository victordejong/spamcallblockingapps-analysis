.class public final Ls1/w/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/w/f;",
        "Ls1/w/f$a;",
        "Ls1/w/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/coroutines/CoroutineContext;",
        "acc",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final b:Ls1/w/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/w/g;

    invoke-direct {v0}, Ls1/w/g;-><init>()V

    sput-object v0, Ls1/w/g;->b:Ls1/w/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/w/f;

    check-cast p2, Ls1/w/f$a;

    const-string v0, "acc"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Ls1/w/f$a;->getKey()Ls1/w/f$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/w/f;->minusKey(Ls1/w/f$b;)Ls1/w/f;

    move-result-object p1

    .line 4
    sget-object v0, Ls1/w/h;->a:Ls1/w/h;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget v1, Ls1/w/e;->b0:I

    sget-object v1, Ls1/w/e$a;->a:Ls1/w/e$a;

    invoke-interface {p1, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v2

    check-cast v2, Ls1/w/e;

    if-nez v2, :cond_1

    .line 6
    new-instance v0, Ls1/w/c;

    invoke-direct {v0, p1, p2}, Ls1/w/c;-><init>(Ls1/w/f;Ls1/w/f$a;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Ls1/w/f;->minusKey(Ls1/w/f$b;)Ls1/w/f;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 8
    new-instance p1, Ls1/w/c;

    invoke-direct {p1, p2, v2}, Ls1/w/c;-><init>(Ls1/w/f;Ls1/w/f$a;)V

    move-object p2, p1

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ls1/w/c;

    new-instance v1, Ls1/w/c;

    invoke-direct {v1, p1, p2}, Ls1/w/c;-><init>(Ls1/w/f;Ls1/w/f$a;)V

    invoke-direct {v0, v1, v2}, Ls1/w/c;-><init>(Ls1/w/f;Ls1/w/f$a;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
