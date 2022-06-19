.class public Le/m/a/g/e/e$b;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/e/e;


# direct methods
.method public constructor <init>(Le/m/a/g/e/e;Le/m/a/g/e/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/e/e$b;->a:Le/m/a/g/e/e;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/m/a/g/e/e$b;->a:Le/m/a/g/e/e;

    invoke-static {p1}, Le/m/a/g/e/e;->access$100(Le/m/a/g/e/e;)V

    :cond_0
    return-void
.end method
