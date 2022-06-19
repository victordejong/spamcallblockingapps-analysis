.class public final enum Ln3/v/u$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/v/u$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/v/u$b;

.field public static final enum b:Ln3/v/u$b;

.field public static final enum c:Ln3/v/u$b;

.field public static final enum d:Ln3/v/u$b;

.field public static final enum e:Ln3/v/u$b;

.field public static final synthetic f:[Ln3/v/u$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ln3/v/u$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/v/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/v/u$b;->a:Ln3/v/u$b;

    .line 2
    new-instance v1, Ln3/v/u$b;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/v/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/v/u$b;->b:Ln3/v/u$b;

    .line 3
    new-instance v3, Ln3/v/u$b;

    const-string v5, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln3/v/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln3/v/u$b;->c:Ln3/v/u$b;

    .line 4
    new-instance v5, Ln3/v/u$b;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln3/v/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 5
    new-instance v7, Ln3/v/u$b;

    const-string v9, "RESUMED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ln3/v/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ln3/v/u$b;->e:Ln3/v/u$b;

    const/4 v9, 0x5

    new-array v9, v9, [Ln3/v/u$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Ln3/v/u$b;->f:[Ln3/v/u$b;

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

.method public static valueOf(Ljava/lang/String;)Ln3/v/u$b;
    .locals 1

    .line 1
    const-class v0, Ln3/v/u$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/v/u$b;

    return-object p0
.end method

.method public static values()[Ln3/v/u$b;
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$b;->f:[Ln3/v/u$b;

    invoke-virtual {v0}, [Ln3/v/u$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/v/u$b;

    return-object v0
.end method


# virtual methods
.method public a(Ln3/v/u$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
