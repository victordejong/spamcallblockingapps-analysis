.class final Lcom/hiya/stingray/notification/c0/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/j;->a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/notification/c0/j;

.field final synthetic g:Lcom/hiya/stingray/t/s0;

.field final synthetic h:Landroid/content/Context;

.field final synthetic i:Lcom/hiya/stingray/notification/p;

.field final synthetic j:Lcom/hiya/stingray/ui/o;

.field final synthetic k:Z

.field final synthetic l:Lg/g/b/c/r;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/j$c;->f:Lcom/hiya/stingray/notification/c0/j;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/j$c;->g:Lcom/hiya/stingray/t/s0;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/j$c;->h:Landroid/content/Context;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/j$c;->i:Lcom/hiya/stingray/notification/p;

    iput-object p5, p0, Lcom/hiya/stingray/notification/c0/j$c;->j:Lcom/hiya/stingray/ui/o;

    iput-boolean p6, p0, Lcom/hiya/stingray/notification/c0/j$c;->k:Z

    iput-object p7, p0, Lcom/hiya/stingray/notification/c0/j$c;->l:Lg/g/b/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$c;->f:Lcom/hiya/stingray/notification/c0/j;

    iget-object v1, p0, Lcom/hiya/stingray/notification/c0/j$c;->g:Lcom/hiya/stingray/t/s0;

    iget-object v2, p0, Lcom/hiya/stingray/notification/c0/j$c;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/hiya/stingray/notification/c0/j$c;->i:Lcom/hiya/stingray/notification/p;

    iget-object v4, p0, Lcom/hiya/stingray/notification/c0/j$c;->j:Lcom/hiya/stingray/ui/o;

    iget-boolean v5, p0, Lcom/hiya/stingray/notification/c0/j$c;->k:Z

    iget-object v6, p0, Lcom/hiya/stingray/notification/c0/j$c;->l:Lg/g/b/c/r;

    const-string v7, "it"

    invoke-static {p1, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/j;->n(Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/c0/j$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
