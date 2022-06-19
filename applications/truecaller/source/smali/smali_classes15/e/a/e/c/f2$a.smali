.class public final Le/a/e/c/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/c/f2;->F0(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/c/f2;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/e/c/f2;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/e/c/f2$a;->a:Le/a/e/c/f2;

    iput-object p2, p0, Le/a/e/c/f2$a;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    new-instance p1, Le/a/e/a/e2;

    .line 2
    iget-object v0, p0, Le/a/e/c/f2$a;->a:Le/a/e/c/f2;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v0, p0, Le/a/e/c/f2$a;->b:Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v2

    .line 4
    iget-object v0, p0, Le/a/e/c/f2$a;->a:Le/a/e/c/f2;

    .line 5
    iget-object v0, v0, Le/a/e/c/f2;->l:Le/a/m3/a1;

    .line 6
    iget-object v3, v0, Le/a/m3/a1;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 7
    iget-object v0, p0, Le/a/e/c/f2$a;->b:Lcom/truecaller/data/entity/Contact;

    invoke-static {v0}, Le/a/o5/t;->g(Lcom/truecaller/data/entity/Contact;)I

    move-result v4

    const/4 v5, 0x0

    .line 8
    iget-object v0, p0, Le/a/e/c/f2$a;->b:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v6

    .line 9
    iget-object v0, p0, Le/a/e/c/f2$a;->b:Lcom/truecaller/data/entity/Contact;

    .line 10
    iget-object v7, v0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    const/4 v8, 0x1

    move-object v0, p1

    .line 11
    invoke-direct/range {v0 .. v8}, Le/a/e/a/e2;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;ILe/f/a/r/g;ZLcom/truecaller/data/entity/Contact$PremiumLevel;Z)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
