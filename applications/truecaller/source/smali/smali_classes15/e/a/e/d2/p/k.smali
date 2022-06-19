.class public final Le/a/e/d2/p/k;
.super Le/a/b3/c;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/truecaller/bottombar/BottomBarButtonType;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Le/a/l/a/p;

.field public final g:Le/a/l/p2/a1;


# direct methods
.method public constructor <init>(Le/a/l/a/p;Le/a/l/p2/a1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumBottomBarAttentionHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionProblemHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/b3/c;-><init>()V

    iput-object p1, p0, Le/a/e/d2/p/k;->f:Le/a/l/a/p;

    iput-object p2, p0, Le/a/e/d2/p/k;->g:Le/a/l/p2/a1;

    const p1, 0x7f0a0252

    .line 2
    iput p1, p0, Le/a/e/d2/p/k;->a:I

    .line 3
    sget-object p1, Lcom/truecaller/bottombar/BottomBarButtonType;->PREMIUM:Lcom/truecaller/bottombar/BottomBarButtonType;

    iput-object p1, p0, Le/a/e/d2/p/k;->b:Lcom/truecaller/bottombar/BottomBarButtonType;

    const p1, 0x7f120777

    .line 4
    iput p1, p0, Le/a/e/d2/p/k;->c:I

    const p1, 0x7f08077f

    .line 5
    iput p1, p0, Le/a/e/d2/p/k;->d:I

    const p1, 0x7f080775

    .line 6
    iput p1, p0, Le/a/e/d2/p/k;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/k;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/k;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/k;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/k;->c:I

    return v0
.end method

.method public e()Lcom/truecaller/bottombar/BottomBarButtonType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/d2/p/k;->b:Lcom/truecaller/bottombar/BottomBarButtonType;

    return-object v0
.end method

.method public f()Le/a/b3/b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/d2/p/k;->f:Le/a/l/a/p;

    .line 2
    iget-object v1, v0, Le/a/l/a/p;->a:Le/a/l/a/w;

    invoke-virtual {v1}, Le/a/l/a/w;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Le/a/l/a/p;->b:Le/a/l/a/j0;

    invoke-virtual {v1}, Le/a/l/a/j0;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v0, v0, Le/a/l/a/p;->c:Le/a/l/c/n/d;

    invoke-interface {v0}, Le/a/l/c/n/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Le/a/b3/a;->a:Le/a/b3/a;

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/e/d2/p/k;->g:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Le/a/b3/k;->a:Le/a/b3/k;

    goto :goto_2

    .line 7
    :cond_3
    sget-object v0, Le/a/b3/l;->a:Le/a/b3/l;

    :goto_2
    return-object v0
.end method
