.class public final enum Lcom/appsflyer/internal/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ı:Lcom/appsflyer/internal/e$a;

.field public static final enum ǃ:Lcom/appsflyer/internal/e$a;

.field private static final synthetic ɩ:[Lcom/appsflyer/internal/e$a;

.field public static final enum ι:Lcom/appsflyer/internal/e$a;


# instance fields
.field public Ι:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/appsflyer/internal/e$a;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const-string v3, "null"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/e$a;->ı:Lcom/appsflyer/internal/e$a;

    new-instance v1, Lcom/appsflyer/internal/e$a;

    const-string v3, "COM_ANDROID_VENDING"

    const/4 v4, 0x1

    const-string v5, "cav"

    invoke-direct {v1, v3, v4, v5}, Lcom/appsflyer/internal/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/e$a;->ι:Lcom/appsflyer/internal/e$a;

    new-instance v3, Lcom/appsflyer/internal/e$a;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    const-string v7, "other"

    invoke-direct {v3, v5, v6, v7}, Lcom/appsflyer/internal/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/appsflyer/internal/e$a;->ǃ:Lcom/appsflyer/internal/e$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/e$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/appsflyer/internal/e$a;->ɩ:[Lcom/appsflyer/internal/e$a;

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
    iput-object p3, p0, Lcom/appsflyer/internal/e$a;->Ι:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/e$a;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/internal/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/e$a;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/e$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/e$a;->ɩ:[Lcom/appsflyer/internal/e$a;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/e$a;

    return-object v0
.end method
