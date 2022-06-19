.class public final Le/m/a/h/a/g/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/g/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Ljava/io/File;",
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
            "Le/m/a/h/a/g/g/p;",
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
            "Landroid/content/Context;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Ljava/io/File;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/o0;",
            ">;",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/g/g/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/o;->a:Le/m/a/h/a/d/k1;

    iput-object p2, p0, Le/m/a/h/a/g/g/o;->b:Le/m/a/h/a/d/k1;

    iput-object p3, p0, Le/m/a/h/a/g/g/o;->c:Le/m/a/h/a/d/k1;

    iput-object p4, p0, Le/m/a/h/a/g/g/o;->d:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/g/g/o;->a:Le/m/a/h/a/d/k1;

    check-cast v0, Le/m/a/h/a/g/l;

    .line 1
    invoke-virtual {v0}, Le/m/a/h/a/g/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/g/g/o;->b:Le/m/a/h/a/d/k1;

    invoke-interface {v1}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Le/m/a/h/a/g/g/o;->c:Le/m/a/h/a/d/k1;

    invoke-interface {v2}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/g/o0;

    iget-object v3, p0, Le/m/a/h/a/g/g/o;->d:Le/m/a/h/a/d/k1;

    invoke-static {v3}, Le/m/a/h/a/d/h1;->a(Le/m/a/h/a/d/k1;)Le/m/a/h/a/d/f1;

    move-result-object v3

    .line 2
    new-instance v4, Le/m/a/h/a/g/g/a;

    invoke-direct {v4, v0, v1, v2, v3}, Le/m/a/h/a/g/g/a;-><init>(Landroid/content/Context;Ljava/io/File;Le/m/a/h/a/g/o0;Le/m/a/h/a/d/f1;)V

    return-object v4
.end method
