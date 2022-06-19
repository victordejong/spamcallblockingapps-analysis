.class public final Lcom/google/android/gms/internal/firebase-auth-api/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/gh;

.field private final b:Lcom/google/android/gms/internal/firebase-auth-api/z1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/z1;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/fg;->b:Lcom/google/android/gms/internal/firebase-auth-api/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a2;->b:Lcom/google/android/gms/internal/firebase-auth-api/z1;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a2;->a:Lcom/google/android/gms/internal/firebase-auth-api/gh;

    return-void
.end method

.method public static a(C)Lcom/google/android/gms/internal/firebase-auth-api/a2;
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/de;

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/de;-><init>(C)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/kp;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/kp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/gh;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/z1;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/a2;
    .locals 3

    const-string p0, "[.-]"

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jn;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fj;

    move-result-object p0

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fj;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/ri;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/sj;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/sj;->a:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/y;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/y;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fj;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/z1;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The pattern may not match the empty string: %s"

    .line 7
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/b2;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/firebase-auth-api/a2;)Lcom/google/android/gms/internal/firebase-auth-api/gh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a2;->a:Lcom/google/android/gms/internal/firebase-auth-api/gh;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a2;->b:Lcom/google/android/gms/internal/firebase-auth-api/z1;

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->a(Lcom/google/android/gms/internal/firebase-auth-api/a2;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
