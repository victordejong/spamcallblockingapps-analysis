.class public final enum Ls1/a/a/a/v0/o/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/o/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ls1/a/a/a/v0/o/k;

.field public static final enum c:Ls1/a/a/a/v0/o/k;

.field public static final enum d:Ls1/a/a/a/v0/o/k;

.field public static final synthetic e:[Ls1/a/a/a/v0/o/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/o/k;

    new-instance v1, Ls1/a/a/a/v0/o/k;

    const-string v2, "IGNORE"

    const/4 v3, 0x0

    const-string v4, "ignore"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Ls1/a/a/a/v0/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/o/k;->b:Ls1/a/a/a/v0/o/k;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/o/k;

    const-string v2, "WARN"

    const/4 v3, 0x1

    const-string v4, "warn"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Ls1/a/a/a/v0/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/o/k;->c:Ls1/a/a/a/v0/o/k;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/o/k;

    const-string v2, "STRICT"

    const/4 v3, 0x2

    const-string v4, "strict"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Ls1/a/a/a/v0/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/o/k;->d:Ls1/a/a/a/v0/o/k;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/o/k;->e:[Ls1/a/a/a/v0/o/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls1/a/a/a/v0/o/k;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/o/k;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/o/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/o/k;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/o/k;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/o/k;->e:[Ls1/a/a/a/v0/o/k;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/o/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/o/k;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/o/k;->c:Ls1/a/a/a/v0/o/k;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
