.class public final synthetic Lretrofit2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

.field public final synthetic g:Lretrofit2/Callback;

.field public final synthetic h:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/b;->f:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/b;->g:Lretrofit2/Callback;

    iput-object p3, p0, Lretrofit2/b;->h:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lretrofit2/b;->f:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, p0, Lretrofit2/b;->g:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/b;->h:Lretrofit2/Response;

    invoke-virtual {v0, v1, v2}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->d(Lretrofit2/Callback;Lretrofit2/Response;)V

    return-void
.end method
