.class public final enum Li/c/b0/e/k/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;
.implements Li/c/b0/b/c0;
.implements Li/c/b0/b/r;
.implements Li/c/b0/b/g0;
.implements Li/c/b0/b/g;
.implements Lo/a/c;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/k/g;",
        ">;",
        "Li/c/b0/b/o<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/b/c0<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/b/r<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/b/g0<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/b/g;",
        "Lo/a/c;",
        "Li/c/b0/c/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/k/g;

.field public static final enum INSTANCE:Li/c/b0/e/k/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/k/g;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/k/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/k/g;->INSTANCE:Li/c/b0/e/k/g;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/e/k/g;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/e/k/g;->$VALUES:[Li/c/b0/e/k/g;

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

.method public static asObserver()Li/c/b0/b/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/c0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/g;->INSTANCE:Li/c/b0/e/k/g;

    return-object v0
.end method

.method public static asSubscriber()Lo/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/g;->INSTANCE:Li/c/b0/e/k/g;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/k/g;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/k/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/k/g;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/k/g;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/g;->$VALUES:[Li/c/b0/e/k/g;

    invoke-virtual {v0}, [Li/c/b0/e/k/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/k/g;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Lo/a/c;->cancel()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
