.class public Lcom/hiya/stingray/ui/customblock/d;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/customblock/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/customblock/i;",
        ">;",
        "Lcom/hiya/stingray/ui/customblock/h;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/a;

.field private c:Li/c/b0/c/c;

.field private d:Lcom/hiya/stingray/manager/c2;

.field private e:Lcom/hiya/stingray/ui/common/error/e;

.field private f:Lcom/hiya/stingray/util/a0;

.field private g:Lcom/hiya/stingray/q/d/f;

.field private h:Lcom/hiya/stingray/ui/login/o;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/ui/login/o;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->c:Li/c/b0/c/c;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/d;->d:Lcom/hiya/stingray/manager/c2;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/d;->e:Lcom/hiya/stingray/ui/common/error/e;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/ui/customblock/d;->f:Lcom/hiya/stingray/util/a0;

    .line 6
    iput-object p4, p0, Lcom/hiya/stingray/ui/customblock/d;->b:Li/c/b0/c/a;

    .line 7
    iput-object p5, p0, Lcom/hiya/stingray/ui/customblock/d;->g:Lcom/hiya/stingray/q/d/f;

    .line 8
    iput-object p6, p0, Lcom/hiya/stingray/ui/customblock/d;->h:Lcom/hiya/stingray/ui/login/o;

    .line 9
    iput-object p7, p0, Lcom/hiya/stingray/ui/customblock/d;->i:Landroid/content/Context;

    return-void
.end method

.method static synthetic t(Lcom/hiya/stingray/ui/customblock/d;)Lcom/hiya/stingray/ui/common/error/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/d;->e:Lcom/hiya/stingray/ui/common/error/e;

    return-object p0
.end method

.method static synthetic u(Lcom/hiya/stingray/ui/customblock/d;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/d;->f:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->d:Lcom/hiya/stingray/manager/c2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/c2;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/customblock/d$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/customblock/d$a;-><init>(Lcom/hiya/stingray/ui/customblock/d;)V

    new-instance v1, Lcom/hiya/stingray/ui/customblock/d$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/customblock/d$b;-><init>(Lcom/hiya/stingray/ui/customblock/d;)V

    .line 3
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/d;->c:Li/c/b0/c/c;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->b:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->b:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/d;->d:Lcom/hiya/stingray/manager/c2;

    .line 2
    invoke-virtual {v1, p1, p3, p4}, Lcom/hiya/stingray/manager/c2;->a(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v8, Lcom/hiya/stingray/ui/customblock/d$c;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/hiya/stingray/ui/customblock/d$c;-><init>(Lcom/hiya/stingray/ui/customblock/d;Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/hiya/stingray/ui/customblock/d$d;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/customblock/d$d;-><init>(Lcom/hiya/stingray/ui/customblock/d;)V

    .line 4
    invoke-virtual {v1, v8, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public bridge synthetic e(Lcom/hiya/stingray/ui/customblock/i;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->b:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/d;->d:Lcom/hiya/stingray/manager/c2;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/hiya/stingray/manager/c2;->c(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/customblock/d$e;

    invoke-direct {v2, p0, p2, p1}, Lcom/hiya/stingray/ui/customblock/d$e;-><init>(Lcom/hiya/stingray/ui/customblock/d;Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V

    new-instance p1, Lcom/hiya/stingray/ui/customblock/d$f;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/customblock/d$f;-><init>(Lcom/hiya/stingray/ui/customblock/d;)V

    .line 4
    invoke-virtual {v1, v2, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/hiya/stingray/t/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->b:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/d;->d:Lcom/hiya/stingray/manager/c2;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/hiya/stingray/manager/c2;->B(Ljava/lang/String;Lcom/hiya/stingray/t/c0;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {p2, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v1, Lcom/hiya/stingray/ui/customblock/d$g;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/customblock/d$g;-><init>(Lcom/hiya/stingray/ui/customblock/d;Ljava/lang/String;)V

    new-instance p1, Lcom/hiya/stingray/ui/customblock/d$h;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/customblock/d$h;-><init>(Lcom/hiya/stingray/ui/customblock/d;)V

    .line 4
    invoke-virtual {p2, v1, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->g:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->v(Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d;->f:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/util/i0/d;

    sget-object v1, Lcom/hiya/stingray/util/i0/d$a;->BLOCK_STATUS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->f:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->h:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/d;->i:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->g:Lcom/hiya/stingray/q/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->v(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d;->g:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->s()Z

    move-result v0

    return v0
.end method
