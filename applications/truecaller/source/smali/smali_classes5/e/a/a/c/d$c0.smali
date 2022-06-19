.class public final Le/a/a/c/d$c0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;-><init>(Landroid/view/View;Le/a/a/c/k/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/utils/ui/LinkClickMovementMethod;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/d;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    iput-object p2, p0, Le/a/a/c/d$c0;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    iget-object v1, p0, Le/a/a/c/d$c0;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "itemView.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/a/c/c7;

    invoke-direct {v2, p0}, Le/a/a/c/c7;-><init>(Le/a/a/c/d$c0;)V

    invoke-direct {v0, v1, v2}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;-><init>(Landroid/content/Context;Ls1/z/b/r;)V

    return-object v0
.end method
