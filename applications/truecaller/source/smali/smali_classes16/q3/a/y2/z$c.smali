.class public final Lq3/a/y2/z$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/y2/z;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Lq3/a/y2/e0;",
        "Ls1/w/f$a;",
        "Lq3/a/y2/e0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<no name provided>",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "state",
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


# static fields
.field public static final b:Lq3/a/y2/z$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/a/y2/z$c;

    invoke-direct {v0}, Lq3/a/y2/z$c;-><init>()V

    sput-object v0, Lq3/a/y2/z$c;->b:Lq3/a/y2/z$c;

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
    check-cast p1, Lq3/a/y2/e0;

    check-cast p2, Ls1/w/f$a;

    .line 2
    instance-of v0, p2, Lq3/a/l2;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lq3/a/l2;

    iget-object v0, p1, Lq3/a/y2/e0;->a:Ls1/w/f;

    invoke-interface {p2, v0}, Lq3/a/l2;->D0(Ls1/w/f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lq3/a/y2/e0;->b:[Ljava/lang/Object;

    iget v2, p1, Lq3/a/y2/e0;->d:I

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p1, Lq3/a/y2/e0;->c:[Lq3/a/l2;

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lq3/a/y2/e0;->d:I

    aput-object p2, v0, v2

    :cond_0
    return-object p1
.end method
