.class public Lcom/hiya/stingray/ui/submitreport/j;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/submitreport/j$b;,
        Lcom/hiya/stingray/ui/submitreport/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/submitreport/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/e4;

.field private final c:Lcom/hiya/stingray/ui/common/error/e;

.field private final d:Lcom/hiya/stingray/util/a0;

.field private final e:Li/c/b0/c/a;

.field private f:Lcom/hiya/stingray/ui/submitreport/j$b;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/j;->b:Lcom/hiya/stingray/manager/e4;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/submitreport/j;->c:Lcom/hiya/stingray/ui/common/error/e;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/submitreport/j;->d:Lcom/hiya/stingray/util/a0;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/submitreport/j;->e:Li/c/b0/c/a;

    return-void
.end method

.method private synthetic t(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const v0, 0x7f1102e2

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/j;->f:Lcom/hiya/stingray/ui/submitreport/j$b;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/submitreport/j$b;->e0()V

    return-void
.end method

.method private synthetic v(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/j;->c:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/j;->d:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/a;

    const-class v2, Lcom/hiya/stingray/ui/submitreport/j;

    const-string v3, "Report failed to send\""

    invoke-direct {v1, v2, v3, p1}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic x(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/submitreport/j$a;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/submitreport/j$a;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic z(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/j;->c:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/j;->d:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/t/e1/a;

    const-class v2, Lcom/hiya/stingray/ui/submitreport/j;

    const-string v3, "Failed to get spam categories"

    invoke-direct {v1, v2, v3, p1}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic A(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/submitreport/j;->z(Ljava/lang/Throwable;)V

    return-void
.end method

.method public B(Landroid/content/Context;Lcom/hiya/stingray/t/c1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/j;->e:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/submitreport/j;->b:Lcom/hiya/stingray/manager/e4;

    .line 2
    invoke-virtual {v1, p2}, Lcom/hiya/stingray/manager/e4;->g(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;

    move-result-object v1

    invoke-virtual {p2, v1}, Li/c/b0/b/e;->j(Li/c/b0/b/j;)Li/c/b0/b/e;

    move-result-object p2

    new-instance v1, Lcom/hiya/stingray/ui/submitreport/e;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/submitreport/e;-><init>(Lcom/hiya/stingray/ui/submitreport/j;Landroid/content/Context;)V

    new-instance p1, Lcom/hiya/stingray/ui/submitreport/c;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/submitreport/c;-><init>(Lcom/hiya/stingray/ui/submitreport/j;)V

    .line 4
    invoke-virtual {p2, v1, p1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public C(Lcom/hiya/stingray/ui/submitreport/j$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/j;->f:Lcom/hiya/stingray/ui/submitreport/j$b;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/j;->e:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/submitreport/j;->b:Lcom/hiya/stingray/manager/e4;

    .line 2
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/manager/e4;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/submitreport/b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/submitreport/b;-><init>(Lcom/hiya/stingray/ui/submitreport/j;)V

    new-instance v2, Lcom/hiya/stingray/ui/submitreport/d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/submitreport/d;-><init>(Lcom/hiya/stingray/ui/submitreport/j;)V

    .line 4
    invoke-virtual {p1, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public synthetic u(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/submitreport/j;->t(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic w(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/submitreport/j;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic y(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/submitreport/j;->x(Ljava/util/List;)V

    return-void
.end method
