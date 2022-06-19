.class public final Le/a/a/e/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/d;->X1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/e/d;


# direct methods
.method public constructor <init>(Le/a/a/e/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/d$e;->a:Le/a/a/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p1, Le/a/a/e/a;

    .line 2
    iget-object v0, p0, Le/a/a/e/d$e;->a:Le/a/a/e/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/truecaller/messaging/inboxcleanup/Mode;->PROMOTIONAL:Lcom/truecaller/messaging/inboxcleanup/Mode;

    .line 4
    new-instance v2, Le/a/a/e/d$e$a;

    invoke-direct {v2, p0}, Le/a/a/e/d$e$a;-><init>(Le/a/a/e/d$e;)V

    const/4 v3, 0x0

    .line 5
    invoke-direct {p1, v0, v1, v3, v2}, Le/a/a/e/a;-><init>(Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/Mode;ZLs1/z/b/a;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
