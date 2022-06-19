.class public final Le/a/a0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a0/v;


# instance fields
.field public final a:Le/a/a0/p;


# direct methods
.method public constructor <init>(Le/a/a0/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "spamCategoryBuilder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a0/w;->a:Le/a/a0/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;I)Le/a/a0/u;
    .locals 4

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/a0/w;->a:Le/a/a0/p;

    const/4 v0, 0x0

    .line 2
    new-instance v2, Le/a/a0/u;

    .line 3
    sget v3, Lcom/truecaller/spamcategories/R$string;->BlockCallerIDPeopleReportedThis:I

    .line 4
    invoke-interface {p1, p2, v0, v3, v1}, Le/a/a0/p;->a(ILcom/truecaller/data/entity/SpamCategoryModel;IZ)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v2, p1, v0}, Le/a/a0/u;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/SpamCategoryModel;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/a0/w;->a:Le/a/a0/p;

    invoke-static {p1}, Le/a/l4/k;->X(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object p1

    .line 7
    new-instance v2, Le/a/a0/u;

    .line 8
    sget v3, Lcom/truecaller/spamcategories/R$string;->BlockCallerIDPeopleReportedThis:I

    .line 9
    invoke-interface {v0, p2, p1, v3, v1}, Le/a/a0/p;->a(ILcom/truecaller/data/entity/SpamCategoryModel;IZ)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-direct {v2, p2, p1}, Le/a/a0/u;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/SpamCategoryModel;)V

    :goto_0
    return-object v2
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Le/a/a0/u;
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Le/a/a0/w;->a(Lcom/truecaller/data/entity/Contact;I)Le/a/a0/u;

    move-result-object p1

    return-object p1
.end method
