.class public final Lkotlinx/coroutines/u1;
.super Lkotlinx/coroutines/x;
.source "SourceFile"


# static fields
.field public static final g:Lkotlinx/coroutines/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/u1;

    invoke-direct {v0}, Lkotlinx/coroutines/u1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/u1;->g:Lkotlinx/coroutines/u1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lkotlin/u/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lkotlinx/coroutines/v1;->g:Lkotlinx/coroutines/v1$a;

    invoke-interface {p1, p2}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/v1;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lkotlinx/coroutines/v1;->f:Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Lkotlin/u/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
