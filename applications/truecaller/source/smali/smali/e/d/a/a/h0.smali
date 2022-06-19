.class public final synthetic Le/d/a/a/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/d/a/a/e;

.field public final synthetic b:Le/d/a/a/r;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;Le/d/a/a/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/h0;->a:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/h0;->b:Le/d/a/a/r;

    iput-object p3, p0, Le/d/a/a/h0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/d/a/a/h0;->a:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/h0;->b:Le/d/a/a/r;

    iget-object v6, p0, Le/d/a/a/h0;->c:Ljava/lang/String;

    .line 1
    iget-object v2, v0, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    iget-object v0, v0, Le/d/a/a/e;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v1}, Le/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    const/4 v7, 0x0

    .line 4
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzd;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
