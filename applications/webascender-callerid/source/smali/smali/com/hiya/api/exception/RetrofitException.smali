.class public Lcom/hiya/api/exception/RetrofitException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/api/exception/RetrofitException$a;
    }
.end annotation


# instance fields
.field private final f:Lretrofit2/Response;

.field private final g:Lcom/hiya/api/exception/RetrofitException$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/hiya/api/exception/RetrofitException$a;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-object p3, p0, Lcom/hiya/api/exception/RetrofitException;->f:Lretrofit2/Response;

    .line 3
    iput-object p4, p0, Lcom/hiya/api/exception/RetrofitException;->g:Lcom/hiya/api/exception/RetrofitException$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/api/exception/RetrofitException$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/exception/RetrofitException;->g:Lcom/hiya/api/exception/RetrofitException$a;

    return-object v0
.end method

.method public b()Lretrofit2/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/exception/RetrofitException;->f:Lretrofit2/Response;

    return-object v0
.end method
