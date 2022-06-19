.class public Lcom/hiya/stingray/ui/local/dialer/d;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/dialer/e;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/hiya/stingray/manager/o1;

.field private final e:Lcom/hiya/stingray/manager/z3;

.field private final f:Lcom/hiya/stingray/manager/h4;

.field private final g:Lcom/hiya/stingray/ui/common/error/e;

.field private final h:Lcom/hiya/stingray/util/a0;

.field private final i:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/z3;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "callLogManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiErrorHandlingHelper"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->d:Lcom/hiya/stingray/manager/o1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/dialer/d;->e:Lcom/hiya/stingray/manager/z3;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/dialer/d;->f:Lcom/hiya/stingray/manager/h4;

    iput-object p4, p0, Lcom/hiya/stingray/ui/local/dialer/d;->g:Lcom/hiya/stingray/ui/common/error/e;

    iput-object p5, p0, Lcom/hiya/stingray/ui/local/dialer/d;->h:Lcom/hiya/stingray/util/a0;

    iput-object p6, p0, Lcom/hiya/stingray/ui/local/dialer/d;->i:Li/c/b0/c/a;

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->b:Li/c/b0/c/c;

    return-void
.end method

.method private final A()Li/c/b0/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/d/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/dialer/d$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/dialer/d$a;-><init>(Lcom/hiya/stingray/ui/local/dialer/d;)V

    return-object v0
.end method

.method private final B()Li/c/b0/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/d/g<",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/dialer/d$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/dialer/d$b;-><init>(Lcom/hiya/stingray/ui/local/dialer/d;)V

    return-object v0
.end method

.method private final C()Li/c/b0/d/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/dialer/d$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/dialer/d$c;-><init>(Lcom/hiya/stingray/ui/local/dialer/d;)V

    return-object v0
.end method

.method private final D(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->i:Li/c/b0/c/a;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->e:Lcom/hiya/stingray/manager/z3;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/manager/z3;->e(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/d$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/d$d;-><init>(Lcom/hiya/stingray/ui/local/dialer/d;)V

    new-instance v2, Lcom/hiya/stingray/ui/local/dialer/d$e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/dialer/d$e;-><init>(Lcom/hiya/stingray/ui/local/dialer/d;)V

    invoke-virtual {p1, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/local/dialer/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/local/dialer/d;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->h:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/local/dialer/d;)Lcom/hiya/stingray/ui/common/error/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->g:Lcom/hiya/stingray/ui/common/error/e;

    return-object p0
.end method

.method public static final synthetic w(Lcom/hiya/stingray/ui/local/dialer/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/d;->D(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic x(Lcom/hiya/stingray/ui/local/dialer/d;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final E(Lcom/hiya/stingray/t/n0;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 3
    sget-object v0, Lcom/hiya/stingray/ui/CallPickerDialog;->C:Lcom/hiya/stingray/ui/CallPickerDialog$a;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/dialer/e;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/dialer/e;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/local/search/f;->b:Lcom/hiya/stingray/ui/local/search/f$a;

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/ui/local/search/f$a;->a(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/util/g0/c;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/hiya/stingray/ui/CallPickerDialog$a;->a(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->i:Li/c/b0/c/a;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->e:Lcom/hiya/stingray/manager/z3;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/manager/z3;->d(Lcom/hiya/stingray/t/n0;)Li/c/b0/b/v;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/d$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/d$f;-><init>(Lcom/hiya/stingray/ui/local/dialer/d;)V

    .line 10
    sget-object v2, Lcom/hiya/stingray/ui/local/dialer/d$g;->f:Lcom/hiya/stingray/ui/local/dialer/d$g;

    .line 11
    invoke-virtual {p1, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :goto_1
    return-void

    .line 13
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public F(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->b:Li/c/b0/c/c;

    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->d:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/d;->f:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o1;->j(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/d;->C()Li/c/b0/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/d;->B()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/d;->A()Li/c/b0/d/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/d;->F(Li/c/b0/c/c;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->i:Li/c/b0/c/a;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/dialer/d;->z()Li/c/b0/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public z()Li/c/b0/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/d;->b:Li/c/b0/c/c;

    return-object v0
.end method
