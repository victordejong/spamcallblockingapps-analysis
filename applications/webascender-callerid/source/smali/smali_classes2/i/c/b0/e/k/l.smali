.class public final enum Li/c/b0/e/k/l;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/k/l;",
        ">;",
        "Li/c/b0/d/q<",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/k/l;

.field public static final enum INSTANCE:Li/c/b0/e/k/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/k/l;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/k/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/k/l;->INSTANCE:Li/c/b0/e/k/l;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/e/k/l;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/e/k/l;->$VALUES:[Li/c/b0/e/k/l;

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

.method public static asSupplier()Li/c/b0/d/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/d/q<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/l;->INSTANCE:Li/c/b0/e/k/l;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/k/l;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/k/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/k/l;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/k/l;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/l;->$VALUES:[Li/c/b0/e/k/l;

    invoke-virtual {v0}, [Li/c/b0/e/k/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/k/l;

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
    invoke-virtual {p0}, Li/c/b0/e/k/l;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
