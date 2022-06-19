.class public final Le/a/v4/s0/m/b/c;
.super Le/a/v4/s0/m/b/b;
.source "SourceFile"


# instance fields
.field public final b:Ls1/g;

.field public final c:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "themedResourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/v4/s0/m/b/b;-><init>()V

    iput-object p2, p0, Le/a/v4/s0/m/b/c;->c:Le/a/p5/h0;

    .line 2
    sget-object p2, Ls1/h;->c:Ls1/h;

    new-instance v0, Le/a/v4/s0/m/b/c$a;

    invoke-direct {v0, p1}, Le/a/v4/s0/m/b/c$a;-><init>(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;)V

    invoke-static {p2, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/s0/m/b/c;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final c()Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;
    .locals 1

    iget-object v0, p0, Le/a/v4/s0/m/b/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;

    return-object v0
.end method
