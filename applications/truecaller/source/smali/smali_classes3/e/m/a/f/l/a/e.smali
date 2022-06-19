.class public final Le/m/a/f/l/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/l/a/x0;

.field public final synthetic b:Le/m/a/f/l/a/f;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/f;Le/m/a/f/l/a/x0;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/e;->b:Le/m/a/f/l/a/f;

    iput-object p2, p0, Le/m/a/f/l/a/e;->a:Le/m/a/f/l/a/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/e;->a:Le/m/a/f/l/a/x0;

    invoke-interface {v0}, Le/m/a/f/l/a/x0;->zzaw()Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/e;->a:Le/m/a/f/l/a/x0;

    .line 2
    invoke-interface {v0}, Le/m/a/f/l/a/x0;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/e;->b:Le/m/a/f/l/a/f;

    .line 3
    iget-wide v0, v0, Le/m/a/f/l/a/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Le/m/a/f/l/a/e;->b:Le/m/a/f/l/a/f;

    .line 5
    iput-wide v2, v1, Le/m/a/f/l/a/f;->c:J

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Le/m/a/f/l/a/e;->b:Le/m/a/f/l/a/f;

    .line 7
    invoke-virtual {v0}, Le/m/a/f/l/a/f;->b()V

    :cond_2
    return-void
.end method
