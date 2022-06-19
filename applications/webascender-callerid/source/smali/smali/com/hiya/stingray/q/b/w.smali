.class public Lcom/hiya/stingray/q/b/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/w;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lio/realm/y;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/realm/y;->n1(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lio/realm/b0$a;

    invoke-direct {v0}, Lio/realm/b0$a;-><init>()V

    const-wide/16 v1, 0xb

    .line 3
    invoke-virtual {v0, v1, v2}, Lio/realm/b0$a;->f(J)Lio/realm/b0$a;

    .line 4
    new-instance v1, Lcom/hiya/stingray/q/b/z;

    invoke-direct {v1}, Lcom/hiya/stingray/q/b/z;-><init>()V

    invoke-virtual {v0, v1}, Lio/realm/b0$a;->e(Lio/realm/d0;)Lio/realm/b0$a;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lio/realm/b0$a;->a(Z)Lio/realm/b0$a;

    .line 6
    invoke-virtual {v0, v1}, Lio/realm/b0$a;->b(Z)Lio/realm/b0$a;

    .line 7
    invoke-virtual {v0}, Lio/realm/b0$a;->c()Lio/realm/b0;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lio/realm/y;->z1(Lio/realm/b0;)V

    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lio/realm/y;->c1()Lio/realm/y;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/realm/y;->N()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Can\'t migrate to Realm schema version 11"

    .line 10
    invoke-static {v2, v4, v3}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lio/realm/y;->b1()Lio/realm/b0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {v2}, Lio/realm/y;->h1(Lio/realm/b0;)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 13
    invoke-static {v2}, Lio/realm/y;->o(Lio/realm/b0;)Z

    :cond_1
    return-object v0
.end method
