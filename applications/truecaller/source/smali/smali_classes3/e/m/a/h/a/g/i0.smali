.class public final Le/m/a/h/a/g/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/b;


# instance fields
.field public final a:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/g/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/g/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/f1;Le/m/a/h/a/d/f1;Le/m/a/h/a/d/f1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/g/i;",
            ">;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/g/g/a;",
            ">;",
            "Le/m/a/h/a/d/f1<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/i0;->a:Le/m/a/h/a/d/f1;

    iput-object p2, p0, Le/m/a/h/a/g/i0;->b:Le/m/a/h/a/d/f1;

    iput-object p3, p0, Le/m/a/h/a/g/i0;->c:Le/m/a/h/a/d/f1;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/c;)Le/m/a/h/a/h/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/g/c;",
            ")",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/m/a/h/a/g/b;->a(Le/m/a/h/a/g/c;)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Le/m/a/h/a/h/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/m/a/h/a/g/b;->b(Ljava/util/List;)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1
.end method

.method public final c(Le/m/a/h/a/g/e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/m/a/h/a/g/b;->c(Le/m/a/h/a/g/e;)V

    return-void
.end method

.method public final d(Le/m/a/h/a/g/e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/m/a/h/a/g/b;->d(Le/m/a/h/a/g/e;)V

    return-void
.end method

.method public final e(Le/m/a/h/a/g/d;Landroid/app/Activity;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le/m/a/h/a/g/b;->e(Le/m/a/h/a/g/d;Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public final f(I)Le/m/a/h/a/h/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/m/a/h/a/g/b;->f(I)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/i0;->h()Le/m/a/h/a/g/b;

    move-result-object v0

    invoke-interface {v0}, Le/m/a/h/a/g/b;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h()Le/m/a/h/a/g/b;
    .locals 1

    iget-object v0, p0, Le/m/a/h/a/g/i0;->c:Le/m/a/h/a/d/f1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/h/a/g/i0;->a:Le/m/a/h/a/d/f1;

    .line 2
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/g/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/h/a/g/i0;->b:Le/m/a/h/a/d/f1;

    .line 3
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/g/b;

    :goto_0
    return-object v0
.end method
