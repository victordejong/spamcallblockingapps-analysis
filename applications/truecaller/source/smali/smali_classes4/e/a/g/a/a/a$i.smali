.class public final Le/a/g/a/a/a$i;
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
        "Le/a/b0/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$i;->b:Le/a/g/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/b0/a/g;

    iget-object v1, p0, Le/a/g/a/a/a$i;->b:Le/a/g/a/a/a;

    .line 2
    iget-object v1, v1, Le/a/g/a/a/a;->r:Le/a/p5/h0;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {v0, v1}, Le/a/b0/a/g;-><init>(Le/a/p5/h0;)V

    .line 4
    iget-object v1, v0, Le/a/b0/a/g;->a:Le/a/p5/h0;

    .line 5
    sget v2, Lcom/truecaller/acs/R$dimen;->after_call_tcx_corner_radius:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->H(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x5

    aput v3, v2, v1

    const/4 v1, 0x6

    aput v3, v2, v1

    const/4 v1, 0x7

    aput v3, v2, v1

    .line 6
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0

    :cond_0
    const-string v0, "resourceProvider"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
