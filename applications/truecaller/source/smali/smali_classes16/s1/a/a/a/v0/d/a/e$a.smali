.class public final enum Ls1/a/a/a/v0/d/a/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/d/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/d/a/e$a;

.field public static final enum b:Ls1/a/a/a/v0/d/a/e$a;

.field public static final enum c:Ls1/a/a/a/v0/d/a/e$a;

.field public static final synthetic d:[Ls1/a/a/a/v0/d/a/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/d/a/e$a;

    new-instance v1, Ls1/a/a/a/v0/d/a/e$a;

    const-string v2, "ONE_COLLECTION_PARAMETER"

    const/4 v3, 0x0

    const-string v4, "Ljava/util/Collection<+Ljava/lang/Object;>;"

    .line 1
    invoke-direct {v1, v2, v3, v4, v3}, Ls1/a/a/a/v0/d/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$a;->a:Ls1/a/a/a/v0/d/a/e$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/e$a;

    const-string v2, "OBJECT_PARAMETER_NON_GENERIC"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-direct {v1, v2, v3, v4, v3}, Ls1/a/a/a/v0/d/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$a;->b:Ls1/a/a/a/v0/d/a/e$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/e$a;

    const-string v2, "OBJECT_PARAMETER_GENERIC"

    const/4 v4, 0x2

    const-string v5, "Ljava/lang/Object;"

    .line 3
    invoke-direct {v1, v2, v4, v5, v3}, Ls1/a/a/a/v0/d/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$a;->c:Ls1/a/a/a/v0/d/a/e$a;

    aput-object v1, v0, v4

    sput-object v0, Ls1/a/a/a/v0/d/a/e$a;->d:[Ls1/a/a/a/v0/d/a/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/d/a/e$a;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/d/a/e$a;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/d/a/e$a;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/d/a/e$a;->d:[Ls1/a/a/a/v0/d/a/e$a;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/d/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/d/a/e$a;

    return-object v0
.end method
