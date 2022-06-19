.class public final Le/a/v/a/c0/k;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/c0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/c0/e;",
        ">;",
        "Le/a/v/a/c0/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/v/a/z/a;

.field public final c:Le/a/v/p/d;

.field public final d:Le/a/v/a/o0/a;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/l/a/q;


# direct methods
.method public constructor <init>(Le/a/v/a/z/a;Le/a/v/p/d;Le/a/v/a/o0/a;Le/a/p5/c0;Le/a/l/a/q;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "detailsViewAnalytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactUtilHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialMediaHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumContactFieldsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/c0/k;->b:Le/a/v/a/z/a;

    iput-object p2, p0, Le/a/v/a/c0/k;->c:Le/a/v/p/d;

    iput-object p3, p0, Le/a/v/a/c0/k;->d:Le/a/v/a/o0/a;

    iput-object p4, p0, Le/a/v/a/c0/k;->e:Le/a/p5/c0;

    iput-object p5, p0, Le/a/v/a/c0/k;->f:Le/a/l/a/q;

    return-void
.end method


# virtual methods
.method public final Hj(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->P()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Le/a/v/a/c0/k;->d:Le/a/v/a/o0/a;

    invoke-interface {v0, p1}, Le/a/v/a/o0/a;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final Ij(ZLcom/truecaller/premium/PremiumLaunchContext;Ls1/z/b/a;)Ls1/z/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/truecaller/premium/PremiumLaunchContext;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance p3, Le/a/v/a/c0/k$a;

    invoke-direct {p3, p0, p2}, Le/a/v/a/c0/k$a;-><init>(Le/a/v/a/c0/k;Lcom/truecaller/premium/PremiumLaunchContext;)V

    :cond_0
    return-object p3
.end method
