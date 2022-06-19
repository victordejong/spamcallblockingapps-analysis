.class public final Le/a/n2/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/b0/e/l;

.field public final c:Le/a/e4/p;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/z4/d;

.field public final f:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/e4/p;Le/a/u3/g;Le/a/z4/d;Le/a/b0/q/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "truecallerAccountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n2/b/a;->b:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/n2/b/a;->c:Le/a/e4/p;

    iput-object p3, p0, Le/a/n2/b/a;->d:Le/a/u3/g;

    iput-object p4, p0, Le/a/n2/b/a;->e:Le/a/z4/d;

    iput-object p5, p0, Le/a/n2/b/a;->f:Le/a/b0/q/l0;

    .line 2
    new-instance p1, Le/a/n2/b/a$a;

    invoke-direct {p1, p0}, Le/a/n2/b/a$a;-><init>(Le/a/n2/b/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/n2/b/a;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;
    .locals 1

    iget-object v0, p0, Le/a/n2/b/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;

    return-object v0
.end method
