.class final Lcom/google/android/gms/internal/firebase-auth-api/oh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/pm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/ph;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/ph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oh;->a:Lcom/google/android/gms/internal/firebase-auth-api/ph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/pm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/gn;->a(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pm;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Bearer"

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/en;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oh;->a:Lcom/google/android/gms/internal/firebase-auth-api/ph;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/ph;->c:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/google/android/gms/internal/firebase-auth-api/ph;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->g(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/oh;->a:Lcom/google/android/gms/internal/firebase-auth-api/ph;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ph;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
