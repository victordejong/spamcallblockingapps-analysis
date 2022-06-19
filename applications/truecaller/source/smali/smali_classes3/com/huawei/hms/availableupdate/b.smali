.class public Lcom/huawei/hms/availableupdate/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    return v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 10
    iput p2, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    .line 11
    invoke-virtual {p0, p1, p3}, Lcom/huawei/hms/availableupdate/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.huawei.hms.update.DOWNLOAD_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "mUri"

    const-string v1, ""

    .line 2
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    const-string p2, "mSize"

    .line 3
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    const-string p2, "mHash"

    .line 4
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    const-string p2, "mReceived"

    .line 5
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    .line 8
    iput-object p3, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    return v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.huawei.hms.update.DOWNLOAD_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    const-string v0, "mUri"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    const-string v0, "mSize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    const-string v0, "mHash"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget p2, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    const-string v0, "mReceived"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/availableupdate/b;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/huawei/hms/availableupdate/b;->d:I

    iget p2, p0, Lcom/huawei/hms/availableupdate/b;->b:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
