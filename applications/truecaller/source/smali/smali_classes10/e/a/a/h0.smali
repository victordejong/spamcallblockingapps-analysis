.class public Le/a/a/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/h0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/a/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Le/a/p5/h0;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Landroid/content/Context;)V
    .locals 5

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h0;->e:Le/a/p5/h0;

    iput-object p2, p0, Le/a/a/h0;->f:Landroid/content/Context;

    const/4 p1, 0x3

    new-array p1, p1, [Ls1/k;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Le/a/a/h0$a$d;

    invoke-direct {v2}, Le/a/a/h0$a$d;-><init>()V

    .line 3
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v0

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Le/a/a/h0$a$c;

    invoke-direct {v2}, Le/a/a/h0$a$c;-><init>()V

    .line 5
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v0

    const/4 v1, 0x2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Le/a/a/h0$a$b;

    invoke-direct {v3}, Le/a/a/h0$a$b;-><init>()V

    .line 7
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v1

    .line 8
    invoke-static {p1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/a/h0;->a:Ljava/util/Map;

    .line 9
    invoke-static {p2, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    const v1, 0x7f04056c

    invoke-static {p1, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/a/h0;->b:I

    .line 10
    invoke-static {p2, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    const v1, 0x7f0405a1

    invoke-static {p1, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/a/h0;->c:I

    .line 11
    invoke-static {p2, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    const p2, 0x7f040673

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/a/h0;->d:I

    return-void
.end method


# virtual methods
.method public B(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h0;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/h0$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/a/h0$a;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0806aa

    :goto_0
    return p1
.end method

.method public H(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h0;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/h0;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/h0$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/a/h0$a;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f060615

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/h0;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    const v0, 0x7f080634

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/h0;->d:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/h0;->b:I

    return v0
.end method
