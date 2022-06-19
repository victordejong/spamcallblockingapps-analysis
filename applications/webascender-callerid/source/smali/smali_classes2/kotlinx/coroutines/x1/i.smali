.class public abstract Lkotlinx/coroutines/x1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:J

.field public g:Lkotlinx/coroutines/x1/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lkotlinx/coroutines/x1/h;->g:Lkotlinx/coroutines/x1/h;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/x1/i;-><init>(JLkotlinx/coroutines/x1/j;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/x1/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/x1/i;->f:J

    iput-object p3, p0, Lkotlinx/coroutines/x1/i;->g:Lkotlinx/coroutines/x1/j;

    return-void
.end method
