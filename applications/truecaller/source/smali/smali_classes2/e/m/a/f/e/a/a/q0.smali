.class public final Le/m/a/f/e/a/a/q0;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Le/m/a/f/e/a/a/r0;


# direct methods
.method public constructor <init>(Le/m/a/f/e/a/a/r0;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/q0;->b:Le/m/a/f/e/a/a/r0;

    iput-object p2, p0, Le/m/a/f/e/a/a/q0;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/a/a/q0;->b:Le/m/a/f/e/a/a/r0;

    iget-object v0, v0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zap;->k()V

    .line 2
    iget-object v0, p0, Le/m/a/f/e/a/a/q0;->a:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/e/a/a/q0;->a:Landroid/app/Dialog;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
