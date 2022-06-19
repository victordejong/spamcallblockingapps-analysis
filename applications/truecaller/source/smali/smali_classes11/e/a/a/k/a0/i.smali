.class public final Le/a/a/k/a0/i;
.super Le/a/a/k/w;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    sget-object v0, Le/a/a/k/a0/g;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Le/a/a/k/w;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Le/a/a/k/a0/i;->e:Z

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/k/a0/i;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/a/k/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/k/a0/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
