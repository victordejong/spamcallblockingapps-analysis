.class public Lcom/hiya/stingray/manager/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/u2$a;,
        Lcom/hiya/stingray/manager/u2$b;
    }
.end annotation


# static fields
.field private static final f:[Ljava/lang/Integer;


# instance fields
.field private final a:Li/c/b0/c/a;

.field private final b:Lcom/hiya/stingray/q/d/a;

.field private final c:Lcom/hiya/stingray/manager/x3;

.field private final d:Lcom/hiya/stingray/manager/a4;

.field private final e:Lcom/hiya/stingray/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x5

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object v3, v0, v1

    sput-object v0, Lcom/hiya/stingray/manager/u2;->f:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u2;->c:Lcom/hiya/stingray/manager/x3;

    iput-object p3, p0, Lcom/hiya/stingray/manager/u2;->d:Lcom/hiya/stingray/manager/a4;

    iput-object p4, p0, Lcom/hiya/stingray/manager/u2;->e:Lcom/hiya/stingray/util/a0;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u2;->a:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic a()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/u2;->f:[Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/hiya/stingray/manager/u2$a;)V
    .locals 2

    const-string v0, "face"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->V(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->U(Lcom/hiya/stingray/manager/u2$a;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->K(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->L(I)V

    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->a()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->b()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->c()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->M(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->e:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/l$a;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/manager/u2$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u2$c;-><init>(Lcom/hiya/stingray/manager/u2;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/manager/u2;->a:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->e:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/l$b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/hiya/stingray/manager/u2$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u2$d;-><init>(Lcom/hiya/stingray/manager/u2;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/manager/u2;->a:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->e:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/l$c;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/hiya/stingray/manager/u2$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u2$e;-><init>(Lcom/hiya/stingray/manager/u2;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/hiya/stingray/manager/u2;->a:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final j()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->d:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v2, "select_survey_partners"

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "all"

    .line 4
    invoke-static {v0, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/hiya/stingray/manager/u2;->d:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/a4;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    const/4 v5, 0x2

    .line 6
    invoke-static {v0, v2, v1, v5, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x24

    if-ge v6, v7, :cond_4

    return v1

    :cond_4
    const/16 v6, 0x2d

    .line 8
    invoke-static {v2, v6, v4, v5, v4}, Lkotlin/c0/m;->E0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v5, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v1

    .line 9
    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4
.end method

.method public k(Landroid/content/Context;Lcom/hiya/stingray/manager/u2$b;)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/u2$b;->getHandler()Lkotlin/w/b/q;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    .line 3
    iget-object v3, p0, Lcom/hiya/stingray/manager/u2;->c:Lcom/hiya/stingray/manager/x3;

    .line 4
    invoke-virtual {p2}, Lcom/hiya/stingray/manager/u2$b;->getParamIndex()Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-interface {v0, v2, v3, v4}, Lkotlin/w/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->d:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u2;->j()Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/manager/u2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {p2, v2}, Lcom/hiya/stingray/q/d/a;->m0(Z)V

    .line 9
    new-instance p2, Lcom/hiya/stingray/ui/t/e;

    iget-object v0, p0, Lcom/hiya/stingray/manager/u2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v1, "feedback_survey_link"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/hiya/stingray/ui/t/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/hiya/stingray/ui/t/a;

    invoke-direct {v0, p2, p1}, Lcom/hiya/stingray/ui/t/a;-><init>(Lcom/hiya/stingray/manager/u2$b;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/t/a;->show()V

    :goto_0
    return v2

    :cond_2
    return v1
.end method
