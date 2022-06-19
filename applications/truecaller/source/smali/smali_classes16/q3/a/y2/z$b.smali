.class public final Lq3/a/y2/z$b;
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
        "Lq3/a/l2<",
        "*>;",
        "Ls1/w/f$a;",
        "Lq3/a/l2<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<no name provided>",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "found",
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
.field public static final b:Lq3/a/y2/z$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/a/y2/z$b;

    invoke-direct {v0}, Lq3/a/y2/z$b;-><init>()V

    sput-object v0, Lq3/a/y2/z$b;->b:Lq3/a/y2/z$b;

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
    .locals 0

    .line 1
    check-cast p1, Lq3/a/l2;

    check-cast p2, Ls1/w/f$a;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p2, Lq3/a/l2;

    if-eqz p1, :cond_1

    check-cast p2, Lq3/a/l2;

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
