.class final Lcom/google/android/gms/common/internal/v;
.super Lcom/google/android/gms/common/internal/w;
.source "SourceFile"


# instance fields
.field private final synthetic f:Landroid/content/Intent;

.field private final synthetic g:Landroid/app/Activity;

.field private final synthetic h:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/v;->f:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/v;->g:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/v;->h:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/v;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/v;->g:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/common/internal/v;->h:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
