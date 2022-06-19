.class public final Le/a/a/h1/o/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/o/n;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/o/n;

.field public final synthetic b:F


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n;F)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/n$c;->a:Le/a/a/h1/o/n;

    iput p2, p0, Le/a/a/h1/o/n$c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n$c;->a:Le/a/a/h1/o/n;

    iget v1, p0, Le/a/a/h1/o/n$c;->b:F

    invoke-static {v0, v1}, Le/a/a/h1/o/n;->i(Le/a/a/h1/o/n;F)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/o/n$c;->a:Le/a/a/h1/o/n;

    .line 3
    iget-object v0, v0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Le/a/a/h1/o/n$c;->a:Le/a/a/h1/o/n;

    .line 6
    iget-object v0, v0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
