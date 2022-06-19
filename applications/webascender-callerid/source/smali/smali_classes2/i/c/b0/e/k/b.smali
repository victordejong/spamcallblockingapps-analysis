.class public final enum Li/c/b0/e/k/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/k/b;",
        ">;",
        "Li/c/b0/d/q<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/k/b;

.field public static final enum INSTANCE:Li/c/b0/e/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/k/b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/k/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/k/b;->INSTANCE:Li/c/b0/e/k/b;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/e/k/b;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/e/k/b;->$VALUES:[Li/c/b0/e/k/b;

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

.method public static asFunction()Li/c/b0/d/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/d/o<",
            "TO;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/b;->INSTANCE:Li/c/b0/e/k/b;

    return-object v0
.end method

.method public static asSupplier()Li/c/b0/d/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/d/q<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/k/b;->INSTANCE:Li/c/b0/e/k/b;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/k/b;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/k/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/k/b;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/k/b;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/b;->$VALUES:[Li/c/b0/e/k/b;

    invoke-virtual {v0}, [Li/c/b0/e/k/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/k/b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/k/b;->apply(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/k/b;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
