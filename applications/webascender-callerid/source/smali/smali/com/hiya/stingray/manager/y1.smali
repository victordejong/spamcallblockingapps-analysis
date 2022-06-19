.class public Lcom/hiya/stingray/manager/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/b/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/b/u;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactContentProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/y1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/y1;->b:Lcom/hiya/stingray/q/b/u;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/y1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y1;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b()Li/c/b0/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/l<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y1;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/l;->g()Li/c/b0/b/l;

    move-result-object v0

    const-string v1, "Flowable.empty()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/hiya/stingray/manager/y1$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/y1$a;-><init>(Lcom/hiya/stingray/manager/y1;)V

    .line 5
    sget-object v1, Li/c/b0/b/d;->LATEST:Li/c/b0/b/d;

    .line 6
    invoke-static {v0, v1}, Li/c/b0/b/l;->f(Li/c/b0/b/n;Li/c/b0/b/d;)Li/c/b0/b/l;

    move-result-object v0

    const-string v1, "Flowable.create({ asyncE\u2026kpressureStrategy.LATEST)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y1;->b:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/u;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/hiya/stingray/manager/y1$b;->f:Lcom/hiya/stingray/manager/y1$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "contactContentProvider.g\u2026sNotEmpty()\n            }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
