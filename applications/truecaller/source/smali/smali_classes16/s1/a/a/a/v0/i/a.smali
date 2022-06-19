.class public final enum Ls1/a/a/a/v0/i/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/i/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Ls1/a/a/a/v0/i/a;

.field public static final enum d:Ls1/a/a/a/v0/i/a;

.field public static final synthetic e:[Ls1/a/a/a/v0/i/a;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/i/a;

    new-instance v7, Ls1/a/a/a/v0/i/a;

    const-string v2, "NO_ARGUMENTS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/i/a;-><init>(Ljava/lang/String;IZZI)V

    sput-object v7, Ls1/a/a/a/v0/i/a;->c:Ls1/a/a/a/v0/i/a;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Ls1/a/a/a/v0/i/a;

    const-string v9, "UNLESS_EMPTY"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object v8, v1

    .line 1
    invoke-direct/range {v8 .. v13}, Ls1/a/a/a/v0/i/a;-><init>(Ljava/lang/String;IZZI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ls1/a/a/a/v0/i/a;

    const-string v3, "ALWAYS_PARENTHESIZED"

    const/4 v4, 0x2

    .line 2
    invoke-direct {v1, v3, v4, v2, v2}, Ls1/a/a/a/v0/i/a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Ls1/a/a/a/v0/i/a;->d:Ls1/a/a/a/v0/i/a;

    aput-object v1, v0, v4

    sput-object v0, Ls1/a/a/a/v0/i/a;->e:[Ls1/a/a/a/v0/i/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ls1/a/a/a/v0/i/a;->a:Z

    iput-boolean p4, p0, Ls1/a/a/a/v0/i/a;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move p4, v1

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ls1/a/a/a/v0/i/a;->a:Z

    iput-boolean p4, p0, Ls1/a/a/a/v0/i/a;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/i/a;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/i/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/i/a;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/i/a;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/i/a;->e:[Ls1/a/a/a/v0/i/a;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/i/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/i/a;

    return-object v0
.end method
