.class public final Lcom/appnext/core/result/ResultPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/result/ResultPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appnext/core/result/ResultPageActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/appnext/core/Ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->a(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/result/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/result/c;->x()Lcom/appnext/core/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/appnext/core/AppnextAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->b(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/appnext/core/SettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->a(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/result/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/result/c;->w()Lcom/appnext/core/SettingsManager;

    move-result-object v0

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
