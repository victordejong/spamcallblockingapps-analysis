.class public Lcom/hiya/stingray/ui/local/h/c;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/c;

.field private c:Lcom/hiya/stingray/ui/local/h/d;

.field private final d:Lcom/hiya/stingray/util/a0;

.field private final e:Lcom/hiya/stingray/manager/o4/a;

.field private final f:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/o4/a;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "rxEventBus"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/h/c;->d:Lcom/hiya/stingray/util/a0;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/h/c;->e:Lcom/hiya/stingray/manager/o4/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/h/c;->f:Li/c/b0/c/a;

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/h/c;->b:Li/c/b0/c/c;

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/local/h/c;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/h/c;->d:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method


# virtual methods
.method public p()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/h/c;->u()V

    return-void
.end method

.method public u()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/h/c;->c:Lcom/hiya/stingray/ui/local/h/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setView() must be called."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/m;->y(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/h/c;->c:Lcom/hiya/stingray/ui/local/h/d;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/h/c;->f:Li/c/b0/c/a;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/h/c;->e:Lcom/hiya/stingray/manager/o4/a;

    const-wide v3, 0x4047cdd35eb7457cL    # 47.608013

    const-wide v5, -0x3fa16a8c9fb6134dL    # -122.335167

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/hiya/stingray/manager/o4/a;->k(DD)Li/c/b0/b/e0;

    move-result-object v2

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v2

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/hiya/stingray/ui/local/h/c$b;

    invoke-direct {v3, v0}, Lcom/hiya/stingray/ui/local/h/c$b;-><init>(Lcom/hiya/stingray/ui/local/h/d;)V

    .line 8
    new-instance v0, Lcom/hiya/stingray/ui/local/h/c$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/h/c$a;-><init>(Lcom/hiya/stingray/ui/local/h/c;)V

    .line 9
    invoke-virtual {v2, v3, v0}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_1
    return-void
.end method
