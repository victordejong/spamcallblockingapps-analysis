.class public Lcom/truecaller/filters/blockedevents/BlockedEventsActivity;
.super Le/a/h0/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/h0/f;-><init>()V

    return-void
.end method

.method public static qa(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/filters/blockedevents/BlockedEventsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "TOOLBAR_TEXT"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Le/a/h0/f;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Le/a/h0/a/r;

    invoke-direct {p1}, Le/a/h0/a/r;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Le/a/h0/f;->pa(Le/a/h0/g;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Le/a/h0/a/r;

    iput-object p1, p0, Le/a/h0/f;->a:Le/a/h0/g;

    :goto_0
    return-void
.end method
