.class public Lcom/zendesk/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zendesk/service/a;


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:Lretrofit2/Response;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zendesk/service/c;->a:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>(Lretrofit2/Response;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    return-void
.end method

.method public static g(Lretrofit2/Response;)Lcom/zendesk/service/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/zendesk/service/c;

    invoke-direct {v0, p0}, Lcom/zendesk/service/c;-><init>(Lretrofit2/Response;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Throwable;)Lcom/zendesk/service/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/zendesk/service/c;

    invoke-direct {v0, p0}, Lcom/zendesk/service/c;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object v0

    invoke-virtual {v0}, Lm/h0;->contentType()Lm/a0;

    move-result-object v0

    invoke-virtual {v0}, Lm/a0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lretrofit2/Response;->raw()Lm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->raw()Lm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    .line 2
    invoke-virtual {v0}, Lretrofit2/Response;->raw()Lm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    invoke-virtual {v1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object v1

    invoke-virtual {v1}, Lm/h0;->bytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UTF-8 must be supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zendesk/service/c;->b:Lretrofit2/Response;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
