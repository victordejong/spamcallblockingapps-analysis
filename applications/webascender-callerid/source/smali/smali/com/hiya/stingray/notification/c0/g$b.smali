.class Lcom/hiya/stingray/notification/c0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/g;->a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/hiya/stingray/t/s0;

.field final synthetic h:Lcom/hiya/stingray/notification/p;

.field final synthetic i:Lcom/hiya/stingray/ui/o;

.field final synthetic j:Lcom/hiya/stingray/notification/c0/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/g$b;->j:Lcom/hiya/stingray/notification/c0/g;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/g$b;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/g$b;->g:Lcom/hiya/stingray/t/s0;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/g$b;->h:Lcom/hiya/stingray/notification/p;

    iput-object p5, p0, Lcom/hiya/stingray/notification/c0/g$b;->i:Lcom/hiya/stingray/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get notification icon."

    .line 1
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/notification/c0/g$b;->j:Lcom/hiya/stingray/notification/c0/g;

    iget-object v3, p0, Lcom/hiya/stingray/notification/c0/g$b;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/hiya/stingray/notification/c0/g$b;->g:Lcom/hiya/stingray/t/s0;

    iget-object v6, p0, Lcom/hiya/stingray/notification/c0/g$b;->h:Lcom/hiya/stingray/notification/p;

    iget-object v7, p0, Lcom/hiya/stingray/notification/c0/g$b;->i:Lcom/hiya/stingray/ui/o;

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/hiya/stingray/notification/c0/g;->k(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/c0/g$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
