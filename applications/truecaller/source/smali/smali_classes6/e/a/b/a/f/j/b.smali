.class public final Le/a/b/a/f/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/f/j/a;


# instance fields
.field public final a:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/f/j/b;->a:Le/a/b0/e/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Z
    .locals 5

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/f/j/b;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    const-string v4, "+"

    .line 3
    invoke-static {v0, v4, v1, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-static {v0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setPhoneNumbers(Ljava/util/List;)V

    return v2

    :cond_4
    return v1
.end method
