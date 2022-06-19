.class public final Le/a/v/a/c/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/c/a/a;->M0(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/c/a/a;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/a/c/a/a;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c/a/a$b;->a:Le/a/v/a/c/a/a;

    iput-object p2, p0, Le/a/v/a/c/a/a$b;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/v/a/c/a/a$b;->a:Le/a/v/a/c/a/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/v/a/c/a/a$b;->b:Lcom/truecaller/data/entity/Contact;

    invoke-static {p1, v0}, Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;->pa(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
