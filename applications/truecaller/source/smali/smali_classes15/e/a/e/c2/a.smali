.class public final synthetic Le/a/e/c2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/AvatarView;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/AvatarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/a;->a:Lcom/truecaller/ui/components/AvatarView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Le/a/e/c2/a;->a:Lcom/truecaller/ui/components/AvatarView;

    .line 1
    iget-boolean v0, p1, Lcom/truecaller/ui/components/AvatarView;->k:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/a/e/a/e2;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/truecaller/ui/components/AvatarView;->g:Landroid/net/Uri;

    iget-object v4, p1, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/truecaller/ui/components/AvatarView;->a:Le/f/a/r/g;

    iget-boolean v7, p1, Lcom/truecaller/ui/components/AvatarView;->h:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/a/e/a/e2;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;ILe/f/a/r/g;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
