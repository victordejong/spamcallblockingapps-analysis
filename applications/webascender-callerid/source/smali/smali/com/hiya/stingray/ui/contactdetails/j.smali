.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/ui/contactdetails/z;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/hiya/stingray/t/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/z;ZLcom/hiya/stingray/t/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/j;->a:Lcom/hiya/stingray/ui/contactdetails/z;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/contactdetails/j;->b:Z

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/j;->c:Lcom/hiya/stingray/t/d0;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/j;->a:Lcom/hiya/stingray/ui/contactdetails/z;

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/contactdetails/j;->b:Z

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/j;->c:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->t(ZLcom/hiya/stingray/t/d0;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
