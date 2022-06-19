.class public final Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->M0(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;->a:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;->a:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;->b:Lcom/truecaller/data/entity/Contact;

    invoke-static {p1, v0}, Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;->pa(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
