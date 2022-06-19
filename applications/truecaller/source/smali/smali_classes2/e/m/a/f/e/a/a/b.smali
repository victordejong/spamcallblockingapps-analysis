.class public final Le/m/a/f/e/a/a/b;
.super Le/m/a/f/e/a/a/q;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaba;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/b;->b:Lcom/google/android/gms/common/api/internal/zaag;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/f/e/a/a/q;-><init>(Lcom/google/android/gms/common/api/internal/zaba;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/a/a/b;->b:Lcom/google/android/gms/common/api/internal/zaag;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabd;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaag;->a:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->o:Lcom/google/android/gms/common/api/internal/zabt;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/zaag;->b:Z

    const/4 v2, 0x1

    .line 3
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/zabt;->a(IZ)V

    return-void
.end method
