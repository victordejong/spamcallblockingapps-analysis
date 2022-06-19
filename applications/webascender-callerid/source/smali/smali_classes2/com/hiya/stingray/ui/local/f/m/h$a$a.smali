.class final Lcom/hiya/stingray/ui/local/f/m/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/m/h$a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/m/h$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/m/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/h$a$a;->f:Lcom/hiya/stingray/ui/local/f/m/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h$a$a;->f:Lcom/hiya/stingray/ui/local/f/m/h$a;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/f/m/h$a;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/m/h;->e(Lcom/hiya/stingray/ui/local/f/m/h;)Lcom/hiya/stingray/ui/local/f/m/h$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
