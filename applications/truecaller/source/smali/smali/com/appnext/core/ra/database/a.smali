.class public final Lcom/appnext/core/ra/database/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eQ:Ljava/lang/String;

.field public eR:Ljava/lang/String;

.field public eS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/appnext/core/ra/database/a;->eS:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecentApp{recentAppPackage=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/ra/database/a;->eQ:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", storeDate=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/ra/database/a;->eR:Ljava/lang/String;

    const-string v3, ", sent="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/appnext/core/ra/database/a;->eS:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
