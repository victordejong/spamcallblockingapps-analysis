.class public final Le/a/a/n/j/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/j/y;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public final synthetic b:Le/a/a/n/j/y;

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/mediamanager/SortOption;Le/a/a/n/j/y;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/j/y$a;->a:Lcom/truecaller/messaging/mediamanager/SortOption;

    iput-object p2, p0, Le/a/a/n/j/y$a;->b:Le/a/a/n/j/y;

    iput-object p4, p0, Le/a/a/n/j/y$a;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/n/j/y$a;->b:Le/a/a/n/j/y;

    .line 2
    iget-object p1, p1, Le/a/a/n/j/y;->q:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/a/n/j/y$a;->a:Lcom/truecaller/messaging/mediamanager/SortOption;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/n/j/y$a;->b:Le/a/a/n/j/y;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void
.end method
