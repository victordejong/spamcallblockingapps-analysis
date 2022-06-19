.class public final Lcom/truecaller/common/ui/listitem/ListItemX$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/common/ui/listitem/ListItemX;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/listitem/ListItemX;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/listitem/ListItemX$b;->b:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$b;->b:Lcom/truecaller/common/ui/listitem/ListItemX;

    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    .line 2
    sget v2, Lcom/truecaller/common/ui/listitem/ListItemX;->J:I

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
