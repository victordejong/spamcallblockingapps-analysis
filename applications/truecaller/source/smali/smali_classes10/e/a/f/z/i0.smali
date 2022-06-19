.class public final Le/a/f/z/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/incallui/utils/OngoingCallActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/utils/OngoingCallActionButton;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/i0;->a:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/z/i0;->a:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    invoke-virtual {v0}, Lcom/truecaller/incallui/utils/OngoingCallActionButton;->getOnClickListener()Ls1/z/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
