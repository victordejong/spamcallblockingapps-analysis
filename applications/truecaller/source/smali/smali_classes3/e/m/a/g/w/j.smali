.class public Le/m/a/g/w/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/g/w/k;


# direct methods
.method public constructor <init>(Le/m/a/g/w/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/w/j;->a:Le/m/a/g/w/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/w/j;->a:Le/m/a/g/w/k;

    iget-object v0, v0, Le/m/a/g/w/k;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e(I)V

    return-void
.end method
