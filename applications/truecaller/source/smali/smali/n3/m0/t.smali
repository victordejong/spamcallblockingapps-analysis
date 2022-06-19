.class public final enum Ln3/m0/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/m0/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/m0/t;

.field public static final enum b:Ln3/m0/t;

.field public static final synthetic c:[Ln3/m0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ln3/m0/t;

    const-string v1, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/m0/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/m0/t;->a:Ln3/m0/t;

    .line 2
    new-instance v1, Ln3/m0/t;

    const-string v3, "DROP_WORK_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/m0/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/m0/t;->b:Ln3/m0/t;

    const/4 v3, 0x2

    new-array v3, v3, [Ln3/m0/t;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ln3/m0/t;->c:[Ln3/m0/t;

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

.method public static valueOf(Ljava/lang/String;)Ln3/m0/t;
    .locals 1

    .line 1
    const-class v0, Ln3/m0/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/m0/t;

    return-object p0
.end method

.method public static values()[Ln3/m0/t;
    .locals 1

    .line 1
    sget-object v0, Ln3/m0/t;->c:[Ln3/m0/t;

    invoke-virtual {v0}, [Ln3/m0/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/m0/t;

    return-object v0
.end method
