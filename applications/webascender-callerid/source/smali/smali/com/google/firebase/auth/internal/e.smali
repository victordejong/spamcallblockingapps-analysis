.class public final Lcom/google/firebase/auth/internal/e;
.super Lcom/google/firebase/auth/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/auth/internal/x0;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/x0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/l;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/e;->a:Lcom/google/firebase/auth/internal/x0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/e;->a:Lcom/google/firebase/auth/internal/x0;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/x0;->W1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
