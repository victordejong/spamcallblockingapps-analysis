.class final enum Li/c/b0/e/b/a$s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/b/a$s;",
        ">;",
        "Li/c/b0/d/q<",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/b/a$s;

.field public static final enum INSTANCE:Li/c/b0/e/b/a$s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/b/a$s;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/b/a$s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/b/a$s;->INSTANCE:Li/c/b0/e/b/a$s;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/e/b/a$s;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/e/b/a$s;->$VALUES:[Li/c/b0/e/b/a$s;

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

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/b/a$s;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/b/a$s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/b/a$s;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/b/a$s;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/b/a$s;->$VALUES:[Li/c/b0/e/b/a$s;

    invoke-virtual {v0}, [Li/c/b0/e/b/a$s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/b/a$s;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/b/a$s;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
