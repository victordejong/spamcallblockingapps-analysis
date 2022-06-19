.class final Lcom/hiya/stingray/notification/c0/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/j;->s(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/notification/c0/j;

.field final synthetic g:Landroid/content/Context;

.field final synthetic h:Landroidx/core/app/j$e;

.field final synthetic i:Lkotlin/w/b/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/c0/j;Landroid/content/Context;Landroidx/core/app/j$e;Lkotlin/w/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/j$e;->f:Lcom/hiya/stingray/notification/c0/j;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/j$e;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/j$e;->h:Landroidx/core/app/j$e;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/j$e;->i:Lkotlin/w/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$e;->f:Lcom/hiya/stingray/notification/c0/j;

    iget-object v1, p0, Lcom/hiya/stingray/notification/c0/j$e;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/notification/c0/j$e;->h:Landroidx/core/app/j$e;

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/notification/c0/j;->o(Lcom/hiya/stingray/notification/c0/j;Landroid/content/Context;Landroidx/core/app/j$e;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$e;->i:Lkotlin/w/b/a;

    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$e;->f:Lcom/hiya/stingray/notification/c0/j;

    invoke-static {v0}, Lcom/hiya/stingray/notification/c0/j;->l(Lcom/hiya/stingray/notification/c0/j;)Li/c/b0/c/c;

    move-result-object v0

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method
