.class final Ls/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls/b;->g(Landroid/widget/ImageView;ILcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/widget/ImageView;

.field final synthetic g:I


# direct methods
.method constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Ls/b$a;->f:Landroid/widget/ImageView;

    iput p2, p0, Ls/b$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls/b$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls/b$a;->f:Landroid/widget/ImageView;

    .line 3
    iget v2, p0, Ls/b$a;->g:I

    .line 4
    invoke-static {v0, p1, v1, v2}, Lcom/hiya/client/callerid/ui/e0/k;->f(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ls/b$a;->a(Ljava/lang/String;)V

    return-void
.end method
