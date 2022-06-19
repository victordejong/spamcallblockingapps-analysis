.class public Lcom/hiya/stingray/ui/local/common/d;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/common/e;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/c;

.field private final c:Lcom/hiya/stingray/manager/o4/a;

.field private final d:Li/c/b0/c/a;

.field private final e:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o4/a;Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "localManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/d;->c:Lcom/hiya/stingray/manager/o4/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/d;->d:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/common/d;->e:Lcom/hiya/stingray/util/a0;

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/d;->b:Li/c/b0/c/c;

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/local/common/d;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/common/d;->e:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method


# virtual methods
.method public final u(Ljava/lang/String;)V
    .locals 3

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/e;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/d;->c:Lcom/hiya/stingray/manager/o4/a;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/manager/o4/a;->g(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/hiya/stingray/ui/local/common/d$b;

    invoke-direct {v2, v0}, Lcom/hiya/stingray/ui/local/common/d$b;-><init>(Lcom/hiya/stingray/ui/local/common/e;)V

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/local/common/d$a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/local/common/d$a;-><init>(Lcom/hiya/stingray/ui/local/common/d;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/d;->b:Li/c/b0/c/c;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/d;->d:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/e;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/d;->c:Lcom/hiya/stingray/manager/o4/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o4/a;->i()Li/c/b0/b/v;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/hiya/stingray/ui/local/common/d$d;

    invoke-direct {v2, v0}, Lcom/hiya/stingray/ui/local/common/d$d;-><init>(Lcom/hiya/stingray/ui/local/common/e;)V

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/local/common/d$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/common/d$c;-><init>(Lcom/hiya/stingray/ui/local/common/d;)V

    .line 6
    invoke-virtual {v1, v2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/common/d;->b:Li/c/b0/c/c;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/d;->d:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
