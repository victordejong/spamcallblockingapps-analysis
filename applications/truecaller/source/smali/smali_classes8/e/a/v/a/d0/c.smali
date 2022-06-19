.class public final Le/a/v/a/d0/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/d0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/d0/b;",
        ">;",
        "Le/a/v/a/d0/a;"
    }
.end annotation


# instance fields
.field public b:Le/a/v/a/s;

.field public final c:Le/a/b0/e/l;

.field public final d:Le/a/b0/p/d;

.field public final e:Le/a/v/a/z/a;

.field public final f:Le/a/w/c/a;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/b0/p/d;Le/a/v/a/z/a;Le/a/w/c/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "truecallerAccountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralTargetResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/d0/c;->c:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/v/a/d0/c;->d:Le/a/b0/p/d;

    iput-object p3, p0, Le/a/v/a/d0/c;->e:Le/a/v/a/z/a;

    iput-object p4, p0, Le/a/v/a/d0/c;->f:Le/a/w/c/a;

    return-void
.end method


# virtual methods
.method public final Hj(Lcom/truecaller/data/entity/Contact;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->c1()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/v/a/d0/c;->c:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final Ij()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/d0/c;->c:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/v/a/d0/c;->d:Le/a/b0/p/d;

    invoke-interface {v0}, Le/a/b0/p/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
