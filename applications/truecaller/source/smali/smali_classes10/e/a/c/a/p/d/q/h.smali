.class public final Le/a/c/a/p/d/q/h;
.super Le/a/c/a/p/d/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/p/d/q/a<",
        "Le/a/c/a/p/c/d$d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/i0;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/b0/m/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Le/a/c/a/g/x0;

.field public final h:Le/a/c/h/h;

.field public final i:Le/a/b0/m/c/a;

.field public final j:Ls1/w/f;

.field public final k:Ls1/w/f;

.field public final l:Le/a/c/a/i/h;


# direct methods
.method public constructor <init>(Le/a/c/a/g/x0;Le/a/c/h/h;Le/a/b0/m/c/a;Ls1/w/f;Ls1/w/f;Le/a/c/a/i/h;)V
    .locals 2
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/x0;->a:Landroid/widget/FrameLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Le/a/c/a/p/d/q/a;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    .line 4
    iput-object p1, p0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iput-object p2, p0, Le/a/c/a/p/d/q/h;->h:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/p/d/q/h;->i:Le/a/b0/m/c/a;

    iput-object p4, p0, Le/a/c/a/p/d/q/h;->j:Ls1/w/f;

    iput-object p5, p0, Le/a/c/a/p/d/q/h;->k:Ls1/w/f;

    iput-object p6, p0, Le/a/c/a/p/d/q/h;->l:Le/a/c/a/i/h;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/c/a/p/d/q/h;->e:Ljava/util/Map;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Le/a/c/a/p/d/q/h;->f:Z

    return-void
.end method


# virtual methods
.method public P4()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/a/p/d/q/h;->f:Z

    return v0
.end method

.method public S4(Le/a/c/a/p/c/d;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/c/a/p/c/d$d;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/c/a/p/c/d$d;->c:Ls1/z/b/l;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/a/c/a/p/d/q/h;->l:Le/a/c/a/i/h;

    const-string v1, "click"

    .line 6
    invoke-static {p1, v1}, Le/a/c/p/a;->O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void
.end method

.method public T4()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/p/d/q/h;->d:Lq3/a/i0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/f/d;->S(Lq3/a/i0;Ljava/util/concurrent/CancellationException;I)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/c/a/p/d/q/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v0, v0, Le/a/c/a/g/x0;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method
