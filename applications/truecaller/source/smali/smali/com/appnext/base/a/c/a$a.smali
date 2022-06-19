.class public final enum Lcom/appnext/base/a/c/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appnext/base/a/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appnext/base/a/c/a$a;

.field public static final enum Equals:Lcom/appnext/base/a/c/a$a;

.field public static final enum GreaterThan:Lcom/appnext/base/a/c/a$a;

.field public static final enum LessThan:Lcom/appnext/base/a/c/a$a;


# instance fields
.field private mOperator:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/appnext/base/a/c/a$a;

    const-string v1, "Equals"

    const/4 v2, 0x0

    const-string v3, " = ? "

    invoke-direct {v0, v1, v2, v3}, Lcom/appnext/base/a/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/a/c/a$a;->Equals:Lcom/appnext/base/a/c/a$a;

    new-instance v1, Lcom/appnext/base/a/c/a$a;

    const-string v3, "GreaterThan"

    const/4 v4, 0x1

    const-string v5, " >= ? "

    invoke-direct {v1, v3, v4, v5}, Lcom/appnext/base/a/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appnext/base/a/c/a$a;->GreaterThan:Lcom/appnext/base/a/c/a$a;

    new-instance v3, Lcom/appnext/base/a/c/a$a;

    const-string v5, "LessThan"

    const/4 v6, 0x2

    const-string v7, " <= ? "

    invoke-direct {v3, v5, v6, v7}, Lcom/appnext/base/a/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/appnext/base/a/c/a$a;->LessThan:Lcom/appnext/base/a/c/a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appnext/base/a/c/a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/appnext/base/a/c/a$a;->$VALUES:[Lcom/appnext/base/a/c/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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

    .line 2
    iput-object p3, p0, Lcom/appnext/base/a/c/a$a;->mOperator:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appnext/base/a/c/a$a;
    .locals 1

    .line 1
    const-class v0, Lcom/appnext/base/a/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appnext/base/a/c/a$a;

    return-object p0
.end method

.method public static values()[Lcom/appnext/base/a/c/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/base/a/c/a$a;->$VALUES:[Lcom/appnext/base/a/c/a$a;

    invoke-virtual {v0}, [Lcom/appnext/base/a/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appnext/base/a/c/a$a;

    return-object v0
.end method


# virtual methods
.method public final P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/a/c/a$a;->mOperator:Ljava/lang/String;

    return-object v0
.end method
