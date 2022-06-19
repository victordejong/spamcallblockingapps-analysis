.class final Lcom/hiya/stingray/notification/c0/j$d;
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
        "Ljava/lang/Throwable;",
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

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/j$d;->f:Lcom/hiya/stingray/notification/c0/j;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/j$d;->g:Lcom/hiya/stingray/t/s0;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/j$d;->h:Landroid/content/Context;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/j$d;->i:Lcom/hiya/stingray/notification/p;

    iput-object p5, p0, Lcom/hiya/stingray/notification/c0/j$d;->j:Lcom/hiya/stingray/ui/o;

    iput-boolean p6, p0, Lcom/hiya/stingray/notification/c0/j$d;->k:Z

    iput-object p7, p0, Lcom/hiya/stingray/notification/c0/j$d;->l:Lg/g/b/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 10

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get isInExperiment"

    .line 1
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/notification/c0/j$d;->f:Lcom/hiya/stingray/notification/c0/j;

    iget-object v3, p0, Lcom/hiya/stingray/notification/c0/j$d;->g:Lcom/hiya/stingray/t/s0;

    iget-object v4, p0, Lcom/hiya/stingray/notification/c0/j$d;->h:Landroid/content/Context;

    iget-object v5, p0, Lcom/hiya/stingray/notification/c0/j$d;->i:Lcom/hiya/stingray/notification/p;

    iget-object v6, p0, Lcom/hiya/stingray/notification/c0/j$d;->j:Lcom/hiya/stingray/ui/o;

    iget-boolean v7, p0, Lcom/hiya/stingray/notification/c0/j$d;->k:Z

    iget-object v8, p0, Lcom/hiya/stingray/notification/c0/j$d;->l:Lg/g/b/c/r;

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hiya/stingray/notification/c0/j;->n(Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/c0/j$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
