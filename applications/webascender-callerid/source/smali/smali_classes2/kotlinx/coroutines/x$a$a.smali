.class final Lkotlinx/coroutines/x$a$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/x$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lkotlin/u/g$b;",
        "Lkotlinx/coroutines/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lkotlinx/coroutines/x$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/x$a$a;

    invoke-direct {v0}, Lkotlinx/coroutines/x$a$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/x$a$a;->f:Lkotlinx/coroutines/x$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/u/g$b;)Lkotlinx/coroutines/x;
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/x;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlinx/coroutines/x;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/u/g$b;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/x$a$a;->a(Lkotlin/u/g$b;)Lkotlinx/coroutines/x;

    move-result-object p1

    return-object p1
.end method
