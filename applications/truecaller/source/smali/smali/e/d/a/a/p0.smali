.class public final synthetic Le/d/a/a/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/d/a/a/e;

.field public final synthetic b:I

.field public final synthetic c:Le/d/a/a/r;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Le/d/a/a/j;

.field public final synthetic f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;ILe/d/a/a/r;Ljava/lang/String;Le/d/a/a/j;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/p0;->a:Le/d/a/a/e;

    iput p2, p0, Le/d/a/a/p0;->b:I

    iput-object p3, p0, Le/d/a/a/p0;->c:Le/d/a/a/r;

    iput-object p4, p0, Le/d/a/a/p0;->d:Ljava/lang/String;

    iput-object p5, p0, Le/d/a/a/p0;->e:Le/d/a/a/j;

    iput-object p6, p0, Le/d/a/a/p0;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/d/a/a/p0;->a:Le/d/a/a/e;

    iget v2, p0, Le/d/a/a/p0;->b:I

    iget-object v1, p0, Le/d/a/a/p0;->c:Le/d/a/a/r;

    iget-object v5, p0, Le/d/a/a/p0;->d:Ljava/lang/String;

    iget-object v7, p0, Le/d/a/a/p0;->f:Landroid/os/Bundle;

    .line 1
    iget-object v3, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    iget-object v0, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v1}, Le/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v3

    move-object v3, v0

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzd;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
