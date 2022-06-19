.class public final Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\n\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000cj\u0004\u0018\u0001`\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R#\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0019\u0010$\u001a\u00020\u001f8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R0\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000cj\u0004\u0018\u0001`\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u000f\u001a\u0004\u0008&\u0010\u0011\"\u0004\u0008\'\u0010\u0013\u00a8\u0006)"
    }
    d2 = {
        "Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "Landroid/widget/CompoundButton;",
        "buttonView",
        "",
        "isChecked",
        "onCheckedChanged",
        "(Landroid/widget/CompoundButton;Z)V",
        "Lkotlin/Function0;",
        "Lcom/truecaller/ui/settings/callerid/SelectionListener;",
        "v",
        "Ls1/z/b/a;",
        "getClassicSelectedListener",
        "()Ls1/z/b/a;",
        "setClassicSelectedListener",
        "(Ls1/z/b/a;)V",
        "classicSelectedListener",
        "",
        "Landroid/widget/RadioButton;",
        "w",
        "Ls1/g;",
        "getRadioButtonSet",
        "()Ljava/util/Set;",
        "radioButtonSet",
        "x",
        "Z",
        "callOptionSelectedCallbacks",
        "Le/a/m3/y0;",
        "t",
        "Le/a/m3/y0;",
        "getBinding",
        "()Le/a/m3/y0;",
        "binding",
        "u",
        "getFullScreenSelectedListener",
        "setFullScreenSelectedListener",
        "fullScreenSelectedListener",
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
.field public final t:Le/a/m3/y0;

.field public u:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ls1/g;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0443

    .line 4
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a09bb

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    const p1, 0x7f0a09bc

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    const p1, 0x7f0a0dd7

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    const p1, 0x7f0a0dd8

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    const p1, 0x7f0a11d6

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 10
    new-instance p1, Le/a/m3/y0;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Le/a/m3/y0;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;)V

    const-string p2, "SettingsCalleridStyleBin\u2026ater.from(context), this)"

    .line 11
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->t:Le/a/m3/y0;

    .line 12
    new-instance p2, Le/a/e/b/j/n;

    invoke-direct {p2, p0}, Le/a/e/b/j/n;-><init>(Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->w:Ls1/g;

    .line 13
    iget-object p2, p1, Le/a/m3/y0;->c:Landroid/widget/ImageView;

    const-string v0, "imageCallerIdStyleFullscreen"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Le/a/m3/y0;->e:Landroid/widget/RadioButton;

    const-string v1, "radiobuttonCallerIdStyleFullscreen"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Le/a/e/b/j/m;

    invoke-direct {v1, v0}, Le/a/e/b/j/m;-><init>(Landroid/widget/RadioButton;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p1, Le/a/m3/y0;->b:Landroid/widget/ImageView;

    const-string v0, "imageCallerIdStyleClassic"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Le/a/m3/y0;->d:Landroid/widget/RadioButton;

    const-string v0, "radiobuttonCallerIdStyleClassic"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Le/a/e/b/j/m;

    invoke-direct {v0, p1}, Le/a/e/b/j/m;-><init>(Landroid/widget/RadioButton;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->getRadioButtonSet()Ljava/util/Set;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 19
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final getRadioButtonSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final getBinding()Le/a/m3/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->t:Le/a/m3/y0;

    return-object v0
.end method

.method public final getClassicSelectedListener()Ls1/z/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->v:Ls1/z/b/a;

    return-object v0
.end method

.method public final getFullScreenSelectedListener()Ls1/z/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->u:Ls1/z/b/a;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->x:Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->t:Le/a/m3/y0;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 2
    iget-boolean v2, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->x:Z

    if-eqz v2, :cond_5

    .line 3
    iget-object v2, v0, Le/a/m3/y0;->e:Landroid/widget/RadioButton;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->u:Ls1/z/b/a;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    :cond_0
    invoke-static {v3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, Le/a/m3/y0;->d:Landroid/widget/RadioButton;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->v:Ls1/z/b/a;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    :cond_2
    invoke-static {v3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    return-void

    .line 6
    :cond_5
    iget-object v2, v0, Le/a/m3/y0;->e:Landroid/widget/RadioButton;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7
    iget-object v0, v0, Le/a/m3/y0;->c:Landroid/widget/ImageView;

    const-string v2, "imageCallerIdStyleFullscreen"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 8
    :cond_6
    iget-object v2, v0, Le/a/m3/y0;->d:Landroid/widget/RadioButton;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9
    iget-object v0, v0, Le/a/m3/y0;->b:Landroid/widget/ImageView;

    const-string v2, "imageCallerIdStyleClassic"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_9

    .line 10
    invoke-direct {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->getRadioButtonSet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2, p1}, Ls1/u/i;->c0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    if-eqz p2, :cond_8

    .line 12
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final setClassicSelectedListener(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->v:Ls1/z/b/a;

    return-void
.end method

.method public final setFullScreenSelectedListener(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->u:Ls1/z/b/a;

    return-void
.end method
