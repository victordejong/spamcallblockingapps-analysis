.class public final Le/m/a/f/l/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le/m/a/f/l/a/t;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/t;Z)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/s;->b:Le/m/a/f/l/a/t;

    iput-boolean p2, p0, Le/m/a/f/l/a/s;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/s;->b:Le/m/a/f/l/a/t;

    .line 2
    iget-object v0, v0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    return-void
.end method
