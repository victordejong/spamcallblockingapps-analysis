.class public Le/m/a/g/j/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/m/a/g/j/l;


# direct methods
.method public constructor <init>(Le/m/a/g/j/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/m;->a:Le/m/a/g/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/j/m;->a:Le/m/a/g/j/l;

    .line 2
    iget-object v0, p1, Le/m/a/g/j/l;->q:Landroid/widget/Button;

    .line 3
    iget-object p1, p1, Le/m/a/g/j/l;->f:Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->z0()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Le/m/a/g/j/m;->a:Le/m/a/g/j/l;

    .line 6
    iget-object p1, p1, Le/m/a/g/j/l;->o:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 8
    iget-object p1, p0, Le/m/a/g/j/m;->a:Le/m/a/g/j/l;

    .line 9
    iget-object v0, p1, Le/m/a/g/j/l;->o:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    invoke-virtual {p1, v0}, Le/m/a/g/j/l;->TA(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 11
    iget-object p1, p0, Le/m/a/g/j/m;->a:Le/m/a/g/j/l;

    .line 12
    invoke-virtual {p1}, Le/m/a/g/j/l;->RA()V

    return-void
.end method
