.class final Lcom/hiya/stingray/ui/local/f/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/e$a;->a(Lcom/google/android/material/appbar/AppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/e$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/e$a$a;->f:Lcom/hiya/stingray/ui/local/f/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/e$a$a;->f:Lcom/hiya/stingray/ui/local/f/e$a;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/e;->a(Lcom/hiya/stingray/ui/local/f/e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/e$a$a;->f:Lcom/hiya/stingray/ui/local/f/e$a;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/e;->a(Lcom/hiya/stingray/ui/local/f/e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
