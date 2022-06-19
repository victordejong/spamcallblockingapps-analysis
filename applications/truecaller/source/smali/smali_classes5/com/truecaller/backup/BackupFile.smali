.class public final enum Lcom/truecaller/backup/BackupFile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/backup/BackupFile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/backup/BackupFile;",
        "",
        "",
        "nameSuffix",
        "Ljava/lang/String;",
        "getNameSuffix",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "CONTACTS",
        "CALL_LOG",
        "SETTINGS",
        "BLOCK_LIST",
        "ACCOUNT",
        "DB",
        "backup_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/backup/BackupFile;

.field public static final enum ACCOUNT:Lcom/truecaller/backup/BackupFile;

.field public static final enum BLOCK_LIST:Lcom/truecaller/backup/BackupFile;

.field public static final enum CALL_LOG:Lcom/truecaller/backup/BackupFile;

.field public static final enum CONTACTS:Lcom/truecaller/backup/BackupFile;

.field public static final enum DB:Lcom/truecaller/backup/BackupFile;

.field public static final enum SETTINGS:Lcom/truecaller/backup/BackupFile;


# instance fields
.field private final nameSuffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/backup/BackupFile;

    new-instance v1, Lcom/truecaller/backup/BackupFile;

    const-string v2, "CONTACTS"

    const/4 v3, 0x0

    const-string v4, "_contacts.json"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/backup/BackupFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/backup/BackupFile;->CONTACTS:Lcom/truecaller/backup/BackupFile;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupFile;

    const-string v2, "CALL_LOG"

    const/4 v3, 0x1

    const-string v4, "_call_log.json"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/backup/BackupFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/backup/BackupFile;->CALL_LOG:Lcom/truecaller/backup/BackupFile;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupFile;

    const-string v2, "SETTINGS"

    const/4 v3, 0x2

    const-string v4, "_settings.json"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/backup/BackupFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/backup/BackupFile;->SETTINGS:Lcom/truecaller/backup/BackupFile;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupFile;

    const-string v2, "BLOCK_LIST"

    const/4 v3, 0x3

    const-string v4, "_blockList.json"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/backup/BackupFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/backup/BackupFile;->BLOCK_LIST:Lcom/truecaller/backup/BackupFile;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupFile;

    const-string v2, "ACCOUNT"

    const/4 v3, 0x4

    const-string v4, "_account.json"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/backup/BackupFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/backup/BackupFile;->ACCOUNT:Lcom/truecaller/backup/BackupFile;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupFile;

    const-string v2, "DB"

    const/4 v3, 0x5

    const-string v4, "tc.db"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/backup/BackupFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/backup/BackupFile;->DB:Lcom/truecaller/backup/BackupFile;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/backup/BackupFile;->$VALUES:[Lcom/truecaller/backup/BackupFile;

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

    iput-object p3, p0, Lcom/truecaller/backup/BackupFile;->nameSuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/backup/BackupFile;
    .locals 1

    const-class v0, Lcom/truecaller/backup/BackupFile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/backup/BackupFile;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/backup/BackupFile;
    .locals 1

    sget-object v0, Lcom/truecaller/backup/BackupFile;->$VALUES:[Lcom/truecaller/backup/BackupFile;

    invoke-virtual {v0}, [Lcom/truecaller/backup/BackupFile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/backup/BackupFile;

    return-object v0
.end method


# virtual methods
.method public final getNameSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/BackupFile;->nameSuffix:Ljava/lang/String;

    return-object v0
.end method
