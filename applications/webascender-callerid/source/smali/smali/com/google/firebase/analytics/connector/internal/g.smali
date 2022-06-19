.class public final Lcom/google/firebase/analytics/connector/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/analytics/connector/internal/a;


# instance fields
.field private final a:Lcom/google/firebase/analytics/a/a$b;

.field private final b:Lcom/google/android/gms/measurement/a/a;

.field private final c:Lcom/google/firebase/analytics/connector/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/a/a;Lcom/google/firebase/analytics/a/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/g;->a:Lcom/google/firebase/analytics/a/a$b;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/g;->b:Lcom/google/android/gms/measurement/a/a;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/f;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/f;-><init>(Lcom/google/firebase/analytics/connector/internal/g;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/g;->c:Lcom/google/firebase/analytics/connector/internal/f;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/a/a;->f(Lcom/google/android/gms/measurement/a/a$a;)V

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/analytics/connector/internal/g;)Lcom/google/firebase/analytics/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/g;->a:Lcom/google/firebase/analytics/a/a$b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
