.class public Le/a/y/e/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final synthetic b:Le/a/y/e/j;


# direct methods
.method public constructor <init>(Le/a/y/e/j;Landroid/view/View;Le/a/y/e/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/y/e/j$b;->b:Le/a/y/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p1, Lcom/truecaller/flashsdk/R$id;->icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/y/e/j$b;->a:Landroid/widget/TextView;

    return-void
.end method
