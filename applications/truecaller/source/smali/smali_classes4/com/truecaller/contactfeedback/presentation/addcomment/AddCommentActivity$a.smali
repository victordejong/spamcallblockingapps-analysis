.class public final Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/ColorDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity$a;->b:Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity$a;->b:Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;

    sget v2, Lcom/truecaller/contactfeedback/R$color;->color_bottom_sheet_background:I

    .line 2
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method
