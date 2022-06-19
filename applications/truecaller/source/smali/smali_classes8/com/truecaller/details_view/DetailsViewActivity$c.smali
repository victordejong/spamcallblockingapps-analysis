.class public final Lcom/truecaller/details_view/DetailsViewActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/DetailsViewActivity;->O8(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/b/a;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$c;->a:Ls1/z/b/a;

    iput-object p2, p0, Lcom/truecaller/details_view/DetailsViewActivity$c;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type com.truecaller.ui.dialogs.WarnYourFriendsDialog"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/e/a/i4;

    .line 2
    iget-boolean p1, p1, Le/a/e/a/i4;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$c;->a:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$c;->b:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
