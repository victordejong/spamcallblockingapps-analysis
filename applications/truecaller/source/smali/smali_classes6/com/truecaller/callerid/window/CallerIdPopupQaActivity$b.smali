.class public final Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b;->a:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object p1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v1, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 3
    new-instance v3, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b$a;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
