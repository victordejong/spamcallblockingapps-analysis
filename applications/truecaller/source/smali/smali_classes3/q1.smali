.class public final Lq1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lq1;->b:I

    iput-object p2, p0, Lq1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lq1;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Lq1;->f:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lq1;->b:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1
    iget-object v1, p0, Lq1;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c0/k;

    .line 2
    iget-object v1, v1, Le/a/v/a/c0/k;->b:Le/a/v/a/z/a;

    .line 3
    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->TWITTER:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v1, v2}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 4
    iget-object v1, p0, Lq1;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c0/k;

    .line 5
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c0/e;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lq1;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "twitterLink"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/v/a/c0/e;->T(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_2
    iget-object v1, p0, Lq1;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c0/k;

    .line 9
    iget-object v1, v1, Le/a/v/a/c0/k;->b:Le/a/v/a/z/a;

    .line 10
    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->FACEBOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v1, v2}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 11
    iget-object v1, p0, Lq1;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c0/k;

    .line 12
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c0/e;

    if-eqz v1, :cond_3

    .line 13
    iget-object v2, p0, Lq1;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "facebookLink"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/v/a/c0/e;->R(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
