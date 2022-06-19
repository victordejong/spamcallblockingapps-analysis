.class public final Le/m/a/h/a/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/g/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/y;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/t0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/o0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/y;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/t0;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/o0;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/a0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/j;->a:Le/m/a/h/a/d/k1;

    iput-object p2, p0, Le/m/a/h/a/g/j;->b:Le/m/a/h/a/d/k1;

    iput-object p3, p0, Le/m/a/h/a/g/j;->c:Le/m/a/h/a/d/k1;

    iput-object p4, p0, Le/m/a/h/a/g/j;->d:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/g/j;->a:Le/m/a/h/a/d/k1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/g/j;->b:Le/m/a/h/a/d/k1;

    invoke-interface {v1}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/g/t0;

    iget-object v2, p0, Le/m/a/h/a/g/j;->c:Le/m/a/h/a/d/k1;

    invoke-interface {v2}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/g/o0;

    iget-object v3, p0, Le/m/a/h/a/g/j;->d:Le/m/a/h/a/d/k1;

    invoke-interface {v3}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/h/a/g/a0;

    new-instance v4, Le/m/a/h/a/g/i;

    .line 2
    check-cast v0, Le/m/a/h/a/g/y;

    invoke-direct {v4, v0, v1, v2, v3}, Le/m/a/h/a/g/i;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/g/t0;Le/m/a/h/a/g/o0;Le/m/a/h/a/g/a0;)V

    return-object v4
.end method
