.class public final Lcom/google/firebase/analytics/connector/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/analytics/connector/internal/a;


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/analytics/a/a$b;

.field private final c:Lcom/google/android/gms/measurement/a/a;

.field private final d:Lcom/google/firebase/analytics/connector/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/a/a;Lcom/google/firebase/analytics/a/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/e;->b:Lcom/google/firebase/analytics/a/a$b;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/e;->c:Lcom/google/android/gms/measurement/a/a;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/d;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/d;-><init>(Lcom/google/firebase/analytics/connector/internal/e;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/e;->d:Lcom/google/firebase/analytics/connector/internal/d;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/a/a;->f(Lcom/google/android/gms/measurement/a/a$a;)V

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/e;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/analytics/connector/internal/e;)Lcom/google/firebase/analytics/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/e;->b:Lcom/google/firebase/analytics/a/a$b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/e;->a:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/e;->a:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    .line 2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/google/firebase/analytics/connector/internal/c;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/firebase/analytics/connector/internal/c;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v2}, Lcom/google/firebase/analytics/connector/internal/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
