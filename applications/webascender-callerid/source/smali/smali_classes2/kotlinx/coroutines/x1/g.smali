.class public final Lkotlinx/coroutines/x1/g;
.super Lkotlinx/coroutines/x1/m;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/x1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/x1/g;

    invoke-direct {v0}, Lkotlinx/coroutines/x1/g;-><init>()V

    sput-object v0, Lkotlinx/coroutines/x1/g;->a:Lkotlinx/coroutines/x1/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x1/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
