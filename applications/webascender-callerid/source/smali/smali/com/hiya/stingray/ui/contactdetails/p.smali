.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/hiya/stingray/ui/contactdetails/z;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/p;->a:Lcom/hiya/stingray/ui/contactdetails/z;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/p;->a:Lcom/hiya/stingray/ui/contactdetails/z;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/z;->d(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
