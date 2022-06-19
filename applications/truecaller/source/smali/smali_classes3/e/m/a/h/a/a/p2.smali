.class public final Le/m/a/h/a/a/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/a/o2;",
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


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/e0;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/s3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/p2;->a:Le/m/a/h/a/d/k1;

    iput-object p2, p0, Le/m/a/h/a/a/p2;->b:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/a/p2;->a:Le/m/a/h/a/d/k1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/a/p2;->b:Le/m/a/h/a/d/k1;

    invoke-static {v1}, Le/m/a/h/a/d/h1;->a(Le/m/a/h/a/d/k1;)Le/m/a/h/a/d/f1;

    move-result-object v1

    .line 2
    new-instance v2, Le/m/a/h/a/a/o2;

    check-cast v0, Le/m/a/h/a/a/e0;

    invoke-direct {v2, v0, v1}, Le/m/a/h/a/a/o2;-><init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/d/f1;)V

    return-object v2
.end method
