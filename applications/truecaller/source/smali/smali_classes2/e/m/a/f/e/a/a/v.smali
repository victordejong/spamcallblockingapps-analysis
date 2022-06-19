.class public final Le/m/a/f/e/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zabl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabl;I)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/v;->b:Lcom/google/android/gms/common/api/internal/zabl;

    iput p2, p0, Le/m/a/f/e/a/a/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/v;->b:Lcom/google/android/gms/common/api/internal/zabl;

    iget v1, p0, Le/m/a/f/e/a/a/v;->a:I

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabl;->b(I)V

    return-void
.end method
