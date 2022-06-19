.class public Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/c;

.field private c:Li/c/b0/c/a;

.field private final d:Lcom/hiya/stingray/ui/common/error/e;

.field private final e:Lcom/hiya/stingray/util/a0;

.field private final f:Lcom/hiya/stingray/manager/o1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object p5

    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->b:Li/c/b0/c/c;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->f:Lcom/hiya/stingray/manager/o1;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->d:Lcom/hiya/stingray/ui/common/error/e;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->e:Lcom/hiya/stingray/util/a0;

    .line 6
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->c:Li/c/b0/c/a;

    return-void
.end method

.method private synthetic u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;->K()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;->a(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/f0;->j(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;->d(Ljava/util/List;)V

    return-void
.end method

.method private synthetic w(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->d:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->e:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/a;

    const-class v2, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;

    const-string v3, "Failed to get a call log data"

    invoke-direct {v1, v2, v3, p1}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;->K()V

    return-void
.end method


# virtual methods
.method public t(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/f;->F()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->f:Lcom/hiya/stingray/manager/o1;

    const/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/o1;->t(Ljava/util/List;I)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/b;-><init>(Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;)V

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/recentactivity/c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/c;-><init>(Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->b:Li/c/b0/c/c;

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->c:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public synthetic v(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->u(Ljava/util/List;)V

    return-void
.end method

.method public synthetic x(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/e;->w(Ljava/lang/Throwable;)V

    return-void
.end method
