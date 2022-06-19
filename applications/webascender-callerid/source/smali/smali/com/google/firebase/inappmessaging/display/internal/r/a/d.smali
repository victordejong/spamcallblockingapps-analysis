.class public final Lcom/google/firebase/inappmessaging/display/internal/r/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/r/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/r/a/d$b;
    }
.end annotation


# instance fields
.field private a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/a;Lcom/google/firebase/inappmessaging/display/internal/r/b/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->f(Lcom/google/firebase/inappmessaging/display/internal/r/b/a;Lcom/google/firebase/inappmessaging/display/internal/r/b/e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/a;Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lcom/google/firebase/inappmessaging/display/internal/r/a/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;-><init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/a;Lcom/google/firebase/inappmessaging/display/internal/r/b/e;)V

    return-void
.end method

.method public static e()Lcom/google/firebase/inappmessaging/display/internal/r/a/d$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/d$b;-><init>(Lcom/google/firebase/inappmessaging/display/internal/r/a/d$a;)V

    return-object v0
.end method

.method private f(Lcom/google/firebase/inappmessaging/display/internal/r/b/a;Lcom/google/firebase/inappmessaging/display/internal/r/b/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/b;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/i/a/b;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->a:Lj/a/a;

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/h;->a()Lcom/google/firebase/inappmessaging/display/internal/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/i/a/b;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->b:Lj/a/a;

    .line 3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->a:Lj/a/a;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/b;->a(Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/i/a/b;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->c:Lj/a/a;

    .line 4
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->a:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/j;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    .line 5
    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/n;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->e:Lj/a/a;

    .line 6
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/k;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->f:Lj/a/a;

    .line 7
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/l;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->g:Lj/a/a;

    .line 8
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/m;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->h:Lj/a/a;

    .line 9
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/h;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->i:Lj/a/a;

    .line 10
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/i;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->j:Lj/a/a;

    .line 11
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/g;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->k:Lj/a/a;

    .line 12
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->d:Lj/a/a;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/r/b/f;->a(Lcom/google/firebase/inappmessaging/display/internal/r/b/e;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/r/b/f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->l:Lj/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/display/internal/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->b:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/g;

    return-object v0
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/i/a/c;->b(I)Lcom/google/firebase/inappmessaging/display/i/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->e:Lj/a/a;

    const-string v2, "IMAGE_ONLY_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->f:Lj/a/a;

    const-string v2, "IMAGE_ONLY_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->g:Lj/a/a;

    const-string v2, "MODAL_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->h:Lj/a/a;

    const-string v2, "MODAL_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->i:Lj/a/a;

    const-string v2, "CARD_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->j:Lj/a/a;

    const-string v2, "CARD_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->k:Lj/a/a;

    const-string v2, "BANNER_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->l:Lj/a/a;

    const-string v2, "BANNER_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/i/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/i/a/c;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/i/a/c;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/firebase/inappmessaging/display/internal/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/d;->c:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/a;

    return-object v0
.end method
