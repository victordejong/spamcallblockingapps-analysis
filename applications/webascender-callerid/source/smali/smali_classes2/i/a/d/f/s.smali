.class public abstract Li/a/d/f/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li/a/d/f/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/d/f/t;

    invoke-direct {v0}, Li/a/d/f/t;-><init>()V

    invoke-virtual {v0}, Li/a/d/f/t;->a()Li/a/d/f/s;

    move-result-object v0

    sput-object v0, Li/a/d/f/s;->a:Li/a/d/f/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIIII)Li/a/d/f/s;
    .locals 7

    .line 1
    new-instance v6, Li/a/d/f/e;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Li/a/d/f/e;-><init>(IIIII)V

    return-object v6
.end method

.method public static b()Li/a/d/f/s;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/s;->a:Li/a/d/f/s;

    return-object v0
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method
