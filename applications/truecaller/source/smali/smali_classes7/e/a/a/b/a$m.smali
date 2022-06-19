.class public final Le/a/a/b/a$m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->Bl(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/b/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/a/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$m;->b:Le/a/a/b/a;

    iput-object p2, p0, Le/a/a/b/a$m;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/b/a$m;->d:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/b/a$m;->e:Ljava/lang/String;

    iput-object p5, p0, Le/a/a/b/a$m;->f:Ljava/lang/String;

    iput-wide p6, p0, Le/a/a/b/a$m;->g:J

    iput-boolean p8, p0, Le/a/a/b/a$m;->h:Z

    iput-boolean p9, p0, Le/a/a/b/a$m;->i:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/a/b/a$m;->b:Le/a/a/b/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "it"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/a/b/a$m;->c:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Le/a/a/b/a$m;->d:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Le/a/a/b/a$m;->e:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Le/a/a/b/a$m;->f:Ljava/lang/String;

    const/4 v5, 0x0

    .line 7
    sget-object v6, Lcom/truecaller/details_view/analytics/SourceType;->Inbox:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 8
    iget-wide v9, p0, Le/a/a/b/a$m;->g:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 9
    iget-boolean v10, p0, Le/a/a/b/a$m;->h:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 10
    iget-boolean v11, p0, Le/a/a/b/a$m;->i:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "context"

    .line 11
    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "source"

    invoke-static {v6, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "ARG_TC_ID"

    .line 13
    invoke-virtual {v6, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME"

    .line 14
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NORMALIZED_NUMBER"

    .line 15
    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RAW_NUMBER"

    .line 16
    invoke-virtual {v6, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "COUNTRY_CODE"

    .line 17
    invoke-virtual {v6, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12

    const-string v2, "ARG_SOURCE_TYPE"

    .line 18
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SHOULD_SAVE"

    .line 19
    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 20
    invoke-virtual {v6, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x14

    const-string v2, "SEARCH_TYPE"

    .line 21
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v9, :cond_0

    .line 22
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-string v3, "CONVERSATION_ID"

    invoke-virtual {v6, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    if-eqz v10, :cond_1

    .line 23
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "IS_HIDDEN_NUMBER"

    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    if-eqz v11, :cond_2

    .line 24
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "IS_BUSINESS_IM"

    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const/high16 v1, 0x24000000

    .line 25
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intentWithExtras"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    :cond_3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
