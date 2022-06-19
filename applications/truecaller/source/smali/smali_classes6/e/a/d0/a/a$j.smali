.class public final Le/a/d0/a/a$j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V
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
.field public final synthetic b:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Le/a/d0/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/a$j;->b:Le/a/d0/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/b0/a/g;

    iget-object v1, p0, Le/a/d0/a/a$j;->b:Le/a/d0/a/a;

    invoke-static {v1}, Le/a/d0/a/a;->q(Le/a/d0/a/a;)Le/a/p5/h0;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/b0/a/g;-><init>(Le/a/p5/h0;)V

    .line 2
    iget-object v1, v0, Le/a/b0/a/g;->a:Le/a/p5/h0;

    const v2, 0x7f0700f5

    .line 3
    invoke-interface {v1, v2}, Le/a/p5/c0;->H(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method
