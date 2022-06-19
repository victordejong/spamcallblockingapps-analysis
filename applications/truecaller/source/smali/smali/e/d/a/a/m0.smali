.class public final synthetic Le/d/a/a/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/a/a/o;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/m0;->a:Le/d/a/a/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/m0;->a:Le/d/a/a/o;

    .line 1
    sget-object v1, Le/d/a/a/a0;->m:Le/d/a/a/k;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v2

    .line 3
    check-cast v0, Le/d/a/a/g;

    invoke-virtual {v0, v1, v2}, Le/d/a/a/g;->a(Le/d/a/a/k;Ljava/util/List;)V

    return-void
.end method
