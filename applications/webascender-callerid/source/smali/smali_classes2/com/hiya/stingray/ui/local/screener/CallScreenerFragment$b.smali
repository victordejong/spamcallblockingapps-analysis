.class final Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$b;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$b;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->h1()Lcom/hiya/stingray/ui/local/screener/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/screener/b;->u(Z)V

    return-void
.end method
