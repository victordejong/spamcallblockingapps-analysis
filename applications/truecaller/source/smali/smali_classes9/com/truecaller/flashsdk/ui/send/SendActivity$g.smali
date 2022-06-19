.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/send/SendActivity;->B2()V
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

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$g;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$g;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-static {v0}, Lcom/truecaller/flashsdk/ui/send/SendActivity;->wa(Lcom/truecaller/flashsdk/ui/send/SendActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    return-void
.end method
