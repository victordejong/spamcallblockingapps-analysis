.class public final enum Ls1/a/a/a/v0/d/a/d0/o/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/d/a/d0/o/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/d/a/d0/o/b;

.field public static final enum b:Ls1/a/a/a/v0/d/a/d0/o/b;

.field public static final enum c:Ls1/a/a/a/v0/d/a/d0/o/b;

.field public static final synthetic d:[Ls1/a/a/a/v0/d/a/d0/o/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/d/a/d0/o/b;

    new-instance v1, Ls1/a/a/a/v0/d/a/d0/o/b;

    const-string v2, "INFLEXIBLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/d0/o/b;->a:Ls1/a/a/a/v0/d/a/d0/o/b;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/d0/o/b;

    const-string v2, "FLEXIBLE_UPPER_BOUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/d0/o/b;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/d0/o/b;

    const-string v2, "FLEXIBLE_LOWER_BOUND"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/d0/o/b;->c:Ls1/a/a/a/v0/d/a/d0/o/b;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/o/b;->d:[Ls1/a/a/a/v0/d/a/d0/o/b;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/d/a/d0/o/b;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/d/a/d0/o/b;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/d/a/d0/o/b;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/d/a/d0/o/b;->d:[Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/d/a/d0/o/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/d/a/d0/o/b;

    return-object v0
.end method
