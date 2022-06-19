.class public final Lcom/appnext/core/SettingsManager$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic ed:Lcom/appnext/core/SettingsManager;


# direct methods
.method private constructor <init>(Lcom/appnext/core/SettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appnext/core/SettingsManager;Lcom/appnext/core/SettingsManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/appnext/core/SettingsManager$a;-><init>(Lcom/appnext/core/SettingsManager;)V

    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const-string v0, "error: Internal error"

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    const/4 v3, 0x0

    .line 2
    aget-object v3, p0, v3

    check-cast v3, Landroid/content/Context;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    if-lez v1, :cond_3

    const/4 v4, 0x1

    .line 3
    aget-object v4, p0, v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v4, v2

    .line 4
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v0

    :cond_4
    const/4 v5, 0x2

    if-lt v1, v5, :cond_5

    .line 5
    aget-object v5, p0, v5

    check-cast v5, Ljava/util/HashMap;

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    const/4 v6, 0x3

    if-lt v1, v6, :cond_6

    .line 6
    aget-object p0, p0, v6

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 7
    :cond_6
    invoke-static {}, Lcom/appnext/core/n;->ay()Lcom/appnext/core/n;

    invoke-static {v3, v4, v5, v2}, Lcom/appnext/core/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/appnext/core/SettingsManager$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    invoke-static {p1, v0}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;I)I

    .line 4
    iget-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    const-string v0, "unknown error"

    invoke-static {p1, v0}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "error:"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    invoke-static {v1, v0}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;I)I

    .line 7
    iget-object v0, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/appnext/core/SettingsManager;->z(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    iget-object v2, v1, Lcom/appnext/core/SettingsManager;->eb:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 10
    iput-object p1, v1, Lcom/appnext/core/SettingsManager;->eb:Ljava/util/HashMap;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;I)I

    .line 13
    iget-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    iget-object v1, p1, Lcom/appnext/core/SettingsManager;->eb:Ljava/util/HashMap;

    invoke-static {p1, v1}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "SettingsManager$onPostExecute"

    .line 14
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    invoke-static {p1, v0}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;I)I

    .line 16
    iget-object p1, p0, Lcom/appnext/core/SettingsManager$a;->ed:Lcom/appnext/core/SettingsManager;

    const-string v0, "parsing error"

    invoke-static {p1, v0}, Lcom/appnext/core/SettingsManager;->a(Lcom/appnext/core/SettingsManager;Ljava/lang/String;)V

    return-void
.end method
