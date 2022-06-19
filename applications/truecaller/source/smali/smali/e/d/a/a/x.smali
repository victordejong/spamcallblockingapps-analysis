.class public final synthetic Le/d/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/a/a/z;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/x;->a:Le/d/a/a/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/x;->a:Le/d/a/a/z;

    .line 1
    iget-object v1, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    const/4 v2, 0x0

    .line 2
    iput v2, v1, Le/d/a/a/e;->a:I

    .line 3
    iget-object v1, v0, Le/d/a/a/z;->d:Le/d/a/a/e;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 5
    sget-object v1, Le/d/a/a/a0;->m:Le/d/a/a/k;

    invoke-virtual {v0, v1}, Le/d/a/a/z;->a(Le/d/a/a/k;)V

    return-void
.end method
