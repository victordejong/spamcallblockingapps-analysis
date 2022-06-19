.class public final Le/m/a/f/l/a/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/ComponentName;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjj;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/z2;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    iput-object p2, p0, Le/m/a/f/l/a/z2;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/z2;->b:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, p0, Le/m/a/f/l/a/z2;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->r(Lcom/google/android/gms/measurement/internal/zzjk;Landroid/content/ComponentName;)V

    return-void
.end method
