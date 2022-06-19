.class Lcom/hiya/stingray/service/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/service/a/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/hiya/stingray/service/a/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/service/a/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/service/a/b$a;->g:Lcom/hiya/stingray/service/a/b;

    iput-object p2, p0, Lcom/hiya/stingray/service/a/b$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/service/a/b$a;->g:Lcom/hiya/stingray/service/a/b;

    invoke-static {v0}, Lcom/hiya/stingray/service/a/b;->a(Lcom/hiya/stingray/service/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/service/a/b$a;->g:Lcom/hiya/stingray/service/a/b;

    invoke-static {v1}, Lcom/hiya/stingray/service/a/b;->a(Lcom/hiya/stingray/service/a/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/service/a/b$a;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
