.class public final synthetic Lcom/facebook/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/facebook/internal/s0$e;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;ILcom/facebook/internal/s0$e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/o;->a:[Ljava/lang/String;

    iput p2, p0, Lcom/facebook/internal/o;->b:I

    iput-object p3, p0, Lcom/facebook/internal/o;->c:Lcom/facebook/internal/s0$e;

    iput-object p4, p0, Lcom/facebook/internal/o;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/internal/o;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/internal/o;->b:I

    iget-object v2, p0, Lcom/facebook/internal/o;->c:Lcom/facebook/internal/s0$e;

    iget-object v3, p0, Lcom/facebook/internal/o;->d:Ljava/util/concurrent/CountDownLatch;

    const-string v4, "$results"

    .line 1
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$latch"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "response"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v4, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Error staging photo."

    if-eqz v4, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 4
    :goto_0
    new-instance v0, Le/j/d0;

    invoke-direct {v0, p1, v5}, Le/j/d0;-><init>(Le/j/l0;Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object p1, p1, Le/j/l0;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    const-string v4, "uri"

    .line 6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    aput-object p1, v0, v1

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Le/j/c0;

    invoke-direct {p1, v5}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Le/j/c0;

    invoke-direct {p1, v5}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 10
    iget-object v0, v2, Lcom/facebook/internal/s0$e;->c:[Ljava/lang/Exception;

    aput-object p1, v0, v1

    .line 11
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
