.class public final enum Li/c/z/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/z/a/c;",
        ">;",
        "Li/c/z/c/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/z/a/c;

.field public static final enum INSTANCE:Li/c/z/a/c;

.field public static final enum NEVER:Li/c/z/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Li/c/z/a/c;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/z/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    .line 2
    new-instance v1, Li/c/z/a/c;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/c/z/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/c/z/a/c;->NEVER:Li/c/z/a/c;

    const/4 v3, 0x2

    new-array v3, v3, [Li/c/z/a/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Li/c/z/a/c;->$VALUES:[Li/c/z/a/c;

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

.method public static complete(Li/c/c;)V
    .locals 1

    .line 5
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p0, v0}, Li/c/c;->a(Li/c/w/b;)V

    .line 6
    invoke-interface {p0}, Li/c/c;->onComplete()V

    return-void
.end method

.method public static complete(Li/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "*>;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p0, v0}, Li/c/l;->a(Li/c/w/b;)V

    .line 4
    invoke-interface {p0}, Li/c/l;->onComplete()V

    return-void
.end method

.method public static complete(Li/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p0, v0}, Li/c/q;->a(Li/c/w/b;)V

    .line 2
    invoke-interface {p0}, Li/c/q;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/c;)V
    .locals 1

    .line 3
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p1, v0}, Li/c/c;->a(Li/c/w/b;)V

    .line 4
    invoke-interface {p1, p0}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li/c/l<",
            "*>;)V"
        }
    .end annotation

    .line 7
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p1, v0}, Li/c/l;->a(Li/c/w/b;)V

    .line 8
    invoke-interface {p1, p0}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li/c/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p1, v0}, Li/c/q;->a(Li/c/w/b;)V

    .line 2
    invoke-interface {p1, p0}, Li/c/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li/c/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li/c/t<",
            "*>;)V"
        }
    .end annotation

    .line 5
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    invoke-interface {p1, v0}, Li/c/t;->a(Li/c/w/b;)V

    .line 6
    invoke-interface {p1, p0}, Li/c/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/c/z/a/c;
    .locals 1

    .line 1
    const-class v0, Li/c/z/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/z/a/c;

    return-object p0
.end method

.method public static values()[Li/c/z/a/c;
    .locals 1

    .line 1
    sget-object v0, Li/c/z/a/c;->$VALUES:[Li/c/z/a/c;

    invoke-virtual {v0}, [Li/c/z/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/z/a/c;

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
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
