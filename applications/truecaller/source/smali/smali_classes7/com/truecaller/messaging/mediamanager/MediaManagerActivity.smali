.class public final Lcom/truecaller/messaging/mediamanager/MediaManagerActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/mediamanager/MediaManagerActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/messaging/mediamanager/MediaManagerActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "<init>",
        "()V",
        "a",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/messaging/mediamanager/MediaManagerActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/mediamanager/MediaManagerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/mediamanager/MediaManagerActivity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/mediamanager/MediaManagerActivity;->a:Lcom/truecaller/messaging/mediamanager/MediaManagerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "conversation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz p1, :cond_1

    .line 4
    sget-object v1, Le/a/a/n/a;->f:Le/a/a/n/a$c;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "analytics_context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "unknown"

    :goto_0
    const-string v4, "intent.getStringExtra(EX\u2026AnalyticsContexts.UNKNOWN"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "is_delete_mode"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "analyticsContext"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Le/a/a/n/a;

    invoke-direct {v1}, Le/a/a/n/a;-><init>()V

    .line 9
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 15
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p1, 0x1020002

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 17
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    :cond_1
    return-void
.end method
