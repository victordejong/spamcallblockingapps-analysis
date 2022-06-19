.class public final Le/a/a/h1/o/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/o/n;-><init>(Landroid/content/Context;Le/a/a/h1/o/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/o/n;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/n$a;->a:Le/a/a/h1/o/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/h1/o/n$a;->a:Le/a/a/h1/o/n;

    .line 2
    iget p2, p1, Le/a/a/h1/o/n;->h:F

    .line 3
    invoke-static {p1, p2}, Le/a/a/h1/o/n;->i(Le/a/a/h1/o/n;F)V

    .line 4
    iget-object p1, p0, Le/a/a/h1/o/n$a;->a:Le/a/a/h1/o/n;

    .line 5
    iget-object p1, p1, Le/a/a/h1/o/n;->e:Landroid/view/View;

    const/16 p2, 0x8

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
