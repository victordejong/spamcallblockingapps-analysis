.class public final Le/a/k/c/r$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r$k;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k/c/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/c/r$k;


# direct methods
.method public constructor <init>(Le/a/k/c/r$k;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$k$a;->a:Le/a/k/c/r$k;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/a/k/c/u;

    .line 2
    iget-object p1, p0, Le/a/k/c/r$k$a;->a:Le/a/k/c/r$k;

    iget-object p2, p1, Le/a/k/c/r$k;->h:Landroid/view/View;

    iget-boolean p1, p1, Le/a/k/c/r$k;->i:Z

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
