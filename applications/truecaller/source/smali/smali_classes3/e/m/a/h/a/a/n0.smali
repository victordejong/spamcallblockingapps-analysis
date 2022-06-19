.class public final Le/m/a/h/a/a/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/a/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/a/s3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/n0;->a:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/a/n0;->a:Le/m/a/h/a/d/k1;

    .line 1
    invoke-static {v0}, Le/m/a/h/a/d/h1;->a(Le/m/a/h/a/d/k1;)Le/m/a/h/a/d/f1;

    move-result-object v0

    new-instance v1, Le/m/a/h/a/a/m0;

    .line 2
    invoke-direct {v1, v0}, Le/m/a/h/a/a/m0;-><init>(Le/m/a/h/a/d/f1;)V

    return-object v1
.end method
