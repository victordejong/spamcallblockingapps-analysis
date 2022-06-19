.class public final Li/a/d/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/c/d;


# static fields
.field private static final a:Li/a/d/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/d/d/g;

    invoke-direct {v0}, Li/a/d/d/g;-><init>()V

    sput-object v0, Li/a/d/d/g;->a:Li/a/d/d/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Li/a/d/d/g;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/d/g;->a:Li/a/d/d/g;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-static {}, Li/a/d/d/d;->b()Li/a/d/d/d;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/d/d;->a()J

    move-result-wide v0

    return-wide v0
.end method
