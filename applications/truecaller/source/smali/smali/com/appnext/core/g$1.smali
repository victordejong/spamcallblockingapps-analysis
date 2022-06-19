.class public final Lcom/appnext/core/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic dE:Ljava/lang/String;

.field public final synthetic dF:Ljava/lang/String;

.field public final synthetic dG:Ljava/lang/String;

.field public final synthetic dH:Ljava/lang/String;

.field public final synthetic dI:Ljava/lang/String;

.field public final synthetic dJ:Ljava/lang/String;

.field public final synthetic dK:Ljava/lang/String;

.field public final synthetic dL:Ljava/lang/String;

.field public final synthetic dr:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/g$1;->dE:Ljava/lang/String;

    iput-object p2, p0, Lcom/appnext/core/g$1;->dF:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/g$1;->dr:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/g$1;->dG:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/g$1;->dH:Ljava/lang/String;

    iput-object p6, p0, Lcom/appnext/core/g$1;->dI:Ljava/lang/String;

    iput-object p7, p0, Lcom/appnext/core/g$1;->dJ:Ljava/lang/String;

    iput-object p8, p0, Lcom/appnext/core/g$1;->dK:Ljava/lang/String;

    iput-object p9, p0, Lcom/appnext/core/g$1;->dL:Ljava/lang/String;

    iput-object p10, p0, Lcom/appnext/core/g$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "UTF-8"

    const-string v1, "_"

    const-string v2, " "

    const-string v3, ""

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/appnext/core/g$1;->dE:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v4, v3

    .line 2
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/appnext/core/g$1;->dF:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/appnext/core/g$1;->dr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/appnext/core/g$1;->dG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/appnext/core/g$1;->dH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/appnext/core/g$1;->dI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/appnext/core/g$1;->dJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/appnext/core/g$1;->dK:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "0"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/appnext/core/g$1;->dK:Ljava/lang/String;

    :goto_1
    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/appnext/core/g$1;->dL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/appnext/core/g$1;->dL:Ljava/lang/String;

    :goto_2
    aput-object v3, v0, v1

    const-string v1, "https://admin.appnext.com/tp12.aspx?tid=%s&vid=%s&osid=%s&auid=%s&session_id=%s&pid=%s&ref=%s&ads_type=%s&bid=%s&cid=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/appnext/core/g$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
