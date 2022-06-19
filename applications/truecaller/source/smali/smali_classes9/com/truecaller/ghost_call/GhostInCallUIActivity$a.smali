.class public final Lcom/truecaller/ghost_call/GhostInCallUIActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ghost_call/GhostInCallUIActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ghost_call/GhostInCallUIActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ghost_call/GhostInCallUIActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ghost_call/GhostInCallUIActivity$a;->a:Lcom/truecaller/ghost_call/GhostInCallUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/ghost_call/GhostInCallUIActivity$a;->a:Lcom/truecaller/ghost_call/GhostInCallUIActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/ghost_call/GhostInCallUIActivity;->d:Le/a/x/n;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Le/a/x/t;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/x/o;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/x/o;->t()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
