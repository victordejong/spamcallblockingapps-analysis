.class public final Le/a/v/a/c/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/c/a/a;->E0(Lcom/truecaller/data/entity/Contact;)V
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

    iput-object p1, p0, Le/a/v/a/c/a/a$c;->a:Le/a/v/a/c/a/a;

    iput-object p2, p0, Le/a/v/a/c/a/a$c;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/v/a/c/a/a$c;->a:Le/a/v/a/c/a/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/v/a/c/a/a$c;->b:Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spammer"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(context, AllComme\u2026tra(KEY_SPAMMER, spammer)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
