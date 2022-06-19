.class public final Lkotlinx/coroutines/v1;
.super Lkotlin/u/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/v1$a;
    }
.end annotation


# static fields
.field public static final g:Lkotlinx/coroutines/v1$a;


# instance fields
.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/v1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/v1$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lkotlinx/coroutines/v1;->g:Lkotlinx/coroutines/v1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/v1;->g:Lkotlinx/coroutines/v1$a;

    invoke-direct {p0, v0}, Lkotlin/u/a;-><init>(Lkotlin/u/g$c;)V

    return-void
.end method
