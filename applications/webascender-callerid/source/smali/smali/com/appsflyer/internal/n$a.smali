.class public final enum Lcom/appsflyer/internal/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ı:Lcom/appsflyer/internal/n$a;

.field public static final enum ǃ:Lcom/appsflyer/internal/n$a;

.field public static final enum ɩ:Lcom/appsflyer/internal/n$a;

.field public static final enum ɹ:Lcom/appsflyer/internal/n$a;

.field public static final enum Ι:Lcom/appsflyer/internal/n$a;

.field public static final enum ι:Lcom/appsflyer/internal/n$a;

.field private static final synthetic і:[Lcom/appsflyer/internal/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/appsflyer/internal/n$a;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/n$a;->ι:Lcom/appsflyer/internal/n$a;

    .line 2
    new-instance v1, Lcom/appsflyer/internal/n$a;

    const-string v3, "NONEMPTY_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/internal/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/n$a;->ı:Lcom/appsflyer/internal/n$a;

    .line 3
    new-instance v3, Lcom/appsflyer/internal/n$a;

    const-string v5, "EMPTY_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/internal/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/internal/n$a;->ǃ:Lcom/appsflyer/internal/n$a;

    .line 4
    new-instance v5, Lcom/appsflyer/internal/n$a;

    const-string v7, "DANGLING_KEY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/appsflyer/internal/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/appsflyer/internal/n$a;->ɩ:Lcom/appsflyer/internal/n$a;

    .line 5
    new-instance v7, Lcom/appsflyer/internal/n$a;

    const-string v9, "NONEMPTY_OBJECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/appsflyer/internal/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/appsflyer/internal/n$a;->Ι:Lcom/appsflyer/internal/n$a;

    .line 6
    new-instance v9, Lcom/appsflyer/internal/n$a;

    const-string v11, "NULL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/appsflyer/internal/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/appsflyer/internal/n$a;->ɹ:Lcom/appsflyer/internal/n$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/appsflyer/internal/n$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/appsflyer/internal/n$a;->і:[Lcom/appsflyer/internal/n$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/n$a;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/internal/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/n$a;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/n$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/n$a;->і:[Lcom/appsflyer/internal/n$a;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/n$a;

    return-object v0
.end method
