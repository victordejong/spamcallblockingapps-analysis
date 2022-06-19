.class public Lcom/zendesk/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/service/d$a;,
        Lcom/zendesk/service/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final h:Lcom/zendesk/service/d$b;


# instance fields
.field private final f:Lcom/zendesk/service/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/f<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/zendesk/service/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/d$b<",
            "TE;TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zendesk/service/d$a;

    invoke-direct {v0}, Lcom/zendesk/service/d$a;-><init>()V

    sput-object v0, Lcom/zendesk/service/d;->h:Lcom/zendesk/service/d$b;

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "TF;>;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/zendesk/service/d;->h:Lcom/zendesk/service/d$b;

    invoke-direct {p0, p1, v0}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;Lcom/zendesk/service/d$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/service/f;Lcom/zendesk/service/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "TF;>;",
            "Lcom/zendesk/service/d$b<",
            "TE;TF;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zendesk/service/d;->f:Lcom/zendesk/service/f;

    .line 3
    iput-object p2, p0, Lcom/zendesk/service/d;->g:Lcom/zendesk/service/d$b;

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TE;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/zendesk/service/d;->f:Lcom/zendesk/service/f;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Lcom/zendesk/service/c;->h(Ljava/lang/Throwable;)Lcom/zendesk/service/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TE;>;",
            "Lretrofit2/Response<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/zendesk/service/d;->f:Lcom/zendesk/service/f;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/zendesk/service/d;->f:Lcom/zendesk/service/f;

    iget-object v0, p0, Lcom/zendesk/service/d;->g:Lcom/zendesk/service/d$b;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/zendesk/service/d$b;->extract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/zendesk/service/d;->f:Lcom/zendesk/service/f;

    invoke-static {p2}, Lcom/zendesk/service/c;->g(Lretrofit2/Response;)Lcom/zendesk/service/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_1
    :goto_0
    return-void
.end method
