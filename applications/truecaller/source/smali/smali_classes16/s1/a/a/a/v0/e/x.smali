.class public final enum Ls1/a/a/a/v0/e/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/e/x;",
        ">;",
        "Ls1/a/a/a/v0/h/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Ls1/a/a/a/v0/e/x;

.field public static final enum c:Ls1/a/a/a/v0/e/x;

.field public static final enum d:Ls1/a/a/a/v0/e/x;

.field public static final enum e:Ls1/a/a/a/v0/e/x;

.field public static final enum f:Ls1/a/a/a/v0/e/x;

.field public static final enum g:Ls1/a/a/a/v0/e/x;

.field public static final synthetic h:[Ls1/a/a/a/v0/e/x;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/x;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ls1/a/a/a/v0/e/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls1/a/a/a/v0/e/x;->b:Ls1/a/a/a/v0/e/x;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/e/x;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ls1/a/a/a/v0/e/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ls1/a/a/a/v0/e/x;->c:Ls1/a/a/a/v0/e/x;

    .line 3
    new-instance v3, Ls1/a/a/a/v0/e/x;

    const-string v5, "PROTECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ls1/a/a/a/v0/e/x;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ls1/a/a/a/v0/e/x;->d:Ls1/a/a/a/v0/e/x;

    .line 4
    new-instance v5, Ls1/a/a/a/v0/e/x;

    const-string v7, "PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ls1/a/a/a/v0/e/x;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ls1/a/a/a/v0/e/x;->e:Ls1/a/a/a/v0/e/x;

    .line 5
    new-instance v7, Ls1/a/a/a/v0/e/x;

    const-string v9, "PRIVATE_TO_THIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ls1/a/a/a/v0/e/x;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ls1/a/a/a/v0/e/x;->f:Ls1/a/a/a/v0/e/x;

    .line 6
    new-instance v9, Ls1/a/a/a/v0/e/x;

    const-string v11, "LOCAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ls1/a/a/a/v0/e/x;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ls1/a/a/a/v0/e/x;->g:Ls1/a/a/a/v0/e/x;

    const/4 v11, 0x6

    new-array v11, v11, [Ls1/a/a/a/v0/e/x;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Ls1/a/a/a/v0/e/x;->h:[Ls1/a/a/a/v0/e/x;

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
    iput p3, p0, Ls1/a/a/a/v0/e/x;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/e/x;
    .locals 1

    .line 1
    const-class v0, Ls1/a/a/a/v0/e/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/e/x;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/e/x;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/x;->h:[Ls1/a/a/a/v0/e/x;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/e/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/e/x;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/x;->a:I

    return v0
.end method
