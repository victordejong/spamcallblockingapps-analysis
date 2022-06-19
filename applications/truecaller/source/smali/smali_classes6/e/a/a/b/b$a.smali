.class public final Le/a/a/b/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/b;-><init>(Le/a/a/b/i;Le/a/a/b/n;Le/a/o5/f0;Le/a/a/i1/b;Le/a/p5/h0;Le/a/f4/g/j;Le/a/a/b/h;Le/a/u3/g;Le/a/w4/d;Le/a/d/c0/s1;Lcom/truecaller/calling/initiate_call/InitiateCallHelper;Le/a/p5/c;Le/a/z2/a;Lo3/a;Le/a/x2/b;Le/a/a/k/t;Le/a/a/u;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/b/b$a;->b:I

    iput-object p2, p0, Le/a/a/b/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/a/b/b$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/a/b/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/b/b;

    .line 2
    iget-object v0, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    const v1, 0x7f0405b3

    .line 3
    invoke-interface {v0, v1}, Le/a/p5/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/a/b/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/b/b;

    .line 6
    iget-object v0, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    const v1, 0x7f08074d

    .line 7
    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
