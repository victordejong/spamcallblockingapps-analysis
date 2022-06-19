.class public final Le/a/b/b/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/b/c/d;


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/s;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(ILcom/truecaller/profile/data/dto/BusinessData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/b/c/s;->a:Le/a/q2/a;

    .line 2
    new-instance v1, Le/a/q2/g$b;

    const-string v2, "BusinessProfileSaved"

    invoke-direct {v1, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Le/a/n/g0;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Action"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/n/g0;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "Logo"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Branding;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Color"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Company;->getSize()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v2, "Size"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/OnlineIds;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/n/g0;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "HasWebsite"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 8
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/OnlineIds;->getFacebookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/n/g0;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "HasFacebook"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/OnlineIds;->getTwitterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/n/g0;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "HasTwitter"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 10
    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/BusinessData;->getJobTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/n/g0;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "HasContactPersonsDesignation"

    invoke-virtual {v1, p2, p1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 11
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    const-string p2, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    const-string v0, "cause"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/b/c/s;->a:Le/a/q2/a;

    .line 2
    invoke-static {p1}, Le/a/n/g0;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 4
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string p1, "Cause"

    .line 6
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Le/a/q2/g$b$a;

    const-string p2, "BusinessProfileSaveFailed"

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v1, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p2, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 8
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
