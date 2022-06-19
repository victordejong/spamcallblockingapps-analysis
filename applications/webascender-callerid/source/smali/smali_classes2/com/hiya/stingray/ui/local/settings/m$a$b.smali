.class final Lcom/hiya/stingray/ui/local/settings/m$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/m$a;->n(Lcom/hiya/stingray/t/a1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/settings/m$a;

.field final synthetic b:Lcom/hiya/stingray/t/a1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/m$a;Lcom/hiya/stingray/t/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m$a$b;->a:Lcom/hiya/stingray/ui/local/settings/m$a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/settings/m$a$b;->b:Lcom/hiya/stingray/t/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m$a$b;->a:Lcom/hiya/stingray/ui/local/settings/m$a;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/m$a;->a:Lcom/hiya/stingray/ui/local/settings/m;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/m;->c()Lkotlin/w/b/p;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/m$a$b;->b:Lcom/hiya/stingray/t/a1;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
