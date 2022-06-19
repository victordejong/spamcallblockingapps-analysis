.class public final Le/a/g/a/a/a$v;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$v;->b:Le/a/g/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/a/a$v;->b:Le/a/g/a/a/a;

    .line 2
    sget-object v1, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/g/h/b;->A:Landroid/view/View;

    sget v1, Lcom/truecaller/acs/R$id;->metaInfoIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
