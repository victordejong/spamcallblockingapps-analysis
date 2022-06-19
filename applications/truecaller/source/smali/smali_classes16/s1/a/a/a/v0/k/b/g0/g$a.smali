.class public final enum Ls1/a/a/a/v0/k/b/g0/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/g0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/k/b/g0/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/k/b/g0/g$a;

.field public static final enum b:Ls1/a/a/a/v0/k/b/g0/g$a;

.field public static final enum c:Ls1/a/a/a/v0/k/b/g0/g$a;

.field public static final synthetic d:[Ls1/a/a/a/v0/k/b/g0/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/k/b/g0/g$a;

    new-instance v1, Ls1/a/a/a/v0/k/b/g0/g$a;

    const-string v2, "COMPATIBLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/k/b/g0/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/k/b/g0/g$a;->a:Ls1/a/a/a/v0/k/b/g0/g$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/k/b/g0/g$a;

    const-string v2, "NEEDS_WRAPPER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/k/b/g0/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/k/b/g0/g$a;->b:Ls1/a/a/a/v0/k/b/g0/g$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/k/b/g0/g$a;

    const-string v2, "INCOMPATIBLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/k/b/g0/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/k/b/g0/g$a;->c:Ls1/a/a/a/v0/k/b/g0/g$a;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->d:[Ls1/a/a/a/v0/k/b/g0/g$a;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/k/b/g0/g$a;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/k/b/g0/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/k/b/g0/g$a;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/k/b/g0/g$a;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->d:[Ls1/a/a/a/v0/k/b/g0/g$a;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/k/b/g0/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/k/b/g0/g$a;

    return-object v0
.end method
