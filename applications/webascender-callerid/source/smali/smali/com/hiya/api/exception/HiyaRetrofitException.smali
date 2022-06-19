.class public Lcom/hiya/api/exception/HiyaRetrofitException;
.super Lcom/hiya/api/exception/RetrofitException;
.source "SourceFile"


# instance fields
.field private h:Lg/g/a/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/hiya/api/exception/RetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    .line 2
    sget-object p1, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    iput-object p1, p0, Lcom/hiya/api/exception/HiyaRetrofitException;->h:Lg/g/a/a/b;

    return-void
.end method

.method public static d(Ljava/lang/String;Lretrofit2/Response;Lretrofit2/Retrofit;)Lcom/hiya/api/exception/HiyaRetrofitException;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Lcom/hiya/api/exception/HiyaRetrofitException;

    sget-object v6, Lcom/hiya/api/exception/RetrofitException$a;->HTTP:Lcom/hiya/api/exception/RetrofitException$a;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/hiya/api/exception/HiyaRetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public static e(Ljava/io/IOException;)Lcom/hiya/api/exception/HiyaRetrofitException;
    .locals 8

    .line 1
    new-instance v7, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/hiya/api/exception/RetrofitException$a;->NETWORK:Lcom/hiya/api/exception/RetrofitException$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/hiya/api/exception/HiyaRetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v7
.end method

.method public static f(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;
    .locals 8

    .line 1
    new-instance v7, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/hiya/api/exception/RetrofitException$a;->OFFLINE:Lcom/hiya/api/exception/RetrofitException$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/hiya/api/exception/HiyaRetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v7
.end method

.method public static g(Ljava/lang/String;Lretrofit2/Response;)Lcom/hiya/api/exception/HiyaRetrofitException;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Lcom/hiya/api/exception/HiyaRetrofitException;

    sget-object v6, Lcom/hiya/api/exception/RetrofitException$a;->RETIRED:Lcom/hiya/api/exception/RetrofitException$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/hiya/api/exception/HiyaRetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;
    .locals 8

    .line 1
    new-instance v7, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/hiya/api/exception/RetrofitException$a;->UNEXPECTED:Lcom/hiya/api/exception/RetrofitException$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/hiya/api/exception/HiyaRetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v7
.end method


# virtual methods
.method public c()Lg/g/a/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/exception/HiyaRetrofitException;->h:Lg/g/a/a/b;

    return-object v0
.end method

.method public h(Lg/g/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/api/exception/HiyaRetrofitException;->h:Lg/g/a/a/b;

    return-void
.end method
