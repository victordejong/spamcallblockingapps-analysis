.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/send/SendActivity;->A5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/send/SendActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;Lcom/truecaller/flashsdk/ui/send/SendActivity$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$j;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$j;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/j/t;

    invoke-interface {p1}, Le/a/y/a/j/t;->d()V

    return-void
.end method
