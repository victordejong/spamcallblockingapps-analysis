.class public Lcom/hiya/stingray/ui/common/error/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/error/c;->a:Z

    return-void
.end method

.method private a(Lcom/hiya/stingray/exception/a;Lg/g/a/a/b;Ljava/lang/Throwable;Lcom/hiya/stingray/ui/common/error/b;)Lcom/hiya/stingray/ui/common/error/b;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ERROR_ALERT_TYPE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Lg/g/a/a/b;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERROR_ALERT_API_ACTION_KEY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Lcom/hiya/stingray/ui/common/error/c;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERROR_ALERT_BODY_KEY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    invoke-direct {p0, p3}, Lcom/hiya/stingray/ui/common/error/c;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERROR_ALERT_CODE_KEY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-virtual {p4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p4
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    if-eqz v1, :cond_1

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {v1}, Lcom/hiya/api/exception/RetrofitException;->b()Lretrofit2/Response;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/hiya/api/exception/RetrofitException;->b()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    check-cast p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {p1}, Lcom/hiya/api/exception/RetrofitException;->b()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object p1

    invoke-virtual {p1}, Lm/h0;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed within Error Debugger Alert Dialog"

    .line 6
    invoke-static {p1, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Lcom/hiya/stingray/exception/a;Lg/g/a/a/b;Ljava/lang/Throwable;)Lcom/hiya/stingray/ui/common/error/b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/error/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/common/error/a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/common/error/a;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/stingray/ui/common/error/b;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/common/error/b;-><init>()V

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/ui/common/error/c;->a(Lcom/hiya/stingray/exception/a;Lg/g/a/a/b;Ljava/lang/Throwable;Lcom/hiya/stingray/ui/common/error/b;)Lcom/hiya/stingray/ui/common/error/b;

    return-object v0
.end method
