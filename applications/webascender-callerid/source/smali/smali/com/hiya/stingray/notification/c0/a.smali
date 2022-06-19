.class public final synthetic Lcom/hiya/stingray/notification/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/notification/c0/e;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lcom/hiya/stingray/t/s0;

.field public final synthetic i:Lcom/hiya/stingray/notification/p;

.field public final synthetic j:Lcom/hiya/stingray/ui/o;

.field public final synthetic k:Lg/g/b/c/r;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/notification/c0/e;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/a;->f:Lcom/hiya/stingray/notification/c0/e;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/a;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/a;->h:Lcom/hiya/stingray/t/s0;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/a;->i:Lcom/hiya/stingray/notification/p;

    iput-object p5, p0, Lcom/hiya/stingray/notification/c0/a;->j:Lcom/hiya/stingray/ui/o;

    iput-object p6, p0, Lcom/hiya/stingray/notification/c0/a;->k:Lg/g/b/c/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/a;->f:Lcom/hiya/stingray/notification/c0/e;

    iget-object v1, p0, Lcom/hiya/stingray/notification/c0/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/notification/c0/a;->h:Lcom/hiya/stingray/t/s0;

    iget-object v3, p0, Lcom/hiya/stingray/notification/c0/a;->i:Lcom/hiya/stingray/notification/p;

    iget-object v4, p0, Lcom/hiya/stingray/notification/c0/a;->j:Lcom/hiya/stingray/ui/o;

    iget-object v5, p0, Lcom/hiya/stingray/notification/c0/a;->k:Lg/g/b/c/r;

    move-object v6, p1

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/e;->n(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Landroid/graphics/Bitmap;)V

    return-void
.end method
