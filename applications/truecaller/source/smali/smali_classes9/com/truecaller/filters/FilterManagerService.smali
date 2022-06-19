.class public Lcom/truecaller/filters/FilterManagerService;
.super Le/a/r2/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v2, "filter-manager"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Le/a/r2/i;-><init>(Ljava/lang/String;JZ)V

    return-void
.end method
