.class public Lcom/hiya/stingray/manager/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/manager/h2;

.field private final d:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/h2;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSourceIngestingAgent"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/r3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/r3;->c:Lcom/hiya/stingray/manager/h2;

    iput-object p3, p0, Lcom/hiya/stingray/manager/r3;->d:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/r3;)Lcom/hiya/stingray/manager/h2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/r3;->c:Lcom/hiya/stingray/manager/h2;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Li/c/b0/b/e;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/r3$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/manager/r3$a;-><init>(Lcom/hiya/stingray/manager/r3;Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;)V

    invoke-static {v0}, Li/c/b0/b/e;->t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/r3$b;

    invoke-direct {v0, p0, p1, p3}, Lcom/hiya/stingray/manager/r3$b;-><init>(Lcom/hiya/stingray/manager/r3;Ljava/lang/String;Z)V

    invoke-static {v0}, Li/c/b0/b/e;->t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.fromCallable\u2026er, isContact)\n        })"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(ZLjava/lang/String;Lcom/hiya/stingray/t/y0;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_7

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/r3;->a:Lh/a;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p2, p1}, Lcom/hiya/stingray/util/y;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/hiya/stingray/manager/r3;->d:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/hiya/stingray/manager/q3;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/manager/r3;->d:Lcom/hiya/stingray/manager/o2;

    iget-object p2, p0, Lcom/hiya/stingray/manager/r3;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/hiya/stingray/manager/r3;->d:Lcom/hiya/stingray/manager/o2;

    iget-object p2, p0, Lcom/hiya/stingray/manager/r3;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    const-string p1, "lazyCountryIso"

    .line 7
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    return v0
.end method
