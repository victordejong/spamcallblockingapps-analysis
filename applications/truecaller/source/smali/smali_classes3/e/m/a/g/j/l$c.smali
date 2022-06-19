.class public Le/m/a/g/j/l$c;
.super Le/m/a/g/j/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/j/l;->RA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/g/j/s<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/j/l;


# direct methods
.method public constructor <init>(Le/m/a/g/j/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/l$c;->a:Le/m/a/g/j/l;

    invoke-direct {p0}, Le/m/a/g/j/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/m/a/g/j/l$c;->a:Le/m/a/g/j/l;

    .line 2
    sget v0, Le/m/a/g/j/l;->r:I

    .line 3
    invoke-virtual {p1}, Le/m/a/g/j/l;->SA()V

    .line 4
    iget-object p1, p0, Le/m/a/g/j/l$c;->a:Le/m/a/g/j/l;

    .line 5
    iget-object v0, p1, Le/m/a/g/j/l;->q:Landroid/widget/Button;

    .line 6
    iget-object p1, p1, Le/m/a/g/j/l;->f:Lcom/google/android/material/datepicker/DateSelector;

    .line 7
    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->z0()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
