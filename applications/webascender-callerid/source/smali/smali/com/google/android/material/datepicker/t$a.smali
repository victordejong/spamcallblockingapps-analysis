.class Lcom/google/android/material/datepicker/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/t;->d(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Lcom/google/android/material/datepicker/t;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/t;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/t$a;->g:Lcom/google/android/material/datepicker/t;

    iput p2, p0, Lcom/google/android/material/datepicker/t$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/t$a;->f:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->g:Lcom/google/android/material/datepicker/t;

    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->c(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->m1()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/l;->g:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/l;->d(II)Lcom/google/android/material/datepicker/l;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->g:Lcom/google/android/material/datepicker/t;

    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->c(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->k1()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/a;->e(Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/l;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->g:Lcom/google/android/material/datepicker/t;

    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->c(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/h;->s1(Lcom/google/android/material/datepicker/l;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/t$a;->g:Lcom/google/android/material/datepicker/t;

    invoke-static {p1}, Lcom/google/android/material/datepicker/t;->c(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/h;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/datepicker/h$k;->DAY:Lcom/google/android/material/datepicker/h$k;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/h;->t1(Lcom/google/android/material/datepicker/h$k;)V

    return-void
.end method
