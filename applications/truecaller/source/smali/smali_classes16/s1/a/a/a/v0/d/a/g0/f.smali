.class public final enum Ls1/a/a/a/v0/d/a/g0/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/d/a/g0/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/d/a/g0/f;

.field public static final enum b:Ls1/a/a/a/v0/d/a/g0/f;

.field public static final synthetic c:[Ls1/a/a/a/v0/d/a/g0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/d/a/g0/f;

    new-instance v1, Ls1/a/a/a/v0/d/a/g0/f;

    const-string v2, "READ_ONLY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/g0/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/g0/f;->a:Ls1/a/a/a/v0/d/a/g0/f;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/g0/f;

    const-string v2, "MUTABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/g0/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/g0/f;->b:Ls1/a/a/a/v0/d/a/g0/f;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/d/a/g0/f;->c:[Ls1/a/a/a/v0/d/a/g0/f;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/d/a/g0/f;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/g0/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/d/a/g0/f;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/d/a/g0/f;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/d/a/g0/f;->c:[Ls1/a/a/a/v0/d/a/g0/f;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/d/a/g0/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/d/a/g0/f;

    return-object v0
.end method
