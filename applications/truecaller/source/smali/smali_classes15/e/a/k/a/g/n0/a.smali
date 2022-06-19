.class public final Le/a/k/a/g/n0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/k/a/g/n0/b;

.field public final synthetic b:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;


# direct methods
.method public constructor <init>(Le/a/k/a/g/n0/b;Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/n0/a;->a:Le/a/k/a/g/n0/b;

    iput-object p2, p0, Le/a/k/a/g/n0/a;->b:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k/a/g/n0/a;->a:Le/a/k/a/g/n0/b;

    .line 2
    iget-object p1, p1, Le/a/k/a/g/n0/b;->b:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/k/a/g/n0/a;->b:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
