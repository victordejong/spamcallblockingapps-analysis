.class public Lcom/hiya/stingray/exception/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/b0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private a:Lg/g/a/a/b;


# direct methods
.method public constructor <init>(Lg/g/a/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/exception/c;->a:Lg/g/a/a/b;

    return-void
.end method

.method static synthetic b(Lcom/hiya/stingray/exception/c;)Lg/g/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/exception/c;->a:Lg/g/a/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/exception/c;Ljava/lang/Throwable;Lg/g/a/a/b;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/exception/c;->e(Ljava/lang/Throwable;Lg/g/a/a/b;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/Throwable;Lg/g/a/a/b;)Ljava/lang/Throwable;
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {v0, p2}, Lcom/hiya/api/exception/HiyaRetrofitException;->h(Lg/g/a/a/b;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/hiya/stingray/exception/HiyaDbException;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/hiya/stingray/exception/HiyaDbException;

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/exception/HiyaDbException;->c(Lg/g/a/a/b;)V

    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Non HiyaException has been thrown. %s"

    invoke-static {p1, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v1, Lcom/hiya/stingray/exception/HiyaGenericException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/hiya/stingray/exception/a;->UNKNOWN_ERROR:Lcom/hiya/stingray/exception/a;

    invoke-direct {v1, p2, v0, v2, p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/v;)Li/c/b0/b/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/exception/c;->d(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public d(Li/c/b0/b/v;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/exception/c$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/exception/c$a;-><init>(Lcom/hiya/stingray/exception/c;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
