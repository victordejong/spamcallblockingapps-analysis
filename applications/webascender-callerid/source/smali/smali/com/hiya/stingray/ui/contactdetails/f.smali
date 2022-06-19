.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/x;

.field public final synthetic g:Lcom/hiya/stingray/ui/contactdetails/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/x;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/f;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/f;->g:Lcom/hiya/stingray/ui/contactdetails/d0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/f;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/f;->g:Lcom/hiya/stingray/ui/contactdetails/d0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->J(Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/Boolean;)V

    return-void
.end method
