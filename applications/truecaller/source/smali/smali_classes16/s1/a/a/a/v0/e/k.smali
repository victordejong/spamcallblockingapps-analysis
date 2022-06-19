.class public final enum Ls1/a/a/a/v0/e/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/e/k;",
        ">;",
        "Ls1/a/a/a/v0/h/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Ls1/a/a/a/v0/e/k;

.field public static final enum c:Ls1/a/a/a/v0/e/k;

.field public static final enum d:Ls1/a/a/a/v0/e/k;

.field public static final enum e:Ls1/a/a/a/v0/e/k;

.field public static final synthetic f:[Ls1/a/a/a/v0/e/k;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/k;

    const-string v1, "FINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ls1/a/a/a/v0/e/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls1/a/a/a/v0/e/k;->b:Ls1/a/a/a/v0/e/k;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/e/k;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ls1/a/a/a/v0/e/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ls1/a/a/a/v0/e/k;->c:Ls1/a/a/a/v0/e/k;

    .line 3
    new-instance v3, Ls1/a/a/a/v0/e/k;

    const-string v5, "ABSTRACT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ls1/a/a/a/v0/e/k;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ls1/a/a/a/v0/e/k;->d:Ls1/a/a/a/v0/e/k;

    .line 4
    new-instance v5, Ls1/a/a/a/v0/e/k;

    const-string v7, "SEALED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ls1/a/a/a/v0/e/k;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ls1/a/a/a/v0/e/k;->e:Ls1/a/a/a/v0/e/k;

    const/4 v7, 0x4

    new-array v7, v7, [Ls1/a/a/a/v0/e/k;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ls1/a/a/a/v0/e/k;->f:[Ls1/a/a/a/v0/e/k;

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
    iput p3, p0, Ls1/a/a/a/v0/e/k;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/e/k;
    .locals 1

    .line 1
    const-class v0, Ls1/a/a/a/v0/e/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/e/k;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/e/k;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/k;->f:[Ls1/a/a/a/v0/e/k;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/e/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/e/k;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/k;->a:I

    return v0
.end method
