.class public final Le/a/l/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/l/p2/r0;

.field public final c:Le/a/l/a/y;

.field public final d:Le/a/l/p2/f;

.field public final e:Le/a/l/a/o;

.field public final f:Le/a/l/g/t;

.field public final g:Le/a/l/p2/t1;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l/p2/r0;Le/a/l/a/y;Le/a/l/p2/f;Le/a/l/a/o;Le/a/l/g/t;Le/a/l/p2/t1;Ls1/w/f;)V
    .locals 1
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freePremiumPromo"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paidPremiumCheck"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goldGiftPromoUtils"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webBillingPurchaseStateManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/v1;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/v1;->b:Le/a/l/p2/r0;

    iput-object p3, p0, Le/a/l/v1;->c:Le/a/l/a/y;

    iput-object p4, p0, Le/a/l/v1;->d:Le/a/l/p2/f;

    iput-object p5, p0, Le/a/l/v1;->e:Le/a/l/a/o;

    iput-object p6, p0, Le/a/l/v1;->f:Le/a/l/g/t;

    iput-object p7, p0, Le/a/l/v1;->g:Le/a/l/p2/t1;

    iput-object p8, p0, Le/a/l/v1;->h:Ls1/w/f;

    return-void
.end method
