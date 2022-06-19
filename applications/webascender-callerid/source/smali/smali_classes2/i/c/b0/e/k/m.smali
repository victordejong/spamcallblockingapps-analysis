.class public final enum Li/c/b0/e/k/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/k/m$a;,
        Li/c/b0/e/k/m$c;,
        Li/c/b0/e/k/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/k/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/k/m;

.field public static final enum COMPLETE:Li/c/b0/e/k/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/k/m;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/k/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/e/k/m;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/e/k/m;->$VALUES:[Li/c/b0/e/k/m;

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

.method public static accept(Ljava/lang/Object;Li/c/b0/b/c0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li/c/b0/b/c0<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 6
    sget-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 7
    invoke-interface {p1}, Li/c/b0/b/c0;->onComplete()V

    return v1

    .line 8
    :cond_0
    instance-of v0, p0, Li/c/b0/e/k/m$b;

    if-eqz v0, :cond_1

    .line 9
    check-cast p0, Li/c/b0/e/k/m$b;

    iget-object p0, p0, Li/c/b0/e/k/m$b;->f:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 10
    :cond_1
    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static accept(Ljava/lang/Object;Lo/a/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lo/a/b<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lo/a/b;->onComplete()V

    return v1

    .line 3
    :cond_0
    instance-of v0, p0, Li/c/b0/e/k/m$b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Li/c/b0/e/k/m$b;

    iget-object p0, p0, Li/c/b0/e/k/m$b;->f:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 5
    :cond_1
    invoke-interface {p1, p0}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static acceptFull(Ljava/lang/Object;Li/c/b0/b/c0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li/c/b0/b/c0<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 8
    sget-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 9
    invoke-interface {p1}, Li/c/b0/b/c0;->onComplete()V

    return v1

    .line 10
    :cond_0
    instance-of v0, p0, Li/c/b0/e/k/m$b;

    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Li/c/b0/e/k/m$b;

    iget-object p0, p0, Li/c/b0/e/k/m$b;->f:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 12
    :cond_1
    instance-of v0, p0, Li/c/b0/e/k/m$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 13
    check-cast p0, Li/c/b0/e/k/m$a;

    iget-object p0, p0, Li/c/b0/e/k/m$a;->f:Li/c/b0/c/c;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    return v1

    .line 14
    :cond_2
    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static acceptFull(Ljava/lang/Object;Lo/a/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lo/a/b<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lo/a/b;->onComplete()V

    return v1

    .line 3
    :cond_0
    instance-of v0, p0, Li/c/b0/e/k/m$b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Li/c/b0/e/k/m$b;

    iget-object p0, p0, Li/c/b0/e/k/m$b;->f:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 5
    :cond_1
    instance-of v0, p0, Li/c/b0/e/k/m$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Li/c/b0/e/k/m$c;

    iget-object p0, p0, Li/c/b0/e/k/m$c;->f:Lo/a/c;

    invoke-interface {p1, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    return v1

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static complete()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    return-object v0
.end method

.method public static disposable(Li/c/b0/c/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/k/m$a;

    invoke-direct {v0, p0}, Li/c/b0/e/k/m$a;-><init>(Li/c/b0/c/c;)V

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/k/m$b;

    invoke-direct {v0, p0}, Li/c/b0/e/k/m$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getDisposable(Ljava/lang/Object;)Li/c/b0/c/c;
    .locals 0

    .line 1
    check-cast p0, Li/c/b0/e/k/m$a;

    iget-object p0, p0, Li/c/b0/e/k/m$a;->f:Li/c/b0/c/c;

    return-object p0
.end method

.method public static getError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    check-cast p0, Li/c/b0/e/k/m$b;

    iget-object p0, p0, Li/c/b0/e/k/m$b;->f:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static getSubscription(Ljava/lang/Object;)Lo/a/c;
    .locals 0

    .line 1
    check-cast p0, Li/c/b0/e/k/m$c;

    iget-object p0, p0, Li/c/b0/e/k/m$c;->f:Lo/a/c;

    return-object p0
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static isComplete(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/m;->COMPLETE:Li/c/b0/e/k/m;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDisposable(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Li/c/b0/e/k/m$a;

    return p0
.end method

.method public static isError(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Li/c/b0/e/k/m$b;

    return p0
.end method

.method public static isSubscription(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Li/c/b0/e/k/m$c;

    return p0
.end method

.method public static next(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static subscription(Lo/a/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/k/m$c;

    invoke-direct {v0, p0}, Li/c/b0/e/k/m$c;-><init>(Lo/a/c;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/k/m;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/k/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/k/m;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/k/m;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/m;->$VALUES:[Li/c/b0/e/k/m;

    invoke-virtual {v0}, [Li/c/b0/e/k/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/k/m;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
