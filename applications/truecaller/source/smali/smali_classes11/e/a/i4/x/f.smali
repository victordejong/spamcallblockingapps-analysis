.class public final Le/a/i4/x/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/i4/x/e$a;

.field public final synthetic b:Lcom/truecaller/notifications/enhancing/SourcedContact;


# direct methods
.method public constructor <init>(Le/a/i4/x/e$a;Lcom/truecaller/notifications/enhancing/SourcedContact;)V
    .locals 0

    iput-object p1, p0, Le/a/i4/x/f;->a:Le/a/i4/x/e$a;

    iput-object p2, p0, Le/a/i4/x/f;->b:Lcom/truecaller/notifications/enhancing/SourcedContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/i4/x/f;->a:Le/a/i4/x/e$a;

    iget-object v0, p0, Le/a/i4/x/f;->b:Lcom/truecaller/notifications/enhancing/SourcedContact;

    check-cast p1, Le/a/i4/x/b;

    .line 2
    iget-object p1, p1, Le/a/i4/x/b;->a:Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;

    .line 3
    iget-object v1, p1, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;->a:Le/a/r2/f;

    const-string v2, "enhanceNotification"

    const-string v3, "listItemClicked"

    invoke-static {v1, v2, v3}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/truecaller/notifications/enhancing/SourcedContact;->d:Ljava/lang/String;

    .line 5
    iget-object v2, v0, Lcom/truecaller/notifications/enhancing/SourcedContact;->e:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/truecaller/notifications/enhancing/SourcedContact;->f:Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    const/16 v4, 0xa

    const-string v5, "context"

    .line 8
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "source"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ARG_TC_ID"

    .line 10
    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME"

    .line 11
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NORMALIZED_NUMBER"

    .line 12
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RAW_NUMBER"

    .line 13
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "COUNTRY_CODE"

    .line 14
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "ARG_SOURCE_TYPE"

    .line 15
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "SHOULD_SAVE"

    .line 16
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 17
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "SEARCH_TYPE"

    .line 18
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    .line 19
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 20
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentWithExtras"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
