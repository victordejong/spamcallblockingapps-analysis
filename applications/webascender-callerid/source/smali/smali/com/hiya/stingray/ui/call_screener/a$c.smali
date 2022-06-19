.class Lcom/hiya/stingray/ui/call_screener/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/call_screener/a;->g(Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/hiya/stingray/ui/call_screener/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$c;->g:Lcom/hiya/stingray/ui/call_screener/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/call_screener/a$c;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$c;->g:Lcom/hiya/stingray/ui/call_screener/a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/a$c;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/call_screener/a;->a(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$c;->g:Lcom/hiya/stingray/ui/call_screener/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/call_screener/a;->d(Lcom/hiya/stingray/ui/call_screener/a;)Lcom/hiya/stingray/ui/common/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/hiya/stingray/ui/common/l;->N0()V

    return-void
.end method
