.class public final Le/a/e/c2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/DrawerHeaderView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/DrawerHeaderView;)V
    .locals 0

    iput-object p1, p0, Le/a/e/c2/z;->a:Lcom/truecaller/ui/components/DrawerHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/e/c2/z;->a:Lcom/truecaller/ui/components/DrawerHeaderView;

    const-string v0, "insets"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ln3/k/i/d0;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p2
.end method
