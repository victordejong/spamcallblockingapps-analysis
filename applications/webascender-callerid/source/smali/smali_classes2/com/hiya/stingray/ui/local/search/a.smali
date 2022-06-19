.class public Lcom/hiya/stingray/ui/local/search/a;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/search/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Li/c/b0/c/a;

.field private final d:Lcom/hiya/stingray/manager/o1;

.field private final e:Lcom/hiya/stingray/util/a0;

.field private final f:Lcom/hiya/stingray/manager/z3;

.field private final g:Lcom/hiya/stingray/ui/common/error/e;

.field private final h:Lcom/hiya/stingray/manager/h4;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Li/c/b0/c/a;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/z3;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/manager/h4;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "compositeDisposable"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callLogManager"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rxEventBus"

    invoke-static {p4, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "searchManager"

    invoke-static {p5, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiErrorHandlingHelper"

    invoke-static {p6, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "userAccountManager"

    invoke-static {p7, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/search/a;->c:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/search/a;->d:Lcom/hiya/stingray/manager/o1;

    iput-object p4, p0, Lcom/hiya/stingray/ui/local/search/a;->e:Lcom/hiya/stingray/util/a0;

    iput-object p5, p0, Lcom/hiya/stingray/ui/local/search/a;->f:Lcom/hiya/stingray/manager/z3;

    iput-object p6, p0, Lcom/hiya/stingray/ui/local/search/a;->g:Lcom/hiya/stingray/ui/common/error/e;

    iput-object p7, p0, Lcom/hiya/stingray/ui/local/search/a;->h:Lcom/hiya/stingray/manager/h4;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/a;->b:Ljava/util/List;

    return-void
.end method

.method private final A()Li/c/b0/d/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/search/a$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/a$c;-><init>(Lcom/hiya/stingray/ui/local/search/a;)V

    return-object v0
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/local/search/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/search/a;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/local/search/a;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/search/a;->e:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/local/search/a;)Lcom/hiya/stingray/ui/common/error/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/search/a;->g:Lcom/hiya/stingray/ui/common/error/e;

    return-object p0
.end method

.method public static final synthetic w(Lcom/hiya/stingray/ui/local/search/a;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/a;->b:Ljava/util/List;

    return-void
.end method

.method private final y()Li/c/b0/d/g;
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
    new-instance v0, Lcom/hiya/stingray/ui/local/search/a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/a$a;-><init>(Lcom/hiya/stingray/ui/local/search/a;)V

    return-object v0
.end method

.method private final z()Li/c/b0/d/g;
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
    new-instance v0, Lcom/hiya/stingray/ui/local/search/a$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/a$b;-><init>(Lcom/hiya/stingray/ui/local/search/a;)V

    return-object v0
.end method


# virtual methods
.method public B(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callLogItems"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a;->f:Lcom/hiya/stingray/manager/z3;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/z3;->e(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/local/search/a$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/a$d;-><init>(Lcom/hiya/stingray/ui/local/search/a;)V

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/local/search/a$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/a$e;-><init>(Lcom/hiya/stingray/ui/local/search/a;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a;->c:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public C(Lcom/hiya/stingray/t/n0;)V
    .locals 2

    const-string v0, "searchItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a;->f:Lcom/hiya/stingray/manager/z3;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/z3;->d(Lcom/hiya/stingray/t/n0;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/local/search/a$f;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/a$f;-><init>(Lcom/hiya/stingray/ui/local/search/a;)V

    .line 4
    sget-object v1, Lcom/hiya/stingray/ui/local/search/a$g;->f:Lcom/hiya/stingray/ui/local/search/a$g;

    .line 5
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a;->c:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a;->d:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/a;->h:Lcom/hiya/stingray/manager/h4;

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
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/a;->A()Li/c/b0/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/a;->z()Li/c/b0/d/g;

    move-result-object v1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/a;->y()Li/c/b0/d/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/a;->c:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
