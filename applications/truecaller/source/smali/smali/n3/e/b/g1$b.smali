.class public final enum Ln3/e/b/g1$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/e/b/g1$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/e/b/g1$b;

.field public static final enum b:Ln3/e/b/g1$b;

.field public static final synthetic c:[Ln3/e/b/g1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ln3/e/b/g1$b;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/e/b/g1$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/e/b/g1$b;->a:Ln3/e/b/g1$b;

    .line 2
    new-instance v1, Ln3/e/b/g1$b;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/e/b/g1$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/e/b/g1$b;->b:Ln3/e/b/g1$b;

    const/4 v3, 0x2

    new-array v3, v3, [Ln3/e/b/g1$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ln3/e/b/g1$b;->c:[Ln3/e/b/g1$b;

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

.method public static valueOf(Ljava/lang/String;)Ln3/e/b/g1$b;
    .locals 1

    .line 1
    const-class v0, Ln3/e/b/g1$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/e/b/g1$b;

    return-object p0
.end method

.method public static values()[Ln3/e/b/g1$b;
    .locals 1

    .line 1
    sget-object v0, Ln3/e/b/g1$b;->c:[Ln3/e/b/g1$b;

    invoke-virtual {v0}, [Ln3/e/b/g1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/e/b/g1$b;

    return-object v0
.end method
