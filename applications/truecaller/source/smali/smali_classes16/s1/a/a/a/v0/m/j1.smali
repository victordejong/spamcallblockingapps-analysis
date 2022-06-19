.class public final enum Ls1/a/a/a/v0/m/j1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/m/j1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Ls1/a/a/a/v0/m/j1;

.field public static final enum d:Ls1/a/a/a/v0/m/j1;

.field public static final enum e:Ls1/a/a/a/v0/m/j1;

.field public static final synthetic f:[Ls1/a/a/a/v0/m/j1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/m/j1;

    new-instance v8, Ls1/a/a/a/v0/m/j1;

    const-string v2, "INVARIANT"

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    .line 1
    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/m/j1;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v8, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Ls1/a/a/a/v0/m/j1;

    const-string v10, "IN_VARIANCE"

    const/4 v11, 0x1

    const-string v12, "in"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object v9, v1

    .line 2
    invoke-direct/range {v9 .. v15}, Ls1/a/a/a/v0/m/j1;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v1, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ls1/a/a/a/v0/m/j1;

    const-string v4, "OUT_VARIANCE"

    const/4 v5, 0x2

    const-string v6, "out"

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v9}, Ls1/a/a/a/v0/m/j1;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v1, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/m/j1;->f:[Ls1/a/a/a/v0/m/j1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls1/a/a/a/v0/m/j1;->a:Ljava/lang/String;

    iput-boolean p5, p0, Ls1/a/a/a/v0/m/j1;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/m/j1;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/m/j1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/j1;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/m/j1;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/m/j1;->f:[Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/m/j1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/m/j1;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/j1;->a:Ljava/lang/String;

    return-object v0
.end method
