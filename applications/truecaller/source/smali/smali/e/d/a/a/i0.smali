.class public final synthetic Le/d/a/a/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/d/a/a/e;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/i0;->a:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/i0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/d/a/a/i0;->a:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/i0;->b:Ljava/lang/String;

    .line 1
    iget-object v2, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    iget-object v0, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    .line 3
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    const-string v5, "vr"

    .line 4
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v4, 0x7

    .line 5
    invoke-interface {v2, v4, v0, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzd;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
