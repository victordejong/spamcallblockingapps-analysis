.class final enum Li/a/b/r$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/a/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/b/r$a;",
        ">;",
        "Li/a/b/p;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/b/r$a;

.field public static final enum INSTANCE:Li/a/b/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/a/b/r$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/b/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/b/r$a;->INSTANCE:Li/a/b/r$a;

    const/4 v1, 0x1

    new-array v1, v1, [Li/a/b/r$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/a/b/r$a;->$VALUES:[Li/a/b/r$a;

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

.method public static valueOf(Ljava/lang/String;)Li/a/b/r$a;
    .locals 1

    .line 1
    const-class v0, Li/a/b/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/b/r$a;

    return-object p0
.end method

.method public static values()[Li/a/b/r$a;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/r$a;->$VALUES:[Li/a/b/r$a;

    invoke-virtual {v0}, [Li/a/b/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/b/r$a;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
