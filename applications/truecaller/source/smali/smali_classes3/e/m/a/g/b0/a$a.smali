.class public Le/m/a/g/b0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/b0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/b0/a;


# direct methods
.method public constructor <init>(Le/m/a/g/b0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/b0/a$a;->a:Le/m/a/g/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/m/a/g/b0/a$a;->a:Le/m/a/g/b0/a;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 4
    aget p3, p3, p4

    iput p3, p2, Le/m/a/g/b0/a;->N:I

    .line 5
    iget-object p2, p2, Le/m/a/g/b0/a;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method
