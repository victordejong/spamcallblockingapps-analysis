.class public final Lcom/appnext/core/result/ResultPageActivity$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/result/ResultPageActivity$b;->adClicked(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fo:Lcom/appnext/core/result/ResultPageActivity$b;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b$1;->fo:Lcom/appnext/core/result/ResultPageActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b$1;->fo:Lcom/appnext/core/result/ResultPageActivity$b;

    iget-object p1, p1, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {p1}, Lcom/appnext/core/result/ResultPageActivity;->g(Lcom/appnext/core/result/ResultPageActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b$1;->fo:Lcom/appnext/core/result/ResultPageActivity$b;

    iget-object p1, p1, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
