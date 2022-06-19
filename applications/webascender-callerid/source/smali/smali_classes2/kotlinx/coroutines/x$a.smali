.class public final Lkotlinx/coroutines/x$a;
.super Lkotlin/u/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/u/b<",
        "Lkotlin/u/e;",
        "Lkotlinx/coroutines/x;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    .line 3
    sget-object v1, Lkotlinx/coroutines/x$a$a;->f:Lkotlinx/coroutines/x$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Lkotlin/u/b;-><init>(Lkotlin/u/g$c;Lkotlin/w/b/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x$a;-><init>()V

    return-void
.end method
