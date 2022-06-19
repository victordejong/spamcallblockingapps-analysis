.class public final enum Li/c/b0/e/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/a/d;",
        ">;",
        "Li/c/b0/e/c/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/a/d;

.field public static final enum INSTANCE:Li/c/b0/e/a/d;

.field public static final enum NEVER:Li/c/b0/e/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Li/c/b0/e/a/d;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    .line 2
    new-instance v1, Li/c/b0/e/a/d;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/c/b0/e/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/c/b0/e/a/d;->NEVER:Li/c/b0/e/a/d;

    const/4 v3, 0x2

    new-array v3, v3, [Li/c/b0/e/a/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Li/c/b0/e/a/d;->$VALUES:[Li/c/b0/e/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static complete(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p0, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 2
    invoke-interface {p0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public static complete(Li/c/b0/b/g;)V
    .locals 1

    .line 5
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p0, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 6
    invoke-interface {p0}, Li/c/b0/b/g;->onComplete()V

    return-void
.end method

.method public static complete(Li/c/b0/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "*>;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p0, v0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    invoke-interface {p0}, Li/c/b0/b/r;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li/c/b0/b/c0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 2
    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/b0/b/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li/c/b0/b/g0<",
            "*>;)V"
        }
    .end annotation

    .line 5
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    .line 6
    invoke-interface {p1, p0}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/b0/b/g;)V
    .locals 1

    .line 3
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p1, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    invoke-interface {p1, p0}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/b0/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li/c/b0/b/r<",
            "*>;)V"
        }
    .end annotation

    .line 7
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    invoke-interface {p1, v0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    .line 8
    invoke-interface {p1, p0}, Li/c/b0/b/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/a/d;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/a/d;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/a/d;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/d;->$VALUES:[Li/c/b0/e/a/d;

    invoke-virtual {v0}, [Li/c/b0/e/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/a/d;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
