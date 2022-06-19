.class public final enum Ls1/a/a/a/v0/e/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/e/j;",
        ">;",
        "Ls1/a/a/a/v0/h/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Ls1/a/a/a/v0/e/j;

.field public static final enum c:Ls1/a/a/a/v0/e/j;

.field public static final enum d:Ls1/a/a/a/v0/e/j;

.field public static final enum e:Ls1/a/a/a/v0/e/j;

.field public static final synthetic f:[Ls1/a/a/a/v0/e/j;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/j;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ls1/a/a/a/v0/e/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls1/a/a/a/v0/e/j;->b:Ls1/a/a/a/v0/e/j;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/e/j;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ls1/a/a/a/v0/e/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ls1/a/a/a/v0/e/j;->c:Ls1/a/a/a/v0/e/j;

    .line 3
    new-instance v3, Ls1/a/a/a/v0/e/j;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ls1/a/a/a/v0/e/j;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ls1/a/a/a/v0/e/j;->d:Ls1/a/a/a/v0/e/j;

    .line 4
    new-instance v5, Ls1/a/a/a/v0/e/j;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ls1/a/a/a/v0/e/j;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ls1/a/a/a/v0/e/j;->e:Ls1/a/a/a/v0/e/j;

    const/4 v7, 0x4

    new-array v7, v7, [Ls1/a/a/a/v0/e/j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ls1/a/a/a/v0/e/j;->f:[Ls1/a/a/a/v0/e/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Ls1/a/a/a/v0/e/j;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/e/j;
    .locals 1

    .line 1
    const-class v0, Ls1/a/a/a/v0/e/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/e/j;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/e/j;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/j;->f:[Ls1/a/a/a/v0/e/j;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/e/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/e/j;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/j;->a:I

    return v0
.end method
