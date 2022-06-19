.class public final Lcom/truecaller/premium/GoldCallerIdPreviewView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000c\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\tR\u0019\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/premium/GoldCallerIdPreviewView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/l/p2/n;",
        "data",
        "Ls1/s;",
        "f1",
        "(Le/a/l/p2/n;)V",
        "Landroid/widget/TextView;",
        "t",
        "Landroid/widget/TextView;",
        "titleView",
        "u",
        "subTitleView",
        "w",
        "numberTypeView",
        "Lcom/truecaller/common/ui/ShineView;",
        "y",
        "Lcom/truecaller/common/ui/ShineView;",
        "getShineView",
        "()Lcom/truecaller/common/ui/ShineView;",
        "shineView",
        "Le/a/b0/a/b/a;",
        "x",
        "Le/a/b0/a/b/a;",
        "avatarPresenter",
        "v",
        "numberView",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/TextView;

.field public final x:Le/a/b0/a/b/a;

.field public final y:Lcom/truecaller/common/ui/ShineView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d04cf

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    new-instance p2, Le/a/p5/i0;

    invoke-direct {p2, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p1, Le/a/b0/a/b/a;

    invoke-direct {p1, p2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object p1, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->x:Le/a/b0/a/b/a;

    .line 7
    new-instance v0, Le/a/b0/a/g;

    invoke-direct {v0, p2}, Le/a/b0/a/g;-><init>(Le/a/p5/h0;)V

    const v1, 0x7f0700f5

    .line 8
    invoke-virtual {p2, v1}, Le/a/p5/i0;->H(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a036f

    .line 10
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {p2, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    const p1, 0x7f0a0372

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.caller_id_title)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->t:Landroid/widget/TextView;

    const p1, 0x7f0a0371

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.caller_id_subtitle)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->u:Landroid/widget/TextView;

    const p1, 0x7f0a036d

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.caller_id_number)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->v:Landroid/widget/TextView;

    const p1, 0x7f0a036e

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.caller_id_number_type)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->w:Landroid/widget/TextView;

    const p1, 0x7f0a08b8

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.gold_shine)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/common/ui/ShineView;

    iput-object p1, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->y:Lcom/truecaller/common/ui/ShineView;

    return-void
.end method


# virtual methods
.method public final f1(Le/a/l/p2/n;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_3

    .line 1
    iget-object v2, v0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->x:Le/a/b0/a/b/a;

    .line 2
    new-instance v15, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v3, v15

    .line 3
    iget-object v4, v1, Le/a/l/p2/n;->a:Landroid/net/Uri;

    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 4
    iget-object v5, v1, Le/a/l/p2/n;->d:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 5
    iget-object v7, v1, Le/a/l/p2/n;->b:Ljava/lang/String;

    .line 6
    invoke-static {v7}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v21, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xfdf4

    .line 7
    invoke-direct/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, v21

    .line 8
    invoke-static {v2, v6, v5, v3, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->t:Landroid/widget/TextView;

    .line 10
    iget-object v3, v1, Le/a/l/p2/n;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, v0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->u:Landroid/widget/TextView;

    .line 13
    iget-object v3, v1, Le/a/l/p2/n;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, v0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->u:Landroid/widget/TextView;

    .line 16
    iget-object v3, v1, Le/a/l/p2/n;->c:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    xor-int/lit8 v3, v5, 0x1

    invoke-static {v2, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 18
    iget-object v2, v0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->v:Landroid/widget/TextView;

    .line 19
    iget-object v3, v1, Le/a/l/p2/n;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, v0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->w:Landroid/widget/TextView;

    .line 22
    iget-object v3, v1, Le/a/l/p2/n;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a08b7

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 25
    iget-boolean v1, v1, Le/a/l/p2/n;->f:Z

    if-eqz v1, :cond_2

    const v1, 0x7f08062b

    goto :goto_0

    :cond_2
    const v1, 0x7f080808

    .line 26
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public final getShineView()Lcom/truecaller/common/ui/ShineView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/GoldCallerIdPreviewView;->y:Lcom/truecaller/common/ui/ShineView;

    return-object v0
.end method
