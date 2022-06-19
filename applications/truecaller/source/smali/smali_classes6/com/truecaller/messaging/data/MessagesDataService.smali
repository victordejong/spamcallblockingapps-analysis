.class public Lcom/truecaller/messaging/data/MessagesDataService;
.super Le/a/r2/i;
.source "SourceFile"


# static fields
.field public static final g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/truecaller/messaging/data/MessagesDataService;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-wide v0, Lcom/truecaller/messaging/data/MessagesDataService;->g:J

    const-string v2, "messages-storage"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Le/a/r2/i;-><init>(Ljava/lang/String;JZ)V

    return-void
.end method
