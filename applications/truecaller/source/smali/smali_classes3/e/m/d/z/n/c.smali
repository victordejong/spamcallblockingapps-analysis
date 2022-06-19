.class public final enum Le/m/d/z/n/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/d/z/n/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/m/d/z/n/c;

.field public static final enum c:Le/m/d/z/n/c;

.field public static final enum d:Le/m/d/z/n/c;

.field public static final enum e:Le/m/d/z/n/c;

.field public static final enum f:Le/m/d/z/n/c;

.field public static final enum g:Le/m/d/z/n/c;

.field public static final synthetic h:[Le/m/d/z/n/c;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Le/m/d/z/n/c;

    const-string v1, "APP_START_TRACE_NAME"

    const/4 v2, 0x0

    const-string v3, "_as"

    invoke-direct {v0, v1, v2, v3}, Le/m/d/z/n/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/m/d/z/n/c;->b:Le/m/d/z/n/c;

    .line 2
    new-instance v1, Le/m/d/z/n/c;

    const-string v3, "ON_CREATE_TRACE_NAME"

    const/4 v4, 0x1

    const-string v5, "_astui"

    invoke-direct {v1, v3, v4, v5}, Le/m/d/z/n/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/m/d/z/n/c;->c:Le/m/d/z/n/c;

    .line 3
    new-instance v3, Le/m/d/z/n/c;

    const-string v5, "ON_START_TRACE_NAME"

    const/4 v6, 0x2

    const-string v7, "_astfd"

    invoke-direct {v3, v5, v6, v7}, Le/m/d/z/n/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le/m/d/z/n/c;->d:Le/m/d/z/n/c;

    .line 4
    new-instance v5, Le/m/d/z/n/c;

    const-string v7, "ON_RESUME_TRACE_NAME"

    const/4 v8, 0x3

    const-string v9, "_asti"

    invoke-direct {v5, v7, v8, v9}, Le/m/d/z/n/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le/m/d/z/n/c;->e:Le/m/d/z/n/c;

    .line 5
    new-instance v7, Le/m/d/z/n/c;

    const-string v9, "FOREGROUND_TRACE_NAME"

    const/4 v10, 0x4

    const-string v11, "_fs"

    invoke-direct {v7, v9, v10, v11}, Le/m/d/z/n/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Le/m/d/z/n/c;->f:Le/m/d/z/n/c;

    .line 6
    new-instance v9, Le/m/d/z/n/c;

    const-string v11, "BACKGROUND_TRACE_NAME"

    const/4 v12, 0x5

    const-string v13, "_bs"

    invoke-direct {v9, v11, v12, v13}, Le/m/d/z/n/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Le/m/d/z/n/c;->g:Le/m/d/z/n/c;

    const/4 v11, 0x6

    new-array v11, v11, [Le/m/d/z/n/c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Le/m/d/z/n/c;->h:[Le/m/d/z/n/c;

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

    .line 2
    iput-object p3, p0, Le/m/d/z/n/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/m/d/z/n/c;
    .locals 1

    .line 1
    const-class v0, Le/m/d/z/n/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/d/z/n/c;

    return-object p0
.end method

.method public static values()[Le/m/d/z/n/c;
    .locals 1

    .line 1
    sget-object v0, Le/m/d/z/n/c;->h:[Le/m/d/z/n/c;

    invoke-virtual {v0}, [Le/m/d/z/n/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/d/z/n/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/n/c;->a:Ljava/lang/String;

    return-object v0
.end method
