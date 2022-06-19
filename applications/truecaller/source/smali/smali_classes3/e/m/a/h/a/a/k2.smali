.class public final Le/m/a/h/a/a/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/a/j2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/l2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/e0;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/l2;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/k2;->a:Le/m/a/h/a/d/k1;

    iput-object p2, p0, Le/m/a/h/a/a/k2;->b:Le/m/a/h/a/d/k1;

    iput-object p3, p0, Le/m/a/h/a/a/k2;->c:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/a/k2;->a:Le/m/a/h/a/d/k1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/a/k2;->b:Le/m/a/h/a/d/k1;

    invoke-interface {v1}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Le/m/a/h/a/a/k2;->c:Le/m/a/h/a/d/k1;

    invoke-interface {v2}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/b/b;

    .line 2
    new-instance v3, Le/m/a/h/a/a/j2;

    check-cast v0, Le/m/a/h/a/a/e0;

    check-cast v1, Le/m/a/h/a/a/l2;

    invoke-direct {v3, v0, v1, v2}, Le/m/a/h/a/a/j2;-><init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/a/l2;Le/m/a/h/a/b/b;)V

    return-object v3
.end method
