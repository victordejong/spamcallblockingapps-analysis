.class final enum Li/c/b0/g/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/g/g$a;",
        ">;",
        "Li/c/b0/b/c0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/g/g$a;

.field public static final enum INSTANCE:Li/c/b0/g/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/g/g$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/g/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/g/g$a;->INSTANCE:Li/c/b0/g/g$a;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/g/g$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/g/g$a;->$VALUES:[Li/c/b0/g/g$a;

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

.method public static valueOf(Ljava/lang/String;)Li/c/b0/g/g$a;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/g/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/g/g$a;

    return-object p0
.end method

.method public static values()[Li/c/b0/g/g$a;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/g/g$a;->$VALUES:[Li/c/b0/g/g$a;

    invoke-virtual {v0}, [Li/c/b0/g/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/g/g$a;

    return-object v0
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    return-void
.end method
