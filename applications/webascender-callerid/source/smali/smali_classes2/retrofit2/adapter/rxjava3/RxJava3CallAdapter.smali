.class final Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAsync:Z

.field private final isBody:Z

.field private final isCompletable:Z

.field private final isFlowable:Z

.field private final isMaybe:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Li/c/b0/b/d0;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Li/c/b0/b/d0;ZZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->scheduler:Li/c/b0/b/d0;

    .line 4
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isAsync:Z

    .line 5
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isResult:Z

    .line 6
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isBody:Z

    .line 7
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isFlowable:Z

    .line 8
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isSingle:Z

    .line 9
    iput-boolean p8, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isMaybe:Z

    .line 10
    iput-boolean p9, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isCompletable:Z

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isAsync:Z

    if-eqz v0, :cond_0

    new-instance v0, Lretrofit2/adapter/rxjava3/CallEnqueueObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava3/CallEnqueueObservable;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava3/CallExecuteObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava3/CallExecuteObservable;-><init>(Lretrofit2/Call;)V

    .line 2
    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isResult:Z

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lretrofit2/adapter/rxjava3/ResultObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava3/ResultObservable;-><init>(Li/c/b0/b/v;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    .line 4
    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isBody:Z

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lretrofit2/adapter/rxjava3/BodyObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava3/BodyObservable;-><init>(Li/c/b0/b/v;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    iget-object p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->scheduler:Li/c/b0/b/d0;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    :cond_3
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isFlowable:Z

    if-eqz p1, :cond_4

    .line 9
    sget-object p1, Li/c/b0/b/d;->LATEST:Li/c/b0/b/d;

    invoke-virtual {v0, p1}, Li/c/b0/b/v;->toFlowable(Li/c/b0/b/d;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isSingle:Z

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {v0}, Li/c/b0/b/v;->singleOrError()Li/c/b0/b/e0;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isMaybe:Z

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {v0}, Li/c/b0/b/v;->singleElement()Li/c/b0/b/p;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->isCompletable:Z

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {v0}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7
    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
