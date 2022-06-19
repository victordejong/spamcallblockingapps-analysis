.class public final enum Ls1/a/a/a/v0/d/a/f0/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/d/a/f0/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/d/a/f0/a0;

.field public static final enum b:Ls1/a/a/a/v0/d/a/f0/a0;

.field public static final synthetic c:[Ls1/a/a/a/v0/d/a/f0/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/d/a/f0/a0;

    new-instance v1, Ls1/a/a/a/v0/d/a/f0/a0;

    const-string v2, "SOURCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/f0/a0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/f0/a0;->a:Ls1/a/a/a/v0/d/a/f0/a0;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/f0/a0;

    const-string v2, "BINARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/f0/a0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/f0/a0;->b:Ls1/a/a/a/v0/d/a/f0/a0;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/d/a/f0/a0;->c:[Ls1/a/a/a/v0/d/a/f0/a0;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/d/a/f0/a0;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/f0/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/d/a/f0/a0;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/d/a/f0/a0;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/d/a/f0/a0;->c:[Ls1/a/a/a/v0/d/a/f0/a0;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/d/a/f0/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/d/a/f0/a0;

    return-object v0
.end method
