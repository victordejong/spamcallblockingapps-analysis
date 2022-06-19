.class public Lzendesk/belvedere/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/b$c;,
        Lzendesk/belvedere/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lzendesk/belvedere/b$b;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/belvedere/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzendesk/belvedere/b$b;-><init>(Landroid/content/Context;Lzendesk/belvedere/b$a;)V

    return-object v0
.end method

.method public static b(Landroidx/appcompat/app/c;)Lzendesk/belvedere/e;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-string v1, "belvedere_image_stream"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lzendesk/belvedere/e;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lzendesk/belvedere/e;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lzendesk/belvedere/e;

    invoke-direct {v2}, Lzendesk/belvedere/e;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/y;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    .line 9
    :goto_0
    invoke-static {p0}, Lzendesk/belvedere/o;->l(Landroid/app/Activity;)Lzendesk/belvedere/o;

    move-result-object p0

    invoke-virtual {v2, p0}, Lzendesk/belvedere/e;->m1(Lzendesk/belvedere/o;)V

    return-object v2
.end method
