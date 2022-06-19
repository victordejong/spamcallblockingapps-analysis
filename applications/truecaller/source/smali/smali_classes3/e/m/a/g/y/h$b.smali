.class public Le/m/a/g/y/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/y/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/y/h;


# direct methods
.method public constructor <init>(Le/m/a/g/y/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/h$b;->a:Le/m/a/g/y/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/g/y/h$b;->a:Le/m/a/g/y/h;

    iget-object p1, p1, Le/m/a/g/y/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/g/y/h$b;->a:Le/m/a/g/y/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Le/m/a/g/y/h;->g(Le/m/a/g/y/h;Z)V

    .line 3
    iget-object p1, p0, Le/m/a/g/y/h$b;->a:Le/m/a/g/y/h;

    .line 4
    iput-boolean p2, p1, Le/m/a/g/y/h;->i:Z

    :cond_0
    return-void
.end method
