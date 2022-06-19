.class final enum Li/a/d/f/b0/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/b0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/d/f/b0/a;",
        ">;",
        "Li/a/d/f/b0/h;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/d/f/b0/a;

.field public static final enum INSTANCE:Li/a/d/f/b0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/a/d/f/b0/a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/d/f/b0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/d/f/b0/a;->INSTANCE:Li/a/d/f/b0/a;

    const/4 v1, 0x1

    new-array v1, v1, [Li/a/d/f/b0/a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/a/d/f/b0/a;->$VALUES:[Li/a/d/f/b0/a;

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

.method public static valueOf(Ljava/lang/String;)Li/a/d/f/b0/a;
    .locals 1

    .line 1
    const-class v0, Li/a/d/f/b0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/d/f/b0/a;

    return-object p0
.end method

.method public static values()[Li/a/d/f/b0/a;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/b0/a;->$VALUES:[Li/a/d/f/b0/a;

    invoke-virtual {v0}, [Li/a/d/f/b0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/d/f/b0/a;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "AlwaysOffSampler"

    return-object v0
.end method

.method public shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Li/a/a/f/q;",
            "Li/a/a/c/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Li/a/d/f/b0/k;"
        }
    .end annotation

    .line 1
    sget-object p1, Li/a/d/f/b0/d;->b:Li/a/d/f/b0/k;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/b0/a;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
