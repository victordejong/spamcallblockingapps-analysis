.class public final Lr2;
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


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lr2;->b:I

    iput-object p2, p0, Lr2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr2;->d:Ljava/lang/Object;

    iput-object p4, p0, Lr2;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lr2;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1
    iget-object v1, p0, Lr2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/g;

    .line 2
    iget-object v1, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    .line 3
    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->INSTAGRAM:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v1, v3}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 4
    iget-object v1, p0, Lr2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/g;

    .line 5
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/c;

    if-eqz v1, :cond_0

    .line 6
    iget-object v3, p0, Lr2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/v/a/o0/c;->c(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_2
    iget-object v1, p0, Lr2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/g;

    .line 9
    iget-object v1, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    .line 10
    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->TWITTER:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v1, v3}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 11
    iget-object v1, p0, Lr2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/g;

    .line 12
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/c;

    if-eqz v1, :cond_3

    .line 13
    iget-object v3, p0, Lr2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/v/a/o0/c;->T(Ljava/lang/String;)V

    :cond_3
    return-object v0

    .line 14
    :cond_4
    iget-object v1, p0, Lr2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/g;

    .line 15
    iget-object v1, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    .line 16
    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->FACEBOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v1, v3}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 17
    iget-object v1, p0, Lr2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/g;

    .line 18
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/o0/c;

    if-eqz v1, :cond_5

    .line 19
    iget-object v3, p0, Lr2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/v/a/o0/c;->R(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
