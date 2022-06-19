.class public final enum Ls1/a/a/a/v0/k/b/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/k/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/k/b/b;

.field public static final enum b:Ls1/a/a/a/v0/k/b/b;

.field public static final enum c:Ls1/a/a/a/v0/k/b/b;

.field public static final enum d:Ls1/a/a/a/v0/k/b/b;

.field public static final synthetic e:[Ls1/a/a/a/v0/k/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ls1/a/a/a/v0/k/b/b;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/k/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls1/a/a/a/v0/k/b/b;->a:Ls1/a/a/a/v0/k/b/b;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/k/b/b;

    const-string v3, "PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls1/a/a/a/v0/k/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/k/b/b;->b:Ls1/a/a/a/v0/k/b/b;

    .line 3
    new-instance v3, Ls1/a/a/a/v0/k/b/b;

    const-string v5, "PROPERTY_GETTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls1/a/a/a/v0/k/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls1/a/a/a/v0/k/b/b;->c:Ls1/a/a/a/v0/k/b/b;

    .line 4
    new-instance v5, Ls1/a/a/a/v0/k/b/b;

    const-string v7, "PROPERTY_SETTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls1/a/a/a/v0/k/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls1/a/a/a/v0/k/b/b;->d:Ls1/a/a/a/v0/k/b/b;

    const/4 v7, 0x4

    new-array v7, v7, [Ls1/a/a/a/v0/k/b/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ls1/a/a/a/v0/k/b/b;->e:[Ls1/a/a/a/v0/k/b/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/k/b/b;
    .locals 1

    .line 1
    const-class v0, Ls1/a/a/a/v0/k/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/k/b/b;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/k/b/b;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/k/b/b;->e:[Ls1/a/a/a/v0/k/b/b;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/k/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/k/b/b;

    return-object v0
.end method
