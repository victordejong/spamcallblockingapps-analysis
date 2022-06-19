.class public final enum Lcom/appnext/base/a/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appnext/base/a/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appnext/base/a/a/a$a;

.field public static final enum DatabaseOrDiskFull:Lcom/appnext/base/a/a/a$a;

.field public static final enum Global:Lcom/appnext/base/a/a/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/appnext/base/a/a/a$a;

    const-string v1, "Global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appnext/base/a/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appnext/base/a/a/a$a;->Global:Lcom/appnext/base/a/a/a$a;

    new-instance v1, Lcom/appnext/base/a/a/a$a;

    const-string v3, "DatabaseOrDiskFull"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appnext/base/a/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull:Lcom/appnext/base/a/a/a$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/appnext/base/a/a/a$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/appnext/base/a/a/a$a;->$VALUES:[Lcom/appnext/base/a/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/appnext/base/a/a/a$a;
    .locals 1

    .line 1
    const-class v0, Lcom/appnext/base/a/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appnext/base/a/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/appnext/base/a/a/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/base/a/a/a$a;->$VALUES:[Lcom/appnext/base/a/a/a$a;

    invoke-virtual {v0}, [Lcom/appnext/base/a/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appnext/base/a/a/a$a;

    return-object v0
.end method
