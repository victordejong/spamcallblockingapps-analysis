.class public final Le/m/a/h/a/a/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/a/s2;",
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
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/p1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/b1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/e0;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/s3;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/p1;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/b1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/t2;->a:Le/m/a/h/a/d/k1;

    iput-object p2, p0, Le/m/a/h/a/a/t2;->b:Le/m/a/h/a/d/k1;

    iput-object p3, p0, Le/m/a/h/a/a/t2;->c:Le/m/a/h/a/d/k1;

    iput-object p4, p0, Le/m/a/h/a/a/t2;->d:Le/m/a/h/a/d/k1;

    iput-object p5, p0, Le/m/a/h/a/a/t2;->e:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Le/m/a/h/a/a/t2;->a:Le/m/a/h/a/d/k1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/a/t2;->b:Le/m/a/h/a/d/k1;

    invoke-static {v1}, Le/m/a/h/a/d/h1;->a(Le/m/a/h/a/d/k1;)Le/m/a/h/a/d/f1;

    move-result-object v4

    iget-object v1, p0, Le/m/a/h/a/a/t2;->c:Le/m/a/h/a/d/k1;

    invoke-interface {v1}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Le/m/a/h/a/a/t2;->d:Le/m/a/h/a/d/k1;

    invoke-static {v2}, Le/m/a/h/a/d/h1;->a(Le/m/a/h/a/d/k1;)Le/m/a/h/a/d/f1;

    move-result-object v6

    iget-object v2, p0, Le/m/a/h/a/a/t2;->e:Le/m/a/h/a/d/k1;

    invoke-interface {v2}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    new-instance v8, Le/m/a/h/a/a/s2;

    .line 2
    move-object v3, v0

    check-cast v3, Le/m/a/h/a/a/e0;

    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/p1;

    move-object v7, v2

    check-cast v7, Le/m/a/h/a/a/b1;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/m/a/h/a/a/s2;-><init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/p1;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/b1;)V

    return-object v8
.end method
