.class public Le/a/r/x/n;
.super Le/a/r/x/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ln3/w/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/x/n$d;
    }
.end annotation


# static fields
.field public static final P:[I


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Landroid/view/ViewGroup;

.field public D:Ljava/lang/String;

.field public E:Landroid/net/Uri;

.field public J:Z

.field public K:Landroid/view/View;

.field public L:Z

.field public M:Le/a/b5/b;

.field public N:Z

.field public O:Lcom/truecaller/social/SocialNetworkType;

.field public i:Le/a/r/q/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/r/q/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Le/a/r/c/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Le/a/r/g$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Le/a/r/x/y/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Le/a/b0/n/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Le/a/r/x/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public q:Le/a/b0/n/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public r:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/ImageView;

.field public u:Lcom/truecaller/wizard/internal/components/EditText;

.field public v:Lcom/truecaller/wizard/internal/components/EditText;

.field public w:Lcom/truecaller/wizard/internal/components/EditText;

.field public x:Landroid/view/View;

.field public y:Landroid/widget/Button;

.field public z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/truecaller/wizard/R$id;->wizard_social1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/truecaller/wizard/R$id;->wizard_social2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Le/a/r/x/n;->P:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/x/l;-><init>()V

    return-void
.end method

.method public static RA(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/social/SocialNetworkType;->getName()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    instance-of p2, p2, Le/a/b5/d$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 4
    sget p2, Lcom/truecaller/wizard/R$string;->Profile_SignUpCancelled:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    sget p2, Lcom/truecaller/wizard/R$string;->Profile_SignUpError:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Le/a/r/t/e;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final SA(Le/a/b5/b;)V
    .locals 2

    const-string v0, "Disposing of "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/a/b5/a;

    .line 2
    iget-object v1, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " social network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Le/a/b5/b;->onStop()V

    .line 5
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    .line 7
    invoke-virtual {p0}, Le/a/r/t/e;->b0()V

    :cond_0
    return-void
.end method

.method public final TA()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r/x/n;->k:Le/a/b0/o/a;

    const-string v1, "profileFirstName"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/r/x/n;->k:Le/a/b0/o/a;

    const-string v2, "profileLastName"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/r/x/n;->k:Le/a/b0/o/a;

    const-string v3, "profileEmail"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Le/a/r/x/n;->k:Le/a/b0/o/a;

    const-string v1, "profileAvatar"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/r/x/n;->D:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Le/a/r/x/n;->s:Landroid/widget/ImageView;

    sget v1, Lcom/truecaller/wizard/R$drawable;->wizard_ic_profile:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final UA()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/wizard/R$string;->Profile_InvalidEmail:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/p5/s0/f;->W(Landroid/view/View;Z)V

    .line 4
    invoke-virtual {p0}, Le/a/r/t/e;->a0()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "first_name"

    .line 9
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_name"

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "email"

    .line 11
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v1, p0, Le/a/r/x/n;->N:Z

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Le/a/r/x/n;->WA(Ljava/util/Map;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Le/a/r/x/n;->q:Le/a/b0/n/g;

    new-instance v2, Le/a/r/x/c;

    invoke-direct {v2, p0, v0}, Le/a/r/x/c;-><init>(Le/a/r/x/n;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Le/a/b0/n/g;->d(Le/a/b0/n/a;)V

    :goto_0
    return-void
.end method

.method public final VA(Lcom/truecaller/social/SocialNetworkType;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/b5/a;

    .line 2
    iget-object v1, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    if-eq v1, p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/b5/b;->onStop()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0}, Le/a/b5/e;->a(Landroid/content/Context;)Le/a/b5/e;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Le/a/b5/e;->b(Lcom/truecaller/social/SocialNetworkType;Landroidx/fragment/app/Fragment;)Le/a/b5/b;

    move-result-object v0

    iput-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    .line 6
    check-cast v0, Le/a/b5/a;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    check-cast v0, Le/a/b5/a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    invoke-interface {v0}, Le/a/b5/b;->onStart()V

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    new-instance v1, Le/a/r/x/n$b;

    invoke-direct {v1, p0, p1}, Le/a/r/x/n$b;-><init>(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;)V

    move-object v2, v0

    check-cast v2, Le/a/b5/a;

    .line 12
    iput-object v1, v2, Le/a/b5/a;->e:Le/a/b5/c;

    .line 13
    new-instance v1, Le/a/r/x/n$c;

    invoke-direct {v1, p0, p1}, Le/a/r/x/n$c;-><init>(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;)V

    check-cast v0, Le/a/b5/a;

    .line 14
    iput-object v1, v0, Le/a/b5/a;->d:Le/a/b5/c;

    .line 15
    invoke-virtual {p0}, Le/a/r/t/e;->a0()V

    .line 16
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    invoke-interface {v0}, Le/a/b5/b;->b()V
    :try_end_0
    .catch Le/a/b5/d$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final WA(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    .line 2
    iget-object v1, p0, Le/a/r/x/n;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/r/x/n;->E:Landroid/net/Uri;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 3
    iget-boolean v1, p0, Le/a/r/x/n;->J:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/r/x/n;->E:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 4
    iget-object v0, p0, Le/a/r/x/n;->O:Lcom/truecaller/social/SocialNetworkType;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    .line 6
    sget-object v0, Lcom/truecaller/common/profile/ImageSource;->TRUECALLER:Lcom/truecaller/common/profile/ImageSource;

    goto :goto_2

    .line 7
    :cond_2
    sget-object v0, Lcom/truecaller/common/profile/ImageSource;->GOOGLE:Lcom/truecaller/common/profile/ImageSource;

    goto :goto_2

    .line 8
    :cond_3
    sget-object v0, Lcom/truecaller/common/profile/ImageSource;->FACEBOOK:Lcom/truecaller/common/profile/ImageSource;

    .line 9
    :goto_2
    sget-object v1, Le/a/b0/b/a/c;->b:Lu3/c0;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Le/a/r/x/n;->E:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "file"

    .line 10
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$asRequestBody"

    .line 11
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Lu3/h0;

    invoke-direct {v3, v2, v1}, Lu3/h0;-><init>(Ljava/io/File;Lu3/c0;)V

    .line 13
    new-instance v1, Le/a/b0/n/d$b;

    invoke-direct {v1, v3, v0}, Le/a/b0/n/d$b;-><init>(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)V

    move-object v4, v1

    goto :goto_3

    .line 14
    :cond_4
    iget-object v1, p0, Le/a/r/x/n;->D:Ljava/lang/String;

    const-string v2, "avatar_url"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v4, v0

    .line 15
    :goto_3
    iget-object v3, p0, Le/a/r/x/n;->q:Le/a/b0/n/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Le/a/r/x/d;

    invoke-direct {v9, p0}, Le/a/r/x/d;-><init>(Le/a/r/x/n;)V

    move-object v7, p1

    invoke-interface/range {v3 .. v9}, Le/a/b0/n/g;->c(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;)V

    return-void
.end method

.method public Wh(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Le/a/b5/b;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final XA()V
    .locals 4

    .line 1
    new-instance v0, Le/a/r/x/q;

    invoke-direct {v0}, Le/a/r/x/q;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 3
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    sget v1, Lcom/truecaller/wizard/R$anim;->fast_slide_in_up:I

    sget v3, Lcom/truecaller/wizard/R$anim;->fast_slide_out_down:I

    .line 5
    invoke-virtual {v2, v1, v3, v1, v3}, Ln3/r/a/f0;->o(IIII)Ln3/r/a/f0;

    sget v1, Lcom/truecaller/wizard/R$id;->profileInputPlaceholder:I

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v1, v0, v3}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 7
    const-class v0, Le/a/r/x/q;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    .line 9
    invoke-virtual {v2}, Ln3/r/a/f0;->g()I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/r/x/n;->j:Le/a/r/q/h;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/r/q/h;->c(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/a/r/x/n;->Wh(IILandroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/r/t/e;->a0()V

    .line 3
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r/t/c;->za()V

    .line 4
    iget-object p1, p0, Le/a/r/x/n;->l:Le/a/r/c/o;

    new-instance p2, Le/a/r/x/b;

    invoke-direct {p2, p0}, Le/a/r/x/b;-><init>(Le/a/r/x/n;)V

    invoke-interface {p1, p2}, Le/a/r/c/o;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/truecaller/wizard/R$id;->nextButton:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/r/x/n;->UA()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/truecaller/social/SocialNetworkType;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {p0, p1}, Le/a/r/x/n;->VA(Lcom/truecaller/social/SocialNetworkType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/a/r/t/e;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "stateSocialNetworkType"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/social/SocialNetworkType;->valueOf(Ljava/lang/String;)Lcom/truecaller/social/SocialNetworkType;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-static {v1}, Le/a/b5/e;->a(Landroid/content/Context;)Le/a/b5/e;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Le/a/b5/e;->b(Lcom/truecaller/social/SocialNetworkType;Landroidx/fragment/app/Fragment;)Le/a/b5/b;

    move-result-object v0

    iput-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;
    :try_end_0
    .catch Le/a/b5/d$c; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Le/a/b5/b;->c(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$id;->wizard_loader_downloader:I

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Le/a/r/x/n$d;

    invoke-virtual {p0}, Le/a/r/x/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Le/a/r/x/n$d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/wizard/R$layout;->wizard_fragment_profile:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/r/x/n;->s:Landroid/widget/ImageView;

    .line 3
    sget p2, Lcom/truecaller/wizard/R$id;->headerBackgroundImageView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/r/x/n;->t:Landroid/widget/ImageView;

    .line 4
    sget p2, Lcom/truecaller/wizard/R$id;->firstName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    .line 5
    sget p2, Lcom/truecaller/wizard/R$id;->lastName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    .line 6
    sget p2, Lcom/truecaller/wizard/R$id;->email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    .line 7
    sget p2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/x/n;->x:Landroid/view/View;

    .line 8
    sget p2, Lcom/truecaller/wizard/R$id;->animated:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/x/n;->B:Landroid/view/View;

    .line 9
    sget p2, Lcom/truecaller/wizard/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Le/a/r/x/n;->C:Landroid/view/ViewGroup;

    .line 10
    sget p2, Lcom/truecaller/wizard/R$id;->socialContent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/x/n;->K:Landroid/view/View;

    .line 11
    sget p2, Lcom/truecaller/wizard/R$id;->manualInputButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Le/a/r/x/n;->y:Landroid/widget/Button;

    .line 12
    sget p2, Lcom/truecaller/wizard/R$id;->businessProfileContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/x/n;->z:Landroid/view/View;

    .line 13
    sget p2, Lcom/truecaller/wizard/R$id;->businessProfileButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/x/n;->A:Landroid/view/View;

    return-object p1
.end method

.method public onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->b0()V

    .line 2
    invoke-virtual {p1}, Ln3/w/b/b;->getId()I

    move-result p1

    .line 3
    sget v0, Lcom/truecaller/wizard/R$id;->wizard_loader_downloader:I

    if-ne p1, v0, :cond_2

    .line 4
    instance-of p1, p2, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Le/a/r/x/l;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/a/b0/q/s;->e(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    iput-object p1, p0, Le/a/r/x/n;->E:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/a/r/x/n;->D:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Le/a/r/x/n;->J:Z

    .line 9
    iget-object p1, p0, Le/a/r/x/n;->s:Landroid/widget/ImageView;

    sget p2, Lcom/truecaller/wizard/R$drawable;->wizard_ic_profile:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-boolean p1, p0, Le/a/r/x/n;->L:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Le/a/r/x/n;->UA()V

    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lcom/truecaller/wizard/R$string;->Profile_PhotoError:I

    invoke-virtual {p0, p1}, Le/a/r/t/e;->a(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Le/a/r/x/n;->L:Z

    :cond_2
    return-void
.end method

.method public onLoaderReset(Ln3/w/b/b;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 3
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 4
    aget v4, p3, v2

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/truecaller/social/SocialNetworkType;->values()[Lcom/truecaller/social/SocialNetworkType;

    move-result-object p2

    aget-object p1, p2, p1

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Le/a/r/x/n;->VA(Lcom/truecaller/social/SocialNetworkType;)V

    goto :goto_2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not all required permissions were granted for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/b5/b;->d(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/b5/b;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Le/a/r/x/n;->M:Le/a/b5/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/b5/b;->onStop()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget v2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v2, v0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    sget-object v3, Le/a/r/c/r;->b:Lcom/truecaller/wizard/internal/components/EditText$d;

    invoke-virtual {v2, v3}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 4
    iget-object v2, v0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-static {v2}, Le/a/p5/s0/g;->x(Landroid/widget/EditText;)V

    .line 5
    iget-object v2, v0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v2, v3}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 6
    iget-object v2, v0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-static {v2}, Le/a/p5/s0/g;->x(Landroid/widget/EditText;)V

    .line 7
    iget-object v2, v0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    sget-object v3, Le/a/r/c/r;->c:Lcom/truecaller/wizard/internal/components/EditText$d;

    invoke-virtual {v2, v3}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/a/r/x/n;->TA()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/a/r/t/e;->a0()V

    .line 10
    iget-object v2, v0, Le/a/r/x/n;->q:Le/a/b0/n/g;

    new-instance v3, Le/a/r/x/f;

    invoke-direct {v3, v0}, Le/a/r/x/f;-><init>(Le/a/r/x/n;)V

    invoke-interface {v2, v3}, Le/a/b0/n/g;->d(Le/a/b0/n/a;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v5, "playTransitionAnimation"

    .line 12
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, v0, Le/a/r/x/n;->s:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    iget-object v2, v0, Le/a/r/x/n;->t:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v2, 0x2

    new-array v6, v2, [F

    .line 15
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/truecaller/wizard/R$integer;->wizard_animation_duration_medium:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v9, v7

    invoke-virtual {v6, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    new-instance v7, Le/a/r/x/i;

    invoke-direct {v7, v0}, Le/a/r/x/i;-><init>(Le/a/r/x/n;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v2, [F

    .line 19
    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/truecaller/wizard/R$integer;->wizard_animation_duration_short:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    new-instance v9, Le/a/r/x/h;

    invoke-direct {v9, v0}, Le/a/r/x/h;-><init>(Le/a/r/x/n;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v2, [Landroid/animation/Animator;

    aput-object v6, v10, v4

    aput-object v7, v10, v3

    .line 23
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-array v6, v2, [Landroid/animation/Animator;

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    move v10, v3

    :goto_0
    const/4 v11, 0x3

    if-ge v10, v11, :cond_0

    .line 25
    iget-object v11, v0, Le/a/r/x/n;->C:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 26
    invoke-virtual {v11, v5}, Landroid/view/View;->setAlpha(F)V

    new-array v12, v2, [F

    .line 27
    fill-array-data v12, :array_2

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 28
    invoke-virtual {v12, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    new-instance v13, Le/a/r/x/g;

    invoke-direct {v13, v11}, Le/a/r/x/g;-><init>(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v13, v10

    mul-long/2addr v13, v7

    const-wide/16 v15, 0x4

    .line 31
    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-int/lit8 v11, v10, -0x1

    .line 32
    aput-object v12, v6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 33
    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 34
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 35
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    .line 36
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 37
    new-instance v2, Le/a/r/x/o;

    invoke-direct {v2, v0}, Le/a/r/x/o;-><init>(Le/a/r/x/n;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 39
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 40
    :goto_1
    iget-object v2, v0, Le/a/r/x/n;->K:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    invoke-static {v2}, Le/a/b5/e;->a(Landroid/content/Context;)Le/a/b5/e;

    move-result-object v2

    .line 42
    iget-object v5, v2, Le/a/b5/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    const-class v2, Lcom/truecaller/social/SocialNetworkType;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    goto :goto_2

    .line 44
    :cond_2
    iget-object v2, v2, Le/a/b5/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v2

    .line 45
    :goto_2
    invoke-virtual {v2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 46
    new-instance v5, Le/a/r/c/h;

    new-instance v6, Le/a/r/x/n$a;

    invoke-direct {v6, v0}, Le/a/r/x/n$a;-><init>(Le/a/r/x/n;)V

    invoke-direct {v5, v1, v6}, Le/a/r/c/h;-><init>(Landroid/view/View;Le/a/r/c/g;)V

    .line 47
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 48
    sget-object v5, Lcom/truecaller/social/SocialNetworkType;->GOOGLE:Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 50
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Le/a/r/x/l;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.facebook.katana"

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 51
    sget-object v5, Lcom/truecaller/social/SocialNetworkType;->FACEBOOK:Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 52
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v4

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/social/SocialNetworkType;

    .line 54
    sget-object v7, Le/a/r/x/n;->P:[I

    array-length v8, v7

    if-ge v5, v8, :cond_5

    move v8, v3

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    new-array v9, v3, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "You\'ve added more social networks than supported ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 55
    iget-object v8, v0, Le/a/r/x/n;->K:Landroid/view/View;

    aget v7, v7, v5

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 56
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    sget v8, Lcom/truecaller/wizard/R$id;->wizard_socialButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 58
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v6}, Lcom/truecaller/social/SocialNetworkType;->getBackground()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 61
    invoke-virtual {v6}, Lcom/truecaller/social/SocialNetworkType;->getName()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 62
    invoke-virtual {v6}, Lcom/truecaller/social/SocialNetworkType;->getIcon()I

    move-result v9

    invoke-virtual {v8, v9, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 63
    invoke-virtual {v6}, Lcom/truecaller/social/SocialNetworkType;->getName()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 64
    :cond_7
    iget-object v1, v0, Le/a/r/x/n;->K:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_8
    iget-object v1, v0, Le/a/r/x/n;->y:Landroid/widget/Button;

    new-instance v2, Le/a/r/x/e;

    invoke-direct {v2, v0}, Le/a/r/x/e;-><init>(Le/a/r/x/n;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, v0, Le/a/r/x/n;->r:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->w()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Le/a/r/x/n;->r:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->n()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 67
    iget-object v1, v0, Le/a/r/x/n;->z:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v1, v0, Le/a/r/x/n;->A:Landroid/view/View;

    new-instance v2, Le/a/r/x/a;

    invoke-direct {v2, v0}, Le/a/r/x/a;-><init>(Le/a/r/x/n;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 69
    :cond_9
    iget-object v1, v0, Le/a/r/x/n;->z:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
