.class public final Lcom/hiya/stingray/manager/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Li/c/b0/c/c;

.field private final b:Landroid/content/Context;

.field private final c:Lg/g/a/a/g/e;

.field private final d:Lcom/hiya/stingray/q/d/f;

.field private final e:Lcom/hiya/stingray/manager/u3;

.field private final f:Lcom/hiya/stingray/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/g/a/a/g/e;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationsApi"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/g4;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/g4;->c:Lg/g/a/a/g/e;

    iput-object p3, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    iput-object p4, p0, Lcom/hiya/stingray/manager/g4;->e:Lcom/hiya/stingray/manager/u3;

    iput-object p5, p0, Lcom/hiya/stingray/manager/g4;->f:Lcom/hiya/stingray/util/a0;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/g4;)Lcom/hiya/stingray/q/d/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/g4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/g4;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/g4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/g4;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final d()Li/c/b0/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Li/c/b0/b/p;->j(Ljava/lang/Object;)Li/c/b0/b/p;

    move-result-object v0

    const-string v1, "Maybe.just(it)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->e:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->w()Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method private final e()Li/c/b0/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "it"

    .line 2
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Li/c/b0/b/p;->j(Ljava/lang/Object;)Li/c/b0/b/p;

    move-result-object v0

    const-string v1, "Maybe.just(it)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lcom/hiya/stingray/manager/g4$a;->a:Lcom/hiya/stingray/manager/g4$a;

    invoke-static {v0}, Li/c/b0/b/p;->e(Li/c/b0/b/s;)Li/c/b0/b/p;

    move-result-object v0

    const-string v1, "Maybe.create { emitter -\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v1, "TokenManagerLog"

    .line 1
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string v3, "Sending push and purchase tokens: %s, %s"

    invoke-virtual {v1, v3, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p3}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lg/g/a/a/i/a;

    .line 3
    new-instance v6, Lg/g/a/a/i/b;

    invoke-direct {v6, p3}, Lg/g/a/a/i/b;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p2

    .line 4
    invoke-direct/range {v4 .. v9}, Lg/g/a/a/i/a;-><init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;ILkotlin/w/c/g;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lg/g/a/a/i/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lg/g/a/a/i/a;-><init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;ILkotlin/w/c/g;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->c:Lg/g/a/a/g/e;

    invoke-interface {v0, p1, v1}, Lg/g/a/a/g/e;->a(Ljava/lang/String;Lg/g/a/a/i/a;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/hiya/stingray/manager/g4$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/g4$e;-><init>(Lcom/hiya/stingray/manager/g4;)V

    .line 10
    sget-object v2, Lcom/hiya/stingray/manager/g4$f;->f:Lcom/hiya/stingray/manager/g4$f;

    .line 11
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method private final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/g4;->e()Li/c/b0/b/p;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/g4;->d()Li/c/b0/b/p;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/hiya/stingray/manager/g4$h;->a:Lcom/hiya/stingray/manager/g4$h;

    .line 5
    invoke-static {v1, v2, v3}, Li/c/b0/b/p;->A(Li/c/b0/b/t;Li/c/b0/b/t;Li/c/b0/d/c;)Li/c/b0/b/p;

    move-result-object v1

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/p;->l(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object v1

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/p;->s(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/hiya/stingray/manager/g4$g;

    invoke-direct {v2, v0, p0}, Lcom/hiya/stingray/manager/g4$g;-><init>(Ljava/lang/String;Lcom/hiya/stingray/manager/g4;)V

    .line 9
    sget-object v0, Lcom/hiya/stingray/manager/g4$i;->f:Lcom/hiya/stingray/manager/g4$i;

    .line 10
    invoke-virtual {v1, v2, v0}, Li/c/b0/b/p;->p(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    :cond_0
    return-void
.end method

.method private final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->C(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/q/d/f;->y(Ljava/lang/Boolean;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/g4;->h()V

    return-void
.end method


# virtual methods
.method public final f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hiya/stingray/manager/g4;->h()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/g4;->a:Li/c/b0/c/c;

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/g4;->f:Lcom/hiya/stingray/util/a0;

    const-class v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->e:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->w()Li/c/b0/b/p;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/p;->x()Li/c/b0/b/v;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/hiya/stingray/manager/g4$b;->a:Lcom/hiya/stingray/manager/g4$b;

    .line 6
    invoke-static {p1, v0, v1}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    .line 7
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/hiya/stingray/manager/g4$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/g4$c;-><init>(Lcom/hiya/stingray/manager/g4;)V

    .line 10
    sget-object v1, Lcom/hiya/stingray/manager/g4$d;->f:Lcom/hiya/stingray/manager/g4$d;

    .line 11
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/manager/g4;->a:Li/c/b0/c/c;

    :cond_1
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->F(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/g4;->d:Lcom/hiya/stingray/q/d/f;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/q/d/f;->y(Ljava/lang/Boolean;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/g4;->h()V

    return-void
.end method
