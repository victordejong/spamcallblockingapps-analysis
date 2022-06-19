.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/send/SendActivity;->o9()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/send/SendActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$h;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$h;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    :cond_0
    return-void
.end method
