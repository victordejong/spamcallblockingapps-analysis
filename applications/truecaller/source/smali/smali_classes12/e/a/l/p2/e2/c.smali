.class public final Le/a/l/p2/e2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/l/p2/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "freePremiumPromo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/c;->a:Le/a/l/p2/f;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/l/p2/e2/c;->a:Le/a/l/p2/f;

    .line 2
    iget-object v0, p1, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v1, "premiumFreePromoReceived"

    invoke-interface {v0, v1}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/l/p2/f;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    const-string v1, "premiumFreePromoEnded"

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Le/a/l/p2/f;->a:Le/a/z4/d;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p1}, Le/a/l/p2/f;->b()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Le/a/l/p2/f;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Le/a/l/p2/f;->a:Le/a/z4/d;

    invoke-interface {v0, v1}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le/a/l/p2/f;->a()V

    :cond_2
    :goto_0
    return-void
.end method
