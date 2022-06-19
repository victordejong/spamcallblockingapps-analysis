.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->m1(Landroid/content/DialogInterface;)V

    return-void
.end method
