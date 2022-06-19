.class public final Lcom/appnext/core/result/ResultPageActivity$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/result/ResultPageActivity$3;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fl:Lcom/appnext/core/result/ResultPageActivity$3;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$3$2;->fl:Lcom/appnext/core/result/ResultPageActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$3$2;->fl:Lcom/appnext/core/result/ResultPageActivity$3;

    iget-object v1, v0, Lcom/appnext/core/result/ResultPageActivity$3;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    iget-object v0, v0, Lcom/appnext/core/result/ResultPageActivity$3;->fk:Ljava/lang/String;

    invoke-static {v1}, Lcom/appnext/core/result/ResultPageActivity;->c(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/appnext/core/result/ResultPageActivity;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
