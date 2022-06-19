.class public final enum Ln3/e/a/e/r1$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/e/a/e/r1$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/e/a/e/r1$c;

.field public static final enum b:Ln3/e/a/e/r1$c;

.field public static final enum c:Ln3/e/a/e/r1$c;

.field public static final enum d:Ln3/e/a/e/r1$c;

.field public static final enum e:Ln3/e/a/e/r1$c;

.field public static final enum f:Ln3/e/a/e/r1$c;

.field public static final enum g:Ln3/e/a/e/r1$c;

.field public static final enum h:Ln3/e/a/e/r1$c;

.field public static final synthetic i:[Ln3/e/a/e/r1$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ln3/e/a/e/r1$c;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/e/a/e/r1$c;->a:Ln3/e/a/e/r1$c;

    .line 2
    new-instance v1, Ln3/e/a/e/r1$c;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/e/a/e/r1$c;->b:Ln3/e/a/e/r1$c;

    .line 3
    new-instance v3, Ln3/e/a/e/r1$c;

    const-string v5, "GET_SURFACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln3/e/a/e/r1$c;->c:Ln3/e/a/e/r1$c;

    .line 4
    new-instance v5, Ln3/e/a/e/r1$c;

    const-string v7, "OPENING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln3/e/a/e/r1$c;->d:Ln3/e/a/e/r1$c;

    .line 5
    new-instance v7, Ln3/e/a/e/r1$c;

    const-string v9, "OPENED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ln3/e/a/e/r1$c;->e:Ln3/e/a/e/r1$c;

    .line 6
    new-instance v9, Ln3/e/a/e/r1$c;

    const-string v11, "CLOSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ln3/e/a/e/r1$c;->f:Ln3/e/a/e/r1$c;

    .line 7
    new-instance v11, Ln3/e/a/e/r1$c;

    const-string v13, "RELEASING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ln3/e/a/e/r1$c;->g:Ln3/e/a/e/r1$c;

    .line 8
    new-instance v13, Ln3/e/a/e/r1$c;

    const-string v15, "RELEASED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ln3/e/a/e/r1$c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ln3/e/a/e/r1$c;->h:Ln3/e/a/e/r1$c;

    const/16 v15, 0x8

    new-array v15, v15, [Ln3/e/a/e/r1$c;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Ln3/e/a/e/r1$c;->i:[Ln3/e/a/e/r1$c;

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

.method public static valueOf(Ljava/lang/String;)Ln3/e/a/e/r1$c;
    .locals 1

    .line 1
    const-class v0, Ln3/e/a/e/r1$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/e/a/e/r1$c;

    return-object p0
.end method

.method public static values()[Ln3/e/a/e/r1$c;
    .locals 1

    .line 1
    sget-object v0, Ln3/e/a/e/r1$c;->i:[Ln3/e/a/e/r1$c;

    invoke-virtual {v0}, [Ln3/e/a/e/r1$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/e/a/e/r1$c;

    return-object v0
.end method
