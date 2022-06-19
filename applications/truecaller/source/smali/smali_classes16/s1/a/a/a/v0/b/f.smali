.class public final enum Ls1/a/a/a/v0/b/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/b/f;

.field public static final enum b:Ls1/a/a/a/v0/b/f;

.field public static final enum c:Ls1/a/a/a/v0/b/f;

.field public static final enum d:Ls1/a/a/a/v0/b/f;

.field public static final enum e:Ls1/a/a/a/v0/b/f;

.field public static final enum f:Ls1/a/a/a/v0/b/f;

.field public static final synthetic g:[Ls1/a/a/a/v0/b/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/f;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls1/a/a/a/v0/b/f;->a:Ls1/a/a/a/v0/b/f;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/b/f;

    const-string v3, "INTERFACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls1/a/a/a/v0/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    .line 3
    new-instance v3, Ls1/a/a/a/v0/b/f;

    const-string v5, "ENUM_CLASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls1/a/a/a/v0/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls1/a/a/a/v0/b/f;->c:Ls1/a/a/a/v0/b/f;

    .line 4
    new-instance v5, Ls1/a/a/a/v0/b/f;

    const-string v7, "ENUM_ENTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls1/a/a/a/v0/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    .line 5
    new-instance v7, Ls1/a/a/a/v0/b/f;

    const-string v9, "ANNOTATION_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls1/a/a/a/v0/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls1/a/a/a/v0/b/f;->e:Ls1/a/a/a/v0/b/f;

    .line 6
    new-instance v9, Ls1/a/a/a/v0/b/f;

    const-string v11, "OBJECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls1/a/a/a/v0/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ls1/a/a/a/v0/b/f;->f:Ls1/a/a/a/v0/b/f;

    const/4 v11, 0x6

    new-array v11, v11, [Ls1/a/a/a/v0/b/f;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Ls1/a/a/a/v0/b/f;->g:[Ls1/a/a/a/v0/b/f;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    const-class v0, Ls1/a/a/a/v0/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/b/f;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f;->g:[Ls1/a/a/a/v0/b/f;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/b/f;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f;->f:Ls1/a/a/a/v0/b/f;

    if-eq p0, v0, :cond_1

    sget-object v0, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
