.class final Lcom/hiya/client/callerid/ui/incallui/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/c;->o(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lcom/hiya/client/callerid/ui/incallui/c$a;)V
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
        "Lg/g/b/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/c;

.field final synthetic g:Landroid/widget/ImageView;

.field final synthetic h:Lcom/hiya/client/callerid/ui/incallui/c$a;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/c;Landroid/widget/ImageView;Lcom/hiya/client/callerid/ui/incallui/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c$e;->f:Lcom/hiya/client/callerid/ui/incallui/c;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/c$e;->g:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/incallui/c$e;->h:Lcom/hiya/client/callerid/ui/incallui/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$e;->f:Lcom/hiya/client/callerid/ui/incallui/c;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/incallui/c;->a(Lcom/hiya/client/callerid/ui/incallui/c;)Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$e;->g:Landroid/widget/ImageView;

    sget v2, Lcom/hiya/client/callerid/ui/p;->e:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/c$e;->h:Lcom/hiya/client/callerid/ui/incallui/c$a;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->c()I

    move-result v2

    .line 5
    invoke-static {v0, p1, v1, v2}, Lcom/hiya/client/callerid/ui/e0/k;->f(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/a;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c$e;->a(Lg/g/b/c/a;)V

    return-void
.end method
