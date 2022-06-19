.class public abstract Ln3/i/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/i/a/a/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[D[[D)Ln3/i/a/a/b;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move p0, v1

    :cond_0
    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    .line 2
    new-instance p0, Ln3/i/a/a/d;

    invoke-direct {p0, p1, p2}, Ln3/i/a/a/d;-><init>([D[[D)V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ln3/i/a/a/b$a;

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-object p1, p2, v0

    invoke-direct {p0, v1, v2, p1}, Ln3/i/a/a/b$a;-><init>(D[D)V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ln3/i/a/a/e;

    invoke-direct {p0, p1, p2}, Ln3/i/a/a/e;-><init>([D[[D)V

    return-object p0
.end method


# virtual methods
.method public abstract b(DI)D
.end method

.method public abstract c(D[D)V
.end method

.method public abstract d(D[F)V
.end method

.method public abstract e(D[D)V
.end method

.method public abstract f()[D
.end method
