.class public Lcom/google/firebase/inappmessaging/j0/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/analytics/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/j0/o3$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/inappmessaging/j0/o3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/o3;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/o3;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/o3;->a:Lcom/google/firebase/inappmessaging/j0/o3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/google/firebase/analytics/a/a$c;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/a/a$c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/String;Lcom/google/firebase/analytics/a/a$b;)Lcom/google/firebase/analytics/a/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/o3;->h(Ljava/lang/String;Lcom/google/firebase/analytics/a/a$b;)Lcom/google/firebase/inappmessaging/j0/o3$a;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Lcom/google/firebase/analytics/a/a$b;)Lcom/google/firebase/inappmessaging/j0/o3$a;
    .locals 0

    .line 1
    sget-object p1, Lcom/google/firebase/inappmessaging/j0/o3$a;->a:Lcom/google/firebase/inappmessaging/j0/o3$a;

    return-object p1
.end method
